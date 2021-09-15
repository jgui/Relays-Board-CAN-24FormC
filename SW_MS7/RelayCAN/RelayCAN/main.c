/*
RelayCAN.c
Created: 20/06/2021 21:37:26
Author : Jean-Guilhem DALISSIER

______________________________________
Programming info

The microcontroller cannot be programmed on the board (no SPI connector mounted),
use a breadboard or other. If the programming fail, check following points:
- an external clock is provided (in this project the clock is configured to be external clock).
- MISO pin is corrupted because connected to both the programmer and another device (eg MCP2515 on the breadboard) 

Fuses:
	- HIGH.SPIEN = 1
	- HIGH.EESAVE = 1
	- LOW.CKOUT = 1
	- LOW.SUT_CKSEL = Ext clock,
	==> 
	EXTENDED = 0xF9
	HIGH = 0xDF
	LOW = 0x80

______________________________________
TODO

- Add a configuration mode so Rx and Tx frames IDs can be configured.
     EEPROM: https://www.nongnu.org/avr-libc/user-manual/group__avr__eeprom.html

*/


#include "global.h"

#include <avr/io.h>
#include <util/delay.h>
#include <avr/interrupt.h>
#include <avr/eeprom.h> 

#include "i2cmasterconf.h"
#include "mcp23017.h"
#include "i2cmaster/i2cmaster.h"
#include "can.h"


//______________________________________________________________________________
// Relays

uint8_t relay_state0108; // bit 0..7 = state of relay  1..8
uint8_t relay_state0916; // bit 0..7 = state of relay  9..16
uint8_t relay_state1724; // bit 0..7 = state of relay 17..24
void relay_update(void);

//______________________________________________________________________________
// Port extender (MCP23017)

MCP23017 PortExtender;


//______________________________________________________________________________
// CAN bus, all modes (normal and configuration)

can_t MsgTx;
can_t MsgRx;
uint8_t can_send_request;


//______________________________________________________________________________
// CAN bus, normal mode

#define CAN_NORM_MSG_ID_RX_DFLT 0x7FF // default ID for Rx message in normal mode
#define CAN_NORM_MSG_ID_TX_DFLT 0x7FE // default ID for Tx message in normal mode

uint16_t can_normmode_msg_id_tx;
uint16_t can_normmode_msg_id_rx;
uint8_t  can_normmode_bitrate;

// Set filters and masks so only frame with standard ID CAN_NORM_MSG_ID_RX_DFLT is received
uint8_t can_normmode_filter[] =
{
	// Group 0
	MCP2515_FILTER(CAN_NORM_MSG_ID_RX_DFLT),				// Filter 0
	MCP2515_FILTER(CAN_NORM_MSG_ID_RX_DFLT),				// Filter 1
	
	// Group 1
	MCP2515_FILTER(CAN_NORM_MSG_ID_RX_DFLT),		// Filter 2
	MCP2515_FILTER(CAN_NORM_MSG_ID_RX_DFLT),		// Filter 3
	MCP2515_FILTER(CAN_NORM_MSG_ID_RX_DFLT),		// Filter 4
	MCP2515_FILTER(CAN_NORM_MSG_ID_RX_DFLT),		// Filter 5
	
	MCP2515_FILTER(0x7FF),		// Mask 0 (for group 0)
	MCP2515_FILTER(0x7FF),		// Mask 1 (for group 1)
};
void can_normmode_filter_update(uint32_t id) {
	// This function update can_normmode_filter with new filter to accept only
	// one message with identifier "id" (standard).
	
	uint8_t b0 = (uint8_t)((uint32_t) id >> 3);
	uint8_t b1 = (uint8_t)((uint32_t) id << 5);
	
	// Group 0
	can_normmode_filter[ 0] = b0; can_normmode_filter[ 1] = b1; // Filter 0
	can_normmode_filter[ 4] = b0; can_normmode_filter[ 5] = b1; // Filter 1
	// Group 1
	can_normmode_filter[ 8] = b0; can_normmode_filter[ 9] = b1; // Filter 2
	can_normmode_filter[12] = b0; can_normmode_filter[13] = b1; // Filter 3
	can_normmode_filter[16] = b0; can_normmode_filter[17] = b1; // Filter 4
	can_normmode_filter[20] = b0; can_normmode_filter[21] = b1; // Filter 5	
}
uint16_t EEMEM MsgTxId_EEMEM = CAN_NORM_MSG_ID_TX_DFLT;
uint16_t EEMEM MsgRxId_EEMEM = CAN_NORM_MSG_ID_RX_DFLT;
uint8_t  EEMEM CanBitRate_EEMEM = BITRATE_500_KBPS;


