/*
RelayCAN.c
Created: 20/06/2021 21:37:26
Author : Jean-Guilhem DALISSIER

______________________________________
Programming info

The microcontroller cannot be programmed on the board (no SPI connector mounted),
use a breadboard or other. If the programming fail, check following points:
- an external clock is provided (required when fuse CKOUT is set).
- MISO pin is also connected to another devise (eg MCP2515 on the breadboard)

Fuses to set to 1:
- HIGH.SPIEN
- HIGH.EESAVE
- LOW.CKOUT

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

u08 relay_state0108; // bit 0..7 = state of relay  1..8
u08 relay_state0916; // bit 0..7 = state of relay  9..16
u08 relay_state1724; // bit 0..7 = state of relay 17..24
void relay_update(void);

//______________________________________________________________________________
// Port extender (MCP23017)

MCP23017 PortExtender;


//______________________________________________________________________________
// CAN bus

#define CAN_MSG_ID_RX 0x7FF
#define CAN_MSG_ID_TX 0x7FE

// Set filters and masks so only frame with standard ID CAN_MSG_ID_RX is received
const uint8_t can_filter[] PROGMEM = 
{
	// Group 0
	MCP2515_FILTER(CAN_MSG_ID_RX),				// Filter 0
	MCP2515_FILTER(CAN_MSG_ID_RX),				// Filter 1
	
	// Group 1
	MCP2515_FILTER(CAN_MSG_ID_RX),		// Filter 2
	MCP2515_FILTER(CAN_MSG_ID_RX),		// Filter 3
	MCP2515_FILTER(CAN_MSG_ID_RX),		// Filter 4
	MCP2515_FILTER(CAN_MSG_ID_RX),		// Filter 5
	
	MCP2515_FILTER(0x7FF),		// Mask 0 (for group 0)
	MCP2515_FILTER(0x7FF),		// Mask 1 (for group 1)
};

can_t MsgTx;
can_t MsgRx;
u08 can_send_request;

//______________________________________________________________________________
// Scheduler (sched_1000ms set every 1s)

#define SCHED_PERIOD 1.0  // in second. If SCHED_PERIOD is changed, check if OCR1A in shed_init() is lower than MAX, adapt prescaler if needed.
void sched_init(void) {
	//Initialize timer1 (16bit) to generate 1s event
	// CTC with OCR1A as TOP, clk = clockio/1024 = 8MHz/1024 = 7812.5Hz
	TCCR1A = (0<<COM1A1)|(0<<COM1A0)|(0<<COM1B1)|(0<<COM1B0)|(0<<WGM11)|(0<<WGM10);
	TCCR1B = (0<<ICNC1)|(0<<ICES1)|(0<<WGM13)|(1<<WGM12)|(1<<CS12)|(0<<CS11)|(1<<CS10);
	OCR1A = SCHED_PERIOD * (F_CPU / 1024);
	// Enable interrupt on TOP
	TIMSK1 = (0<<ICIE1)|(0<<OCIE1B)|(1<<OCIE1A)|(0<<TOIE1);
}
volatile u08 sched_1000ms;
ISR(TIMER1_COMPA_vect)
{
	sched_1000ms = 1;
}


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
	
	// Set pull-ups or outputs high (1), or no pull-ups or outputs low (0)
	PORTB = (1<<PB7)|(0<<PB6)|(0<<PB5)|(0<<PB4)|(0<<PB3)|(1<<PB2)|(1<<PB1)|(1<<PB0);
	PORTC =          (0<<PC6)|(0<<PC5)|(0<<PC4)|(0<<PC3)|(1<<PC2)|(1<<PC1)|(0<<PC0);
	PORTD = (0<<PD7)|(0<<PD6)|(0<<PD5)|(0<<PD4)|(0<<PD3)|(0<<PD2)|(0<<PD1)|(0<<PD0);
	

#ifdef DEBUG
	// To control good operation in debug
	LedOn();
	_delay_ms(500);
	LedOff();
	_delay_ms(500);
	LedOn();
#endif
	

	// Initialize MCP23017 port extender
	mcp23017_init(&PortExtender, 0b000);
	
	// Initialize MCP2515 CAN bus controller
	can_init(BITRATE_500_KBPS);
	
	// Load filters and masks
	can_static_filter(can_filter);
	// Note: if the program gets stuck at this point, this most probably mean that
	// MCP2515 do not enter into configuration mode as requested. One possible cause
	// is a broken or not mounted or not terminated (120Ohm) transceiver.
	
	// Initialize Rx message
	MsgRx.id = CAN_MSG_ID_RX;
	MsgRx.flags.rtr = 0;
	MsgRx.flags.extended = 0;
	MsgRx.length = 3;
	MsgRx.data[0] = 0x00;
	MsgRx.data[1] = 0x00;
	MsgRx.data[2] = 0x00;

	// Initialize Tx message
	MsgTx.id = CAN_MSG_ID_TX;
	MsgTx.flags.rtr = 0;
	MsgTx.flags.extended = 0;
	MsgTx.length = 5;
	MsgTx.data[0] = 0x00;
	MsgTx.data[1] = 0x00;
	MsgTx.data[2] = 0x00;
	MsgTx.data[3] = CAN_MSG_ID_RX & 0x0FF;
	MsgTx.data[4] = (CAN_MSG_ID_RX & 0xF00) >> 8;

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
	u08 R1, R2;
	
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
	
	PortExtender.data = (u16)R2;
	
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
	
	PortExtender.data |= ((u16)R2) << 8;

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
	
	// Request sending of status frame
	can_send_request = 1;
}