//______________________________________________________________________________
// CAN bus, configuration mode

#define CAN_CONFMODE_MSG_ID_RX 0x001
#define CAN_CONFMODE_MSG_ID_TX 0x000
#define CAN_CONFMODE_BITRATE BITRATE_500_KBPS

// Set filters and masks so only frame with standard ID CAN_CONFMODE_MSG_ID_RX is received
const uint8_t can_confmode_filter[] PROGMEM =
{
	// Group 0
	MCP2515_FILTER(CAN_CONFMODE_MSG_ID_RX),		// Filter 0
	MCP2515_FILTER(CAN_CONFMODE_MSG_ID_RX),		// Filter 1
	
	// Group 1
	MCP2515_FILTER(CAN_CONFMODE_MSG_ID_RX),		// Filter 2
	MCP2515_FILTER(CAN_CONFMODE_MSG_ID_RX),		// Filter 3
	MCP2515_FILTER(CAN_CONFMODE_MSG_ID_RX),		// Filter 4
	MCP2515_FILTER(CAN_CONFMODE_MSG_ID_RX),		// Filter 5
	
	MCP2515_FILTER(0x7FF),		// Mask 0 (for group 0)
	MCP2515_FILTER(0x7FF),		// Mask 1 (for group 1)
};
uint8_t can_confmode_request_status = 0;


//______________________________________________________________________________
// Scheduler (set sched_1000ms every 1s)

#define SCHED_PERIOD 1.0  // in second. If SCHED_PERIOD is changed, check if OCR1A in sched_init() is lower than MAX, adapt prescaler if needed.
void sched_init(void) {
	//Initialize timer1 (16bit) to generate 1s event
	// CTC with OCR1A as TOP, clk = clockio/1024 = 8MHz/1024 = 7812.5Hz
	TCCR1A = (0<<COM1A1)|(0<<COM1A0)|(0<<COM1B1)|(0<<COM1B0)|(0<<WGM11)|(0<<WGM10);
	TCCR1B = (0<<ICNC1)|(0<<ICES1)|(0<<WGM13)|(1<<WGM12)|(1<<CS12)|(0<<CS11)|(1<<CS10);
	OCR1A = SCHED_PERIOD * (F_CPU / 1024);
	// Enable interrupt on TOP
	TIMSK1 = (0<<ICIE1)|(0<<OCIE1B)|(1<<OCIE1A)|(0<<TOIE1);
}
volatile uint8_t sched_1000ms;
ISR(TIMER1_COMPA_vect)
{
	sched_1000ms = 1;
}


//______________________________________________________________________________
// Configuration mode

#define ModeIsConf() (!(PINC & (1 << PC1)))


//______________________________________________________________________________
// LED connected to PC3 for debug

#define LedOn()   (PORTC |=  (1 << PC3))
#define LedOff()  (PORTC &= ~(1 << PC3))
#define LedIsOn() (PINC & (1 << PC3))
void    LedToggle(void) {
	if (LedIsOn()) {
		LedOff();
		} else {
		LedOn();
	}
}


//______________________________________________________________________________
// Main 

int main(void)
{
	// Setup ports
	/*
	PB0		CLKO	IN	Pull-up		Not used (disconnected from MCP2515 OSC1) => input with pull-up
	PB1		NC		IN	Pull-up		
	PB2		SS		OUT	High		SPI module will anyway configure this pin		
	PB3		MOSI	OUT	Low			SPI module will anyway configure this pin		
	PB4		MISO	IN				SPI module will anyway configure this pin	
	PB5		SCK		OUT	Low			SPI module will anyway configure this pin	
	PB6		XTAL1	IN				Micro is clocked from MCP2515
	PB7		NC		IN	Pull-up
	
	PC0		INT		IN				
	PC1		CONF	IN	Pull-up
	PC2		NC		IN	Pull-up
	PC3		LED		OUT	Low			LED is not mounted on PCB, only used for debug
	PC4		SDA		IN				I2C module will anyway configure this pin
	PC5		SCL		IN				I2C module will anyway configure this pin
	PC6		RESET	IN				
	
	PD0		Cmd8	OUT	Low			Relay Group 3
	PD1		Cmd7	OUT	Low			Relay Group 3
	PD2		Cmd6	OUT	Low			Relay Group 3
	PD3		Cmd5	OUT	Low			Relay Group 3
	PD4		Cmd4	OUT	Low			Relay Group 3
	PD5		Cmd3	OUT	Low			Relay Group 3
	PD6		Cmd2	OUT	Low			Relay Group 3
	PD7		Cmd1	OUT	Low			Relay Group 3
	*/
	
	// Set direction (1 = output, 0 = input)
	DDRB  = (0<<PB7)|(0<<PB6)|(1<<PB5)|(0<<PB4)|(1<<PB3)|(1<<PB2)|(0<<PB1)|(0<<PB0);
	DDRC  =          (0<<PC6)|(0<<PC5)|(0<<PC4)|(1<<PC3)|(0<<PC2)|(0<<PC1)|(0<<PC0);
	DDRD  = (1<<PD7)|(1<<PD6)|(1<<PD5)|(1<<PD4)|(1<<PD3)|(1<<PD2)|(1<<PD1)|(1<<PD0);
	
	// Set pull-ups or outputs high (1), or, no pull-ups or outputs low (0)
	PORTB = (1<<PB7)|(0<<PB6)|(0<<PB5)|(0<<PB4)|(0<<PB3)|(1<<PB2)|(1<<PB1)|(1<<PB0);
	PORTC =          (0<<PC6)|(0<<PC5)|(0<<PC4)|(0<<PC3)|(1<<PC2)|(1<<PC1)|(0<<PC0);
	PORTD = (0<<PD7)|(0<<PD6)|(0<<PD5)|(0<<PD4)|(0<<PD3)|(0<<PD2)|(0<<PD1)|(0<<PD0);
	

	#ifdef DEBUG
	// To control good operation in debug
	LedOn();
	//_delay_ms(500);
	LedOff();
	//_delay_ms(500);
	LedOn();
	#endif
	
	if (ModeIsConf())	goto ConfigurationMode;
	else				goto NormalMode;
	
	//____________________________________________________________________________________
	NormalMode:

	// Initialize MCP23017 port extender
	mcp23017_init(&PortExtender, 0b000);
	
	// Read configuration from EEPROM
	can_normmode_msg_id_tx = eeprom_read_word(&MsgTxId_EEMEM); // Current ID of Tx message in normal mode
	can_normmode_msg_id_rx = eeprom_read_word(&MsgRxId_EEMEM); // Current ID of Rx message in normal mode
	can_normmode_bitrate   = eeprom_read_byte(&CanBitRate_EEMEM); // Bus bit rate in normal mode
	
	// Initialize MCP2515 CAN bus controller
	can_init(can_normmode_bitrate);
	
	// Load filters and masks
	can_normmode_filter_update((uint32_t)can_normmode_msg_id_rx);
	can_static_filter2(can_normmode_filter);
	// Note: if the program gets stuck at this point, this most probably mean that
	// MCP2515 do not enter into configuration mode as requested. One possible cause
	// is a broken or not mounted or not terminated (120Ohm) transceiver.
	
	// Initialize Tx message
	MsgTx.id = (uint32_t)can_normmode_msg_id_tx;
	MsgTx.flags.rtr = 0;
	MsgTx.flags.extended = 0;
	MsgTx.length = 5;
	MsgTx.data[0] = 0x00;
	MsgTx.data[1] = 0x00;
	MsgTx.data[2] = 0x00;
	MsgTx.data[3] = (uint8_t)can_normmode_msg_id_rx;
	MsgTx.data[4] = (uint8_t)(can_normmode_msg_id_rx >> 8);

	// Initialize scheduler
	sched_init();
	
	// Enable interrupts
	sei();
		
	#ifdef DEBUG
	// Clear LED if initialization pass
	LedOff();	
	#endif
	
	while(1)
	{
		// Check if it is time to send period message
		if (sched_1000ms) {
			sched_1000ms = 0;
			can_send_request = 1;
			LedToggle();
		}
		
		// Check if a new message has been received
		if (can_check_message())
		{
			if (can_get_message(&MsgRx))
			{
				relay_state0108 = MsgRx.data[0];
				relay_state0916 = MsgRx.data[1];
				relay_state1724 = MsgRx.data[2];
				relay_update();
				can_send_request = 1;
			}
		}
		
		// Send status frame
		if (can_send_request)
		{
			can_send_request = 0;
			MsgTx.data[0] = relay_state0108;
			MsgTx.data[1] = relay_state0916;
			MsgTx.data[2] = relay_state1724;
			can_send_message(&MsgTx);
		}	
	}
	
	//____________________________________________________________________________________
	ConfigurationMode:

	// Initialize MCP2515 CAN bus controller
	can_init(CAN_CONFMODE_BITRATE);
	
	// Load filters and masks
	can_static_filter(can_confmode_filter);
	// Note: if the program gets stuck at this point, this most probably mean that
	// MCP2515 do not enter into configuration mode as requested. One possible cause
	// is a broken or not mounted or not terminated (120Ohm) transceiver.

	// Initialize Tx message
	MsgTx.id = CAN_CONFMODE_MSG_ID_TX;
	MsgTx.flags.rtr = 0;
	MsgTx.flags.extended = 0;
	MsgTx.length = 6;

	// Initialize scheduler
	sched_init();
	
	// Enable interrupts
	sei();
	
	#ifdef DEBUG
	// Clear LED if initialization pass
	LedOff();
	#endif
	
	while(1)
	{
		// Check if it is time to send period message
		if (sched_1000ms) {
			sched_1000ms = 0;
			can_send_request = 1;
			LedToggle();
		}
		
		// Check if a new message has been received
		if (can_check_message())
		{
			if (can_get_message(&MsgRx))
			{
				if (MsgRx.flags.rtr == 1) {
					can_confmode_request_status = 2;
				}
				else if (MsgRx.length != 5) {
					can_confmode_request_status = 3;
				}
				else {
					// Extract data from message 
					can_normmode_msg_id_tx = (((uint16_t)MsgRx.data[1]) << 8) | ((uint16_t)MsgRx.data[0]);
					can_normmode_msg_id_rx = (((uint16_t)MsgRx.data[3]) << 8) | ((uint16_t)MsgRx.data[2]);
					can_normmode_bitrate = MsgRx.data[4];
					
					// Check validity
					if (can_normmode_msg_id_tx > 0x7FF) {
						can_confmode_request_status = 4;
					}
					else if (can_normmode_msg_id_rx > 0x7FF) {
						can_confmode_request_status = 5;
					}
					else if (can_normmode_msg_id_rx == can_normmode_msg_id_tx) {
						can_confmode_request_status = 6;
					}
					else if (can_normmode_bitrate > BITRATE_1_MBPS) {
						can_confmode_request_status = 7;
					}
					else {
						eeprom_write_word(&MsgTxId_EEMEM, can_normmode_msg_id_tx);
						eeprom_write_word(&MsgRxId_EEMEM, can_normmode_msg_id_rx);
						eeprom_write_byte(&CanBitRate_EEMEM, can_normmode_bitrate);
						can_confmode_request_status = 1;
					}
				}
				can_send_request = 1;
			}
		}
		
		// Send status frame
		if (can_send_request)
		{
			can_send_request = 0;
			
			can_normmode_msg_id_tx = eeprom_read_word(&MsgTxId_EEMEM); // Current ID of Tx message in normal mode
			can_normmode_msg_id_rx = eeprom_read_word(&MsgRxId_EEMEM); // Current ID of Rx message in normal mode
			can_normmode_bitrate   = eeprom_read_byte(&CanBitRate_EEMEM); // Bus bit rate in normal mode

			MsgTx.data[0] = (uint8_t) can_normmode_msg_id_tx;
			MsgTx.data[1] = (uint8_t)(can_normmode_msg_id_tx >> 8);
			MsgTx.data[2] = (uint8_t) can_normmode_msg_id_rx;
			MsgTx.data[3] = (uint8_t)(can_normmode_msg_id_rx >> 8);
			MsgTx.data[4] = can_normmode_bitrate; // 0 to 7 for 10kbps to 1Mbps, as defined by enum can_bitrate_t in can.h
			MsgTx.data[5] = can_confmode_request_status;

			can_send_message(&MsgTx);
		}
	}
}

/*
Relay, Port		Relay, Port		Relay, Port
1	GPA6		9	GPB1		17	PD1
2	GPA7		10	GPB0		18	PD0
3	GPA4		11	GPB3		19	PD3
4	GPA5		12	GPB2		20	PD2
5	GPA2		13	GPB5		21	PD5
6	GPA3		14	GPB4		22	PD4
7	GPA0		15	GPB7		23	PD7
8	GPA1		16	GPB6		24	PD6
*/
void relay_update(void)
{
	uint8_t R1, R2;
	
	// Update port extender (MCP3017)
	
	R1 = relay_state0108;
	R2 = 0;
	if (R1 & 0x01) R2 |= (1<<6);
	if (R1 & 0x02) R2 |= (1<<7);
	if (R1 & 0x04) R2 |= (1<<4);
	if (R1 & 0x08) R2 |= (1<<5);
	if (R1 & 0x10) R2 |= (1<<2);
	if (R1 & 0x20) R2 |= (1<<3);
	if (R1 & 0x40) R2 |= (1<<0);
	if (R1 & 0x80) R2 |= (1<<1);
	
	PortExtender.data = (uint16_t)R2;
	
	R1 = relay_state0916;
	R2 = 0;
	if (R1 & 0x01) R2 |= (1<<1);
	if (R1 & 0x02) R2 |= (1<<0);
	if (R1 & 0x04) R2 |= (1<<3);
	if (R1 & 0x08) R2 |= (1<<2);
	if (R1 & 0x10) R2 |= (1<<5);
	if (R1 & 0x20) R2 |= (1<<4);
	if (R1 & 0x40) R2 |= (1<<7);
	if (R1 & 0x80) R2 |= (1<<6);
	
	PortExtender.data |= ((uint16_t)R2) << 8;

	mcp23017_write(&PortExtender);
	
	// Update microcontroller port
	
	R1 = relay_state1724;
	R2 = 0;
	if (R1 & 0x01) R2 |= (1<<1);
	if (R1 & 0x02) R2 |= (1<<0);
	if (R1 & 0x04) R2 |= (1<<3);
	if (R1 & 0x08) R2 |= (1<<2);
	if (R1 & 0x10) R2 |= (1<<5);
	if (R1 & 0x20) R2 |= (1<<4);
	if (R1 & 0x40) R2 |= (1<<7);
	if (R1 & 0x80) R2 |= (1<<6);
	
	PORTD = R2;
}
