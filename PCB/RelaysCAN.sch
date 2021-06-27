EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 4
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L MCU_Microchip_ATmega:ATmega88A-PU U3
U 1 1 60A92CA5
P 5250 2550
F 0 "U3" H 5550 4150 50  0000 R CNN
F 1 "ATmega88A-PU" H 6050 4050 50  0000 R CNN
F 2 "Package_DIP:DIP-28_W7.62mm" H 5250 2550 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/ATmega48A_88A_168A-Data-Sheet-40002007A.pdf" H 5250 2550 50  0001 C CNN
	1    5250 2550
	1    0    0    -1  
$EndComp
$Comp
L Interface_Expansion:MCP23017_SP U4
U 1 1 60A94360
P 7350 5000
F 0 "U4" H 6700 6150 50  0000 C CNN
F 1 "MCP23017_SP" H 6900 6050 50  0000 C CNN
F 2 "Package_DIP:DIP-28_W7.62mm" H 7550 4000 50  0001 L CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/20001952C.pdf" H 7550 3900 50  0001 L CNN
	1    7350 5000
	1    0    0    -1  
$EndComp
$Comp
L Converter_DCDC_JGUI:TBA_1-1211 PS1
U 1 1 60A9A1B3
P 3600 6500
F 0 "PS1" H 3600 6825 50  0000 C CNN
F 1 "TBA_1-1211" H 3600 6734 50  0000 C CNN
F 2 "Converter_DCDC_JGUI:Converter_DCDC_TRACO_TBA-1-xxxx_Single_THT" H 3600 6200 50  0001 C CNN
F 3 "https://www.tracopower.com/sites/default/files/products/datasheets/tba1_datasheet.pdf" H 3600 6100 50  0001 C CNN
	1    3600 6500
	1    0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J2
U 1 1 60A9FD1C
P 1200 6750
F 0 "J2" H 1200 6550 50  0000 C CNN
F 1 "Screw_Terminal_01x02" H 1250 6850 50  0000 C CNN
F 2 "TerminalBlock:TerminalBlock_bornier-2_P5.08mm" H 1200 6750 50  0001 C CNN
F 3 "~" H 1200 6750 50  0001 C CNN
	1    1200 6750
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR013
U 1 1 60AA249E
P 4200 6750
F 0 "#PWR013" H 4200 6500 50  0001 C CNN
F 1 "GND" V 4205 6622 50  0000 R CNN
F 2 "" H 4200 6750 50  0001 C CNN
F 3 "" H 4200 6750 50  0001 C CNN
	1    4200 6750
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR012
U 1 1 60AA3250
P 4200 6400
F 0 "#PWR012" H 4200 6250 50  0001 C CNN
F 1 "+5V" V 4215 6528 50  0000 L CNN
F 2 "" H 4200 6400 50  0001 C CNN
F 3 "" H 4200 6400 50  0001 C CNN
	1    4200 6400
	0    1    1    0   
$EndComp
$Comp
L power:+12V #PWR011
U 1 1 60AA468E
P 4200 6100
F 0 "#PWR011" H 4200 5950 50  0001 C CNN
F 1 "+12V" V 4215 6228 50  0000 L CNN
F 2 "" H 4200 6100 50  0001 C CNN
F 3 "" H 4200 6100 50  0001 C CNN
	1    4200 6100
	0    1    1    0   
$EndComp
Wire Wire Line
	2950 6650 2950 6400
Wire Wire Line
	3100 6750 3100 6600
Wire Wire Line
	2950 6100 2950 6400
Connection ~ 2950 6400
Wire Wire Line
	2950 6400 3200 6400
$Sheet
S 9750 3650 850  2550
U 60AD64B7
F0 "RelaysGroup1" 50
F1 "RelaysGroup1.sch" 50
F2 "+12V" I L 9750 6000 50 
F3 "GND" I L 9750 6100 50 
F4 "Cmd1" I L 9750 3700 50 
F5 "Cmd2" I L 9750 4000 50 
F6 "Cmd3" I L 9750 4300 50 
F7 "Cmd4" I L 9750 4600 50 
F8 "Cmd5" I L 9750 4900 50 
F9 "Cmd6" I L 9750 5200 50 
F10 "Cmd7" I L 9750 5500 50 
F11 "Cmd8" I L 9750 5800 50 
F12 "NC1" U R 10600 3900 50 
F13 "NC3" U R 10600 4500 50 
F14 "NC8" U R 10600 6000 50 
F15 "NC7" U R 10600 5700 50 
F16 "NC6" U R 10600 5400 50 
F17 "NC5" U R 10600 5100 50 
F18 "NC4" U R 10600 4800 50 
F19 "NO1" U R 10600 3700 50 
F20 "NO2" U R 10600 4000 50 
F21 "NO3" U R 10600 4300 50 
F22 "NO4" U R 10600 4600 50 
F23 "NO5" U R 10600 4900 50 
F24 "NO6" U R 10600 5200 50 
F25 "NO7" U R 10600 5500 50 
F26 "NO8" U R 10600 5800 50 
F27 "NC2" U R 10600 4200 50 
F28 "COM1" U R 10600 3800 50 
F29 "COM2" U R 10600 4100 50 
F30 "COM3" U R 10600 4400 50 
F31 "COM4" U R 10600 4700 50 
F32 "COM5" U R 10600 5000 50 
F33 "COM6" U R 10600 5300 50 
F34 "COM7" U R 10600 5600 50 
F35 "COM8" U R 10600 5900 50 
$EndSheet
$Sheet
S 9750 800  850  2550
U 60B86C8D
F0 "RelaysGroup2" 50
F1 "RelaysGroup1.sch" 50
F2 "+12V" I L 9750 3150 50 
F3 "GND" I L 9750 3250 50 
F4 "Cmd1" I L 9750 2950 50 
F5 "Cmd2" I L 9750 2650 50 
F6 "Cmd3" I L 9750 2350 50 
F7 "Cmd4" I L 9750 2050 50 
F8 "Cmd5" I L 9750 1750 50 
F9 "Cmd6" I L 9750 1450 50 
F10 "Cmd7" I L 9750 1150 50 
F11 "Cmd8" I L 9750 850 50 
F12 "NC1" U R 10600 1050 50 
F13 "NC3" U R 10600 1650 50 
F14 "NC8" U R 10600 3150 50 
F15 "NC7" U R 10600 2850 50 
F16 "NC6" U R 10600 2550 50 
F17 "NC5" U R 10600 2250 50 
F18 "NC4" U R 10600 1950 50 
F19 "NO1" U R 10600 850 50 
F20 "NO2" U R 10600 1150 50 
F21 "NO3" U R 10600 1450 50 
F22 "NO4" U R 10600 1750 50 
F23 "NO5" U R 10600 2050 50 
F24 "NO6" U R 10600 2350 50 
F25 "NO7" U R 10600 2650 50 
F26 "NO8" U R 10600 2950 50 
F27 "NC2" U R 10600 1350 50 
F28 "COM1" U R 10600 950 50 
F29 "COM2" U R 10600 1250 50 
F30 "COM3" U R 10600 1550 50 
F31 "COM4" U R 10600 1850 50 
F32 "COM5" U R 10600 2150 50 
F33 "COM6" U R 10600 2450 50 
F34 "COM7" U R 10600 2750 50 
F35 "COM8" U R 10600 3050 50 
$EndSheet
$Comp
L power:GND #PWR015
U 1 1 60B9CEFD
P 3700 2800
F 0 "#PWR015" H 3700 2550 50  0001 C CNN
F 1 "GND" V 3705 2672 50  0000 R CNN
F 2 "" H 3700 2800 50  0001 C CNN
F 3 "" H 3700 2800 50  0001 C CNN
	1    3700 2800
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR014
U 1 1 60B9EFA6
P 3700 850
F 0 "#PWR014" H 3700 700 50  0001 C CNN
F 1 "+5V" V 3715 978 50  0000 L CNN
F 2 "" H 3700 850 50  0001 C CNN
F 3 "" H 3700 850 50  0001 C CNN
	1    3700 850 
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR08
U 1 1 60B9FD5A
P 2850 2450
F 0 "#PWR08" H 2850 2300 50  0001 C CNN
F 1 "+5V" V 2865 2578 50  0000 L CNN
F 2 "" H 2850 2450 50  0001 C CNN
F 3 "" H 2850 2450 50  0001 C CNN
	1    2850 2450
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3700 2650 3700 2800
Wire Wire Line
	3700 850  3700 1050
$Comp
L Interface_CAN_LIN:MCP2562-E-P U1
U 1 1 60BA1EAC
P 2100 1550
F 0 "U1" H 2000 2050 50  0000 C CNN
F 1 "MCP2562-E-P" H 1750 1950 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 2100 1050 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/25167A.pdf" H 2100 1550 50  0001 C CNN
	1    2100 1550
	-1   0    0    -1  
$EndComp
Wire Wire Line
	800  1500 1300 1500
Wire Wire Line
	1600 1500 1600 1450
Wire Wire Line
	800  1600 1450 1600
Wire Wire Line
	1600 1600 1600 1650
Wire Wire Line
	2600 1350 3100 1350
$Comp
L power:+5V #PWR03
U 1 1 60BAD0B4
P 2100 950
F 0 "#PWR03" H 2100 800 50  0001 C CNN
F 1 "+5V" V 2115 1078 50  0000 L CNN
F 2 "" H 2100 950 50  0001 C CNN
F 3 "" H 2100 950 50  0001 C CNN
	1    2100 950 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 60BAD4BA
P 2100 2100
F 0 "#PWR04" H 2100 1850 50  0001 C CNN
F 1 "GND" V 2105 1972 50  0000 R CNN
F 2 "" H 2100 2100 50  0001 C CNN
F 3 "" H 2100 2100 50  0001 C CNN
	1    2100 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 1150 2100 950 
Wire Wire Line
	2100 2100 2100 2000
$Comp
L power:+5V #PWR07
U 1 1 60BAE284
P 2700 1650
F 0 "#PWR07" H 2700 1500 50  0001 C CNN
F 1 "+5V" V 2715 1778 50  0000 L CNN
F 2 "" H 2700 1650 50  0001 C CNN
F 3 "" H 2700 1650 50  0001 C CNN
	1    2700 1650
	0    1    1    0   
$EndComp
Wire Wire Line
	2700 1650 2600 1650
Wire Wire Line
	2100 2000 2600 2000
Wire Wire Line
	2600 2000 2600 1750
Connection ~ 2100 2000
Wire Wire Line
	2100 2000 2100 1950
$Comp
L Device:R R1
U 1 1 60BB7B61
P 1450 1000
F 0 "R1" V 1250 1000 50  0000 C CNN
F 1 "120R" V 1350 1000 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 1380 1000 50  0001 C CNN
F 3 "~" H 1450 1000 50  0001 C CNN
	1    1450 1000
	-1   0    0    -1  
$EndComp
$Comp
L Device:Jumper JP1
U 1 1 60BB6BA8
P 1300 1000
F 0 "JP1" V 1400 1300 50  0000 R CNN
F 1 "Jumper" V 1300 1450 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Horizontal" H 1300 1000 50  0001 C CNN
F 3 "~" H 1300 1000 50  0001 C CNN
	1    1300 1000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1450 700  1450 850 
Wire Wire Line
	1300 700  1450 700 
Wire Wire Line
	1450 1150 1450 1600
Connection ~ 1450 1600
Wire Wire Line
	1450 1600 1600 1600
Wire Wire Line
	1300 1300 1300 1500
Connection ~ 1300 1500
Wire Wire Line
	1300 1500 1600 1500
Text Label 6200 1350 2    50   ~ 0
CLKO
Text Label 4550 2150 2    50   ~ 0
CLKO
NoConn ~ 4300 2050
NoConn ~ 4300 2250
NoConn ~ 3100 1950
NoConn ~ 3100 2050
NoConn ~ 3100 2150
NoConn ~ 3100 2250
NoConn ~ 3100 2350
Wire Wire Line
	5850 1850 6200 1850
Text Label 6200 1850 2    50   ~ 0
SCK
Wire Wire Line
	5850 1750 6200 1750
Text Label 6200 1750 2    50   ~ 0
MISO
Wire Wire Line
	5850 1650 6200 1650
Text Label 6200 1650 2    50   ~ 0
MOSI
Wire Wire Line
	5850 1550 6200 1550
Text Label 6200 1550 2    50   ~ 0
~SS
Text Label 4500 1250 2    50   ~ 0
MOSI
Text Label 4500 1350 2    50   ~ 0
MISO
Text Label 4500 1450 2    50   ~ 0
~SS
Text Label 4500 1550 2    50   ~ 0
SCK
$Comp
L power:+5V #PWR018
U 1 1 60BD5C76
P 5250 900
F 0 "#PWR018" H 5250 750 50  0001 C CNN
F 1 "+5V" V 5265 1028 50  0000 L CNN
F 2 "" H 5250 900 50  0001 C CNN
F 3 "" H 5250 900 50  0001 C CNN
	1    5250 900 
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 900  5250 950 
Connection ~ 5250 950 
Wire Wire Line
	5250 950  5250 1050
Wire Wire Line
	5350 950  5250 950 
Wire Wire Line
	5350 950  5350 1050
Wire Wire Line
	5850 2750 6200 2750
Text Label 6200 2750 2    50   ~ 0
SCL
Wire Wire Line
	5850 2650 6200 2650
Text Label 6200 2650 2    50   ~ 0
SDA
$Comp
L power:GND #PWR019
U 1 1 60BDF984
P 5250 4050
F 0 "#PWR019" H 5250 3800 50  0001 C CNN
F 1 "GND" V 5350 4100 50  0000 R CNN
F 2 "" H 5250 4050 50  0001 C CNN
F 3 "" H 5250 4050 50  0001 C CNN
	1    5250 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	6650 4200 6350 4200
Wire Wire Line
	6650 4300 6000 4300
Text Label 5650 4200 0    50   ~ 0
SDA
Text Label 5650 4300 0    50   ~ 0
SCL
$Comp
L power:GND #PWR026
U 1 1 60C0E068
P 7350 6200
F 0 "#PWR026" H 7350 5950 50  0001 C CNN
F 1 "GND" V 7355 6072 50  0000 R CNN
F 2 "" H 7350 6200 50  0001 C CNN
F 3 "" H 7350 6200 50  0001 C CNN
	1    7350 6200
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR025
U 1 1 60C0E661
P 7350 3900
F 0 "#PWR025" H 7350 3750 50  0001 C CNN
F 1 "+5V" V 7450 3800 50  0000 L CNN
F 2 "" H 7350 3900 50  0001 C CNN
F 3 "" H 7350 3900 50  0001 C CNN
	1    7350 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	7350 6200 7350 6100
Wire Wire Line
	7350 6100 6500 6100
Wire Wire Line
	6500 6100 6500 5800
Wire Wire Line
	6500 5800 6650 5800
Connection ~ 7350 6100
Wire Wire Line
	6650 5700 6500 5700
Wire Wire Line
	6500 5700 6500 5800
Connection ~ 6500 5800
Wire Wire Line
	6650 5600 6500 5600
Wire Wire Line
	6500 5600 6500 5700
Connection ~ 6500 5700
NoConn ~ 6650 4800
NoConn ~ 6650 4900
$Comp
L power:+5V #PWR022
U 1 1 60C2C510
P 5600 5100
F 0 "#PWR022" H 5600 4950 50  0001 C CNN
F 1 "+5V" V 5615 5228 50  0000 L CNN
F 2 "" H 5600 5100 50  0001 C CNN
F 3 "" H 5600 5100 50  0001 C CNN
	1    5600 5100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2850 2450 3100 2450
Wire Wire Line
	6250 1350 6250 550 
Wire Wire Line
	5850 1350 6250 1350
Wire Wire Line
	5850 3050 6400 3050
Wire Wire Line
	5850 3150 6450 3150
Wire Wire Line
	5850 3250 6500 3250
Wire Wire Line
	5850 3350 6550 3350
Wire Wire Line
	5850 3450 6600 3450
Wire Wire Line
	5850 3550 6650 3550
Wire Wire Line
	5850 3650 6700 3650
Wire Wire Line
	5850 3750 6750 3750
$Comp
L power:GND #PWR024
U 1 1 60C59815
P 7150 3100
F 0 "#PWR024" H 7150 2850 50  0001 C CNN
F 1 "GND" V 7150 2950 50  0000 R CNN
F 2 "" H 7150 3100 50  0001 C CNN
F 3 "" H 7150 3100 50  0001 C CNN
	1    7150 3100
	0    1    1    0   
$EndComp
Wire Wire Line
	7150 3100 7250 3100
$Comp
L power:+12V #PWR023
U 1 1 60C605EA
P 7150 3000
F 0 "#PWR023" H 7150 2850 50  0001 C CNN
F 1 "+12V" V 7165 3128 50  0000 L CNN
F 2 "" H 7150 3000 50  0001 C CNN
F 3 "" H 7150 3000 50  0001 C CNN
	1    7150 3000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7150 3000 7250 3000
$Sheet
S 7250 650  850  2550
U 60C70E12
F0 "RelaysGroup3" 50
F1 "RelaysGroup1.sch" 50
F2 "+12V" I L 7250 3000 50 
F3 "GND" I L 7250 3100 50 
F4 "Cmd1" I L 7250 2800 50 
F5 "Cmd2" I L 7250 2500 50 
F6 "Cmd3" I L 7250 2200 50 
F7 "Cmd4" I L 7250 1900 50 
F8 "Cmd5" I L 7250 1600 50 
F9 "Cmd6" I L 7250 1300 50 
F10 "Cmd7" I L 7250 1000 50 
F11 "Cmd8" I L 7250 700 50 
F12 "NC1" U R 8100 900 50 
F13 "NC3" U R 8100 1500 50 
F14 "NC8" U R 8100 3000 50 
F15 "NC7" U R 8100 2700 50 
F16 "NC6" U R 8100 2400 50 
F17 "NC5" U R 8100 2100 50 
F18 "NC4" U R 8100 1800 50 
F19 "NO1" U R 8100 700 50 
F20 "NO2" U R 8100 1000 50 
F21 "NO3" U R 8100 1300 50 
F22 "NO4" U R 8100 1600 50 
F23 "NO5" U R 8100 1900 50 
F24 "NO6" U R 8100 2200 50 
F25 "NO7" U R 8100 2500 50 
F26 "NO8" U R 8100 2800 50 
F27 "NC2" U R 8100 1200 50 
F28 "COM1" U R 8100 800 50 
F29 "COM2" U R 8100 1100 50 
F30 "COM3" U R 8100 1400 50 
F31 "COM4" U R 8100 1700 50 
F32 "COM5" U R 8100 2000 50 
F33 "COM6" U R 8100 2300 50 
F34 "COM7" U R 8100 2600 50 
F35 "COM8" U R 8100 2900 50 
$EndSheet
$Comp
L power:GND #PWR030
U 1 1 60C74601
P 9650 6100
F 0 "#PWR030" H 9650 5850 50  0001 C CNN
F 1 "GND" V 9650 5950 50  0000 R CNN
F 2 "" H 9650 6100 50  0001 C CNN
F 3 "" H 9650 6100 50  0001 C CNN
	1    9650 6100
	0    1    1    0   
$EndComp
$Comp
L power:+12V #PWR029
U 1 1 60C748C5
P 9650 6000
F 0 "#PWR029" H 9650 5850 50  0001 C CNN
F 1 "+12V" V 9665 6128 50  0000 L CNN
F 2 "" H 9650 6000 50  0001 C CNN
F 3 "" H 9650 6000 50  0001 C CNN
	1    9650 6000
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR028
U 1 1 60C77B68
P 9650 3250
F 0 "#PWR028" H 9650 3000 50  0001 C CNN
F 1 "GND" V 9650 3100 50  0000 R CNN
F 2 "" H 9650 3250 50  0001 C CNN
F 3 "" H 9650 3250 50  0001 C CNN
	1    9650 3250
	0    1    1    0   
$EndComp
$Comp
L power:+12V #PWR027
U 1 1 60C77E48
P 9650 3150
F 0 "#PWR027" H 9650 3000 50  0001 C CNN
F 1 "+12V" V 9665 3278 50  0000 L CNN
F 2 "" H 9650 3150 50  0001 C CNN
F 3 "" H 9650 3150 50  0001 C CNN
	1    9650 3150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9650 6000 9750 6000
Wire Wire Line
	9650 6100 9750 6100
Wire Wire Line
	9650 3150 9750 3150
Wire Wire Line
	9650 3250 9750 3250
$Comp
L Connector:Conn_01x24_Male J4
U 1 1 60C8735B
P 11100 4800
F 0 "J4" H 11250 3500 50  0000 R CNN
F 1 "Conn_01x24_Male" H 11600 6100 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x24_P2.54mm_Vertical" H 11100 4800 50  0001 C CNN
F 3 "~" H 11100 4800 50  0001 C CNN
	1    11100 4800
	-1   0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x24_Male J6
U 1 1 60CE9D09
P 11100 1950
F 0 "J6" H 11200 650 50  0000 R CNN
F 1 "Conn_01x24_Male" H 11700 3250 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x24_P2.54mm_Vertical" H 11100 1950 50  0001 C CNN
F 3 "~" H 11100 1950 50  0001 C CNN
	1    11100 1950
	-1   0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x24_Male J5
U 1 1 60D1FE89
P 8500 1800
F 0 "J5" H 8600 500 50  0000 R CNN
F 1 "Conn_01x24_Male" H 9100 3100 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x24_P2.54mm_Vertical" H 8500 1800 50  0001 C CNN
F 3 "~" H 8500 1800 50  0001 C CNN
	1    8500 1800
	-1   0    0    -1  
$EndComp
Wire Wire Line
	8650 850  8650 4200
Wire Wire Line
	8650 4200 8050 4200
Wire Wire Line
	8700 1150 8700 4300
Wire Wire Line
	8700 4300 8050 4300
Wire Wire Line
	8750 1450 8750 4400
Wire Wire Line
	8750 4400 8050 4400
Wire Wire Line
	8800 1750 8800 4500
Wire Wire Line
	8800 4500 8050 4500
Wire Wire Line
	8850 2050 8850 4600
Wire Wire Line
	8850 4600 8050 4600
Wire Wire Line
	8900 2350 8900 4700
Wire Wire Line
	8900 4700 8050 4700
Wire Wire Line
	8950 2650 8950 4800
Wire Wire Line
	8950 4800 8050 4800
Wire Wire Line
	9000 2950 9000 4900
Wire Wire Line
	9000 4900 8050 4900
Wire Wire Line
	8050 5600 9550 5600
Wire Wire Line
	9550 5600 9550 5200
Wire Wire Line
	8050 5500 9500 5500
Wire Wire Line
	9500 5500 9500 4900
Wire Wire Line
	8050 5400 9450 5400
Wire Wire Line
	9450 5400 9450 4600
Wire Wire Line
	8050 5300 9400 5300
Wire Wire Line
	9400 5300 9400 4300
Wire Wire Line
	8050 5200 9350 5200
Wire Wire Line
	9350 5200 9350 4000
Wire Wire Line
	8050 5100 9300 5100
Wire Wire Line
	9300 5100 9300 3700
Wire Wire Line
	8050 5700 9600 5700
Wire Wire Line
	9600 5500 9600 5700
$Comp
L Device:C C1
U 1 1 60DCF620
P 1500 2550
F 0 "C1" H 1615 2596 50  0000 L CNN
F 1 "100n" H 1615 2505 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 1538 2400 50  0001 C CNN
F 3 "~" H 1500 2550 50  0001 C CNN
	1    1500 2550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 60DD1D5B
P 1500 2700
F 0 "#PWR02" H 1500 2450 50  0001 C CNN
F 1 "GND" V 1505 2572 50  0000 R CNN
F 2 "" H 1500 2700 50  0001 C CNN
F 3 "" H 1500 2700 50  0001 C CNN
	1    1500 2700
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR01
U 1 1 60DD201D
P 1500 2400
F 0 "#PWR01" H 1500 2250 50  0001 C CNN
F 1 "+5V" V 1515 2528 50  0000 L CNN
F 2 "" H 1500 2400 50  0001 C CNN
F 3 "" H 1500 2400 50  0001 C CNN
	1    1500 2400
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 60DD4A17
P 3000 3050
F 0 "C2" H 3115 3096 50  0000 L CNN
F 1 "100n" H 3115 3005 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 3038 2900 50  0001 C CNN
F 3 "~" H 3000 3050 50  0001 C CNN
	1    3000 3050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR010
U 1 1 60DD4F15
P 3000 3200
F 0 "#PWR010" H 3000 2950 50  0001 C CNN
F 1 "GND" V 3005 3072 50  0000 R CNN
F 2 "" H 3000 3200 50  0001 C CNN
F 3 "" H 3000 3200 50  0001 C CNN
	1    3000 3200
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR09
U 1 1 60DD4F1F
P 3000 2900
F 0 "#PWR09" H 3000 2750 50  0001 C CNN
F 1 "+5V" V 3015 3028 50  0000 L CNN
F 2 "" H 3000 2900 50  0001 C CNN
F 3 "" H 3000 2900 50  0001 C CNN
	1    3000 2900
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 60DE40C3
P 4400 3500
F 0 "C3" H 4515 3546 50  0000 L CNN
F 1 "100n" H 4515 3455 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 4438 3350 50  0001 C CNN
F 3 "~" H 4400 3500 50  0001 C CNN
	1    4400 3500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR017
U 1 1 60DE45EF
P 4400 3650
F 0 "#PWR017" H 4400 3400 50  0001 C CNN
F 1 "GND" V 4405 3522 50  0000 R CNN
F 2 "" H 4400 3650 50  0001 C CNN
F 3 "" H 4400 3650 50  0001 C CNN
	1    4400 3650
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR016
U 1 1 60DE45F9
P 4400 3350
F 0 "#PWR016" H 4400 3200 50  0001 C CNN
F 1 "+5V" V 4415 3478 50  0000 L CNN
F 2 "" H 4400 3350 50  0001 C CNN
F 3 "" H 4400 3350 50  0001 C CNN
	1    4400 3350
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 60DEA741
P 6000 5950
F 0 "C4" H 6115 5996 50  0000 L CNN
F 1 "100n" H 6115 5905 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 6038 5800 50  0001 C CNN
F 3 "~" H 6000 5950 50  0001 C CNN
	1    6000 5950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR021
U 1 1 60DEAC9B
P 6000 6100
F 0 "#PWR021" H 6000 5850 50  0001 C CNN
F 1 "GND" V 6005 5972 50  0000 R CNN
F 2 "" H 6000 6100 50  0001 C CNN
F 3 "" H 6000 6100 50  0001 C CNN
	1    6000 6100
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR020
U 1 1 60DEACA5
P 6000 5800
F 0 "#PWR020" H 6000 5650 50  0001 C CNN
F 1 "+5V" V 6015 5928 50  0000 L CNN
F 2 "" H 6000 5800 50  0001 C CNN
F 3 "" H 6000 5800 50  0001 C CNN
	1    6000 5800
	1    0    0    -1  
$EndComp
NoConn ~ 5850 1450
NoConn ~ 5850 1950
NoConn ~ 5850 2050
NoConn ~ 5850 2350
NoConn ~ 5850 2450
NoConn ~ 5850 2550
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 60F7A385
P 3800 6100
F 0 "#FLG0101" H 3800 6175 50  0001 C CNN
F 1 "PWR_FLAG" H 3800 6273 50  0000 C CNN
F 2 "" H 3800 6100 50  0001 C CNN
F 3 "~" H 3800 6100 50  0001 C CNN
	1    3800 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 6600 3100 6600
Wire Wire Line
	2950 6100 3800 6100
Wire Wire Line
	1400 6750 2050 6750
Wire Wire Line
	3100 6750 4100 6750
Connection ~ 3100 6750
Wire Wire Line
	4000 6400 4200 6400
Wire Wire Line
	4000 6600 4100 6600
Wire Wire Line
	4100 6600 4100 6750
Connection ~ 4100 6750
Wire Wire Line
	4100 6750 4200 6750
Wire Wire Line
	6750 3750 6750 2800
Wire Wire Line
	6700 3650 6700 2500
Wire Wire Line
	6650 3550 6650 2200
Wire Wire Line
	6600 3450 6600 1900
Wire Wire Line
	6550 3350 6550 1600
Wire Wire Line
	6500 3250 6500 1300
Wire Wire Line
	6450 3150 6450 1000
Wire Wire Line
	6400 3050 6400 700 
Wire Wire Line
	6400 700  7250 700 
Wire Wire Line
	6450 1000 7250 1000
Wire Wire Line
	6500 1300 7250 1300
Wire Wire Line
	6550 1600 7250 1600
Wire Wire Line
	6600 1900 7250 1900
Wire Wire Line
	6650 2200 7250 2200
Wire Wire Line
	6700 2500 7250 2500
Wire Wire Line
	6750 2800 7250 2800
Wire Wire Line
	9000 2950 9750 2950
Wire Wire Line
	9750 2650 8950 2650
Wire Wire Line
	8900 2350 9750 2350
Wire Wire Line
	9750 2050 8850 2050
Wire Wire Line
	8800 1750 9750 1750
Wire Wire Line
	9750 1450 8750 1450
Wire Wire Line
	8700 1150 9750 1150
Wire Wire Line
	9750 850  8650 850 
Connection ~ 3800 6100
Wire Wire Line
	3800 6100 4200 6100
$Comp
L Device:CP C5
U 1 1 60BF2243
P 2050 6400
F 0 "C5" H 2168 6446 50  0000 L CNN
F 1 "22u" H 2168 6355 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H 2088 6250 50  0001 C CNN
F 3 "~" H 2050 6400 50  0001 C CNN
	1    2050 6400
	1    0    0    -1  
$EndComp
Connection ~ 2050 6750
Wire Wire Line
	2050 6750 3100 6750
Wire Wire Line
	2050 6550 2050 6750
Wire Wire Line
	1400 6650 2400 6650
Wire Wire Line
	2050 6250 2050 6100
Wire Wire Line
	2050 6100 2400 6100
Wire Wire Line
	2400 6100 2400 6650
Connection ~ 2400 6650
Wire Wire Line
	2400 6650 2950 6650
$Comp
L Device:LED D?
U 1 1 60C10F07
P 5000 6500
AR Path="/60AD64B7/60C10F07" Ref="D?"  Part="1" 
AR Path="/60B86C8D/60C10F07" Ref="D?"  Part="1" 
AR Path="/60C70E12/60C10F07" Ref="D?"  Part="1" 
AR Path="/60C10F07" Ref="D25"  Part="1" 
F 0 "D25" H 4993 6717 50  0000 C CNN
F 1 "LED" H 4993 6626 50  0000 C CNN
F 2 "LED_THT:LED_D3.0mm" H 5000 6500 50  0001 C CNN
F 3 "~" H 5000 6500 50  0001 C CNN
	1    5000 6500
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 60C10F0D
P 5000 6800
AR Path="/60AD64B7/60C10F0D" Ref="R?"  Part="1" 
AR Path="/60B86C8D/60C10F0D" Ref="R?"  Part="1" 
AR Path="/60C70E12/60C10F0D" Ref="R?"  Part="1" 
AR Path="/60C10F0D" Ref="R27"  Part="1" 
F 0 "R27" V 5207 6800 50  0000 C CNN
F 1 "680R" V 5116 6800 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P5.08mm_Vertical" V 4930 6800 50  0001 C CNN
F 3 "~" H 5000 6800 50  0001 C CNN
	1    5000 6800
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR032
U 1 1 60C2F8A8
P 5000 6950
F 0 "#PWR032" H 5000 6700 50  0001 C CNN
F 1 "GND" V 5005 6822 50  0000 R CNN
F 2 "" H 5000 6950 50  0001 C CNN
F 3 "" H 5000 6950 50  0001 C CNN
	1    5000 6950
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR031
U 1 1 60C2FD12
P 5000 6350
F 0 "#PWR031" H 5000 6200 50  0001 C CNN
F 1 "+5V" V 5015 6478 50  0000 L CNN
F 2 "" H 5000 6350 50  0001 C CNN
F 3 "" H 5000 6350 50  0001 C CNN
	1    5000 6350
	1    0    0    -1  
$EndComp
Text Notes 900  5200 0    50   ~ 0
ATmega88A\n\nFuses:\n> CKOUT = 0 ==> system clock output on pin PB0/CLKO\n> CKSEL3...0 = 0010 & CKDIV8 = 1 ==> internal RC oscillator & no prescaler ==> sys clock = 8MHz\n\nProgramming:\nTo be done before mounting the ATmega because SPI connector is not mounted to gain place.
Wire Wire Line
	3000 1450 3000 1250
Wire Wire Line
	3000 1250 3100 1250
Wire Wire Line
	2600 1450 3000 1450
Text Label 2650 1350 0    50   ~ 0
TXCAN
Text Label 2650 1450 0    50   ~ 0
RXCAN
Text Label 950  1500 0    50   ~ 0
CANH
Text Label 950  1600 0    50   ~ 0
CANL
Wire Wire Line
	8050 5800 9750 5800
Wire Wire Line
	9600 5500 9750 5500
Wire Wire Line
	9550 5200 9750 5200
Wire Wire Line
	9500 4900 9750 4900
Wire Wire Line
	9450 4600 9750 4600
Wire Wire Line
	9400 4300 9750 4300
Wire Wire Line
	9350 4000 9750 4000
Wire Wire Line
	9300 3700 9750 3700
Wire Wire Line
	4650 1350 4650 950 
Wire Wire Line
	4650 950  5250 950 
Wire Wire Line
	4300 1250 4500 1250
Wire Wire Line
	4500 1350 4300 1350
Wire Wire Line
	4300 1450 4500 1450
Wire Wire Line
	4300 1550 4500 1550
Wire Wire Line
	4550 2150 4300 2150
Wire Wire Line
	4550 2150 4550 550 
Wire Wire Line
	4550 550  6250 550 
$Comp
L Connector:Conn_01x24_Male J3
U 1 1 60BF00B8
P 8350 1850
F 0 "J3" H 8450 550 50  0000 R CNN
F 1 "Conn_01x24_Male" H 8950 3150 50  0000 R CNN
F 2 "Connector_PCBEdge_JGUI:DualSideEdge_65x250mils_2.54mmx24pads" H 8350 1850 50  0001 C CNN
F 3 "~" H 8350 1850 50  0001 C CNN
	1    8350 1850
	-1   0    0    -1  
$EndComp
Wire Wire Line
	8100 700  8150 700 
Wire Wire Line
	8150 750  8150 700 
Connection ~ 8150 700 
Wire Wire Line
	8150 700  8300 700 
Wire Wire Line
	8300 800  8150 800 
Wire Wire Line
	8300 900  8150 900 
Wire Wire Line
	8150 850  8150 800 
Connection ~ 8150 800 
Wire Wire Line
	8150 800  8100 800 
Wire Wire Line
	8150 950  8150 900 
Connection ~ 8150 900 
Wire Wire Line
	8150 900  8100 900 
Wire Wire Line
	8100 1000 8150 1000
Wire Wire Line
	8150 1050 8150 1000
Connection ~ 8150 1000
Wire Wire Line
	8150 1000 8300 1000
Wire Wire Line
	8300 1100 8150 1100
Wire Wire Line
	8150 1150 8150 1100
Connection ~ 8150 1100
Wire Wire Line
	8150 1100 8100 1100
Wire Wire Line
	8300 1200 8150 1200
Wire Wire Line
	8150 1250 8150 1200
Connection ~ 8150 1200
Wire Wire Line
	8150 1200 8100 1200
Wire Wire Line
	8300 1300 8150 1300
Wire Wire Line
	8150 1350 8150 1300
Connection ~ 8150 1300
Wire Wire Line
	8150 1300 8100 1300
Wire Wire Line
	8300 1400 8150 1400
Wire Wire Line
	8150 1450 8150 1400
Connection ~ 8150 1400
Wire Wire Line
	8150 1400 8100 1400
Wire Wire Line
	8300 1500 8150 1500
Wire Wire Line
	8150 1550 8150 1500
Connection ~ 8150 1500
Wire Wire Line
	8150 1500 8100 1500
Wire Wire Line
	8300 1600 8150 1600
Wire Wire Line
	8150 1650 8150 1600
Connection ~ 8150 1600
Wire Wire Line
	8150 1600 8100 1600
Wire Wire Line
	8300 1700 8150 1700
Wire Wire Line
	8150 1750 8150 1700
Connection ~ 8150 1700
Wire Wire Line
	8150 1700 8100 1700
Wire Wire Line
	8300 1800 8150 1800
Wire Wire Line
	8150 1850 8150 1800
Connection ~ 8150 1800
Wire Wire Line
	8150 1800 8100 1800
Wire Wire Line
	8300 1900 8150 1900
Wire Wire Line
	8150 1950 8150 1900
Connection ~ 8150 1900
Wire Wire Line
	8150 1900 8100 1900
Wire Wire Line
	8300 2000 8150 2000
Wire Wire Line
	8150 2050 8150 2000
Connection ~ 8150 2000
Wire Wire Line
	8150 2000 8100 2000
Wire Wire Line
	8300 2100 8150 2100
Wire Wire Line
	8150 2150 8150 2100
Connection ~ 8150 2100
Wire Wire Line
	8150 2100 8100 2100
Wire Wire Line
	8300 2200 8150 2200
Wire Wire Line
	8150 2250 8150 2200
Connection ~ 8150 2200
Wire Wire Line
	8150 2200 8100 2200
Wire Wire Line
	8300 2300 8150 2300
Wire Wire Line
	8150 2350 8150 2300
Connection ~ 8150 2300
Wire Wire Line
	8150 2300 8100 2300
Wire Wire Line
	8300 2400 8150 2400
Wire Wire Line
	8150 2450 8150 2400
Connection ~ 8150 2400
Wire Wire Line
	8150 2400 8100 2400
Wire Wire Line
	8300 2500 8150 2500
Wire Wire Line
	8150 2550 8150 2500
Connection ~ 8150 2500
Wire Wire Line
	8150 2500 8100 2500
Wire Wire Line
	8300 2600 8150 2600
Wire Wire Line
	8150 2650 8150 2600
Connection ~ 8150 2600
Wire Wire Line
	8150 2600 8100 2600
Wire Wire Line
	8300 2700 8150 2700
Wire Wire Line
	8150 2750 8150 2700
Connection ~ 8150 2700
Wire Wire Line
	8150 2700 8100 2700
Wire Wire Line
	8300 2800 8150 2800
Wire Wire Line
	8150 2850 8150 2800
Connection ~ 8150 2800
Wire Wire Line
	8150 2800 8100 2800
Wire Wire Line
	8300 2900 8150 2900
Wire Wire Line
	8150 2950 8150 2900
Connection ~ 8150 2900
Wire Wire Line
	8150 2900 8100 2900
Wire Wire Line
	8300 3000 8150 3000
Wire Wire Line
	8150 3050 8150 3000
Connection ~ 8150 3000
Wire Wire Line
	8150 3000 8100 3000
$Comp
L Connector:Conn_01x24_Male J7
U 1 1 60DE09CE
P 10900 2000
F 0 "J7" H 11000 700 50  0000 R CNN
F 1 "Conn_01x24_Male" H 11500 3300 50  0000 R CNN
F 2 "Connector_PCBEdge_JGUI:DualSideEdge_65x250mils_2.54mmx24pads" H 10900 2000 50  0001 C CNN
F 3 "~" H 10900 2000 50  0001 C CNN
	1    10900 2000
	-1   0    0    -1  
$EndComp
Wire Wire Line
	10900 850  10700 850 
Wire Wire Line
	10700 900  10700 850 
Connection ~ 10700 850 
Wire Wire Line
	10700 850  10600 850 
Wire Wire Line
	10900 950  10700 950 
Wire Wire Line
	10700 1000 10700 950 
Connection ~ 10700 950 
Wire Wire Line
	10700 950  10600 950 
Wire Wire Line
	10900 1050 10700 1050
Wire Wire Line
	10700 1100 10700 1050
Connection ~ 10700 1050
Wire Wire Line
	10700 1050 10600 1050
Wire Wire Line
	10900 1150 10700 1150
Wire Wire Line
	10700 1200 10700 1150
Connection ~ 10700 1150
Wire Wire Line
	10700 1150 10600 1150
Wire Wire Line
	10900 1250 10700 1250
Wire Wire Line
	10700 1300 10700 1250
Connection ~ 10700 1250
Wire Wire Line
	10700 1250 10600 1250
Wire Wire Line
	10900 1350 10700 1350
Wire Wire Line
	10700 1400 10700 1350
Connection ~ 10700 1350
Wire Wire Line
	10700 1350 10600 1350
Wire Wire Line
	10900 1450 10700 1450
Wire Wire Line
	10700 1500 10700 1450
Connection ~ 10700 1450
Wire Wire Line
	10700 1450 10600 1450
Wire Wire Line
	10900 1550 10700 1550
Wire Wire Line
	10700 1600 10700 1550
Connection ~ 10700 1550
Wire Wire Line
	10700 1550 10600 1550
Wire Wire Line
	10900 1650 10700 1650
Wire Wire Line
	10700 1700 10700 1650
Connection ~ 10700 1650
Wire Wire Line
	10700 1650 10600 1650
Wire Wire Line
	10900 1750 10700 1750
Wire Wire Line
	10700 1750 10700 1800
Connection ~ 10700 1750
Wire Wire Line
	10700 1750 10600 1750
Wire Wire Line
	10900 1850 10700 1850
Wire Wire Line
	10700 1900 10700 1850
Connection ~ 10700 1850
Wire Wire Line
	10700 1850 10600 1850
Wire Wire Line
	10900 1950 10700 1950
Wire Wire Line
	10700 2000 10700 1950
Connection ~ 10700 1950
Wire Wire Line
	10700 1950 10600 1950
Wire Wire Line
	10900 2050 10700 2050
Wire Wire Line
	10700 2100 10700 2050
Connection ~ 10700 2050
Wire Wire Line
	10700 2050 10600 2050
Wire Wire Line
	10900 2150 10700 2150
Wire Wire Line
	10700 2200 10700 2150
Connection ~ 10700 2150
Wire Wire Line
	10700 2150 10600 2150
Wire Wire Line
	10900 2250 10700 2250
Wire Wire Line
	10700 2300 10700 2250
Connection ~ 10700 2250
Wire Wire Line
	10700 2250 10600 2250
Wire Wire Line
	10900 2350 10700 2350
Wire Wire Line
	10700 2400 10700 2350
Connection ~ 10700 2350
Wire Wire Line
	10700 2350 10600 2350
Wire Wire Line
	10900 2450 10700 2450
Wire Wire Line
	10700 2500 10700 2450
Connection ~ 10700 2450
Wire Wire Line
	10700 2450 10600 2450
Wire Wire Line
	10900 2550 10700 2550
Wire Wire Line
	10700 2600 10700 2550
Connection ~ 10700 2550
Wire Wire Line
	10700 2550 10600 2550
Wire Wire Line
	10900 2650 10700 2650
Wire Wire Line
	10700 2700 10700 2650
Connection ~ 10700 2650
Wire Wire Line
	10700 2650 10600 2650
Wire Wire Line
	10900 2750 10700 2750
Wire Wire Line
	10700 2800 10700 2750
Connection ~ 10700 2750
Wire Wire Line
	10700 2750 10600 2750
Wire Wire Line
	10900 2850 10700 2850
Wire Wire Line
	10700 2900 10700 2850
Connection ~ 10700 2850
Wire Wire Line
	10700 2850 10600 2850
Wire Wire Line
	10900 2950 10700 2950
Wire Wire Line
	10700 3000 10700 2950
Connection ~ 10700 2950
Wire Wire Line
	10700 2950 10600 2950
Wire Wire Line
	10900 3050 10700 3050
Wire Wire Line
	10700 3100 10700 3050
Connection ~ 10700 3050
Wire Wire Line
	10700 3050 10600 3050
Wire Wire Line
	10900 3150 10700 3150
Wire Wire Line
	10700 3200 10700 3150
Connection ~ 10700 3150
Wire Wire Line
	10700 3150 10600 3150
$Comp
L Connector:Conn_01x24_Male J8
U 1 1 61116B4D
P 10900 4850
F 0 "J8" H 11050 3550 50  0000 R CNN
F 1 "Conn_01x24_Male" H 11400 6150 50  0000 R CNN
F 2 "Connector_PCBEdge_JGUI:DualSideEdge_65x250mils_2.54mmx24pads" H 10900 4850 50  0001 C CNN
F 3 "~" H 10900 4850 50  0001 C CNN
	1    10900 4850
	-1   0    0    -1  
$EndComp
Wire Wire Line
	10900 3700 10700 3700
Wire Wire Line
	10700 3750 10700 3700
Connection ~ 10700 3700
Wire Wire Line
	10700 3700 10600 3700
Wire Wire Line
	10900 3800 10700 3800
Wire Wire Line
	10700 3850 10700 3800
Connection ~ 10700 3800
Wire Wire Line
	10700 3800 10600 3800
Wire Wire Line
	10900 3900 10700 3900
Wire Wire Line
	10700 3950 10700 3900
Connection ~ 10700 3900
Wire Wire Line
	10700 3900 10600 3900
Wire Wire Line
	10900 4000 10700 4000
Wire Wire Line
	10700 4050 10700 4000
Connection ~ 10700 4000
Wire Wire Line
	10700 4000 10600 4000
Wire Wire Line
	10900 4100 10700 4100
Wire Wire Line
	10700 4150 10700 4100
Connection ~ 10700 4100
Wire Wire Line
	10700 4100 10600 4100
Wire Wire Line
	10900 4200 10700 4200
Wire Wire Line
	10700 4250 10700 4200
Connection ~ 10700 4200
Wire Wire Line
	10700 4200 10600 4200
Wire Wire Line
	10900 4300 10700 4300
Wire Wire Line
	10700 4350 10700 4300
Connection ~ 10700 4300
Wire Wire Line
	10700 4300 10600 4300
Wire Wire Line
	10900 4400 10700 4400
Wire Wire Line
	10700 4450 10700 4400
Connection ~ 10700 4400
Wire Wire Line
	10700 4400 10600 4400
Wire Wire Line
	10900 4500 10700 4500
Wire Wire Line
	10700 4550 10700 4500
Connection ~ 10700 4500
Wire Wire Line
	10700 4500 10600 4500
Wire Wire Line
	10900 4600 10700 4600
Wire Wire Line
	10700 4650 10700 4600
Connection ~ 10700 4600
Wire Wire Line
	10700 4600 10600 4600
Wire Wire Line
	10900 4700 10700 4700
Wire Wire Line
	10700 4750 10700 4700
Connection ~ 10700 4700
Wire Wire Line
	10700 4700 10600 4700
Wire Wire Line
	10900 4800 10700 4800
Wire Wire Line
	10700 4850 10700 4800
Connection ~ 10700 4800
Wire Wire Line
	10700 4800 10600 4800
Wire Wire Line
	10700 4950 10700 4900
Wire Wire Line
	10600 4900 10700 4900
Connection ~ 10700 4900
Wire Wire Line
	10700 4900 10900 4900
Wire Wire Line
	10900 5000 10700 5000
Wire Wire Line
	10700 5050 10700 5000
Connection ~ 10700 5000
Wire Wire Line
	10700 5000 10600 5000
Wire Wire Line
	10900 5100 10700 5100
Wire Wire Line
	10700 5150 10700 5100
Connection ~ 10700 5100
Wire Wire Line
	10700 5100 10600 5100
Wire Wire Line
	10900 5200 10700 5200
Wire Wire Line
	10700 5250 10700 5200
Connection ~ 10700 5200
Wire Wire Line
	10700 5200 10600 5200
Wire Wire Line
	10900 5300 10700 5300
Wire Wire Line
	10700 5350 10700 5300
Connection ~ 10700 5300
Wire Wire Line
	10700 5300 10600 5300
Wire Wire Line
	10900 5400 10700 5400
Wire Wire Line
	10700 5450 10700 5400
Connection ~ 10700 5400
Wire Wire Line
	10700 5400 10600 5400
Wire Wire Line
	10900 5500 10700 5500
Wire Wire Line
	10700 5550 10700 5500
Connection ~ 10700 5500
Wire Wire Line
	10700 5500 10600 5500
Wire Wire Line
	10900 5600 10700 5600
Wire Wire Line
	10700 5650 10700 5600
Connection ~ 10700 5600
Wire Wire Line
	10700 5600 10600 5600
Wire Wire Line
	10900 5700 10700 5700
Wire Wire Line
	10700 5750 10700 5700
Connection ~ 10700 5700
Wire Wire Line
	10700 5700 10600 5700
Wire Wire Line
	10900 5800 10700 5800
Wire Wire Line
	10700 5850 10700 5800
Connection ~ 10700 5800
Wire Wire Line
	10700 5800 10600 5800
Wire Wire Line
	10900 5900 10700 5900
Wire Wire Line
	10700 5950 10700 5900
Connection ~ 10700 5900
Wire Wire Line
	10700 5900 10600 5900
Wire Wire Line
	10900 6000 10700 6000
Wire Wire Line
	10700 6050 10700 6000
Connection ~ 10700 6000
Wire Wire Line
	10700 6000 10600 6000
$Comp
L Connector:Screw_Terminal_01x03 J1
U 1 1 6163BC3C
P 600 1500
F 0 "J1" H 600 1250 50  0000 C CNN
F 1 "Screw_Terminal_01x03" H 250 1750 50  0000 C CNN
F 2 "TerminalBlock:TerminalBlock_bornier-3_P5.08mm" H 600 1500 50  0001 C CNN
F 3 "~" H 600 1500 50  0001 C CNN
	1    600  1500
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR05
U 1 1 6163EA2C
P 800 1400
F 0 "#PWR05" H 800 1150 50  0001 C CNN
F 1 "GND" V 805 1272 50  0000 R CNN
F 2 "" H 800 1400 50  0001 C CNN
F 3 "" H 800 1400 50  0001 C CNN
	1    800  1400
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR06
U 1 1 60AE98BC
P 5850 2850
F 0 "#PWR06" H 5850 2700 50  0001 C CNN
F 1 "+5V" V 5865 2978 50  0000 L CNN
F 2 "" H 5850 2850 50  0001 C CNN
F 3 "" H 5850 2850 50  0001 C CNN
	1    5850 2850
	0    1    1    0   
$EndComp
$Comp
L Interface_CAN_LIN_JGUI:MCP2515-IP U2
U 1 1 60AAF40D
P 3700 1850
F 0 "U2" H 4300 2750 50  0000 C CNN
F 1 "MCP2515-IP" H 4100 2650 50  0000 C CNN
F 2 "Package_DIP:DIP-18_W7.62mm_LongPads" H 3700 950 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/21801e.pdf" H 3800 1050 50  0001 C CNN
	1    3700 1850
	-1   0    0    -1  
$EndComp
Text Label 2850 1850 0    50   ~ 0
INT
Wire Wire Line
	3100 1850 2850 1850
Text Label 6200 2250 2    50   ~ 0
INT
Wire Wire Line
	5850 2250 6200 2250
Wire Wire Line
	5600 5100 6000 5100
Connection ~ 6350 5100
Wire Wire Line
	6350 5100 6650 5100
Wire Wire Line
	6350 4750 6350 5100
$Comp
L Device:R R?
U 1 1 60D269AD
P 6350 4600
AR Path="/60AD64B7/60D269AD" Ref="R?"  Part="1" 
AR Path="/60B86C8D/60D269AD" Ref="R?"  Part="1" 
AR Path="/60C70E12/60D269AD" Ref="R?"  Part="1" 
AR Path="/60D269AD" Ref="R28"  Part="1" 
F 0 "R28" V 6557 4600 50  0000 C CNN
F 1 "4k7" V 6466 4600 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P5.08mm_Vertical" V 6280 4600 50  0001 C CNN
F 3 "~" H 6350 4600 50  0001 C CNN
	1    6350 4600
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6350 4450 6350 4200
Connection ~ 6350 4200
Wire Wire Line
	6350 4200 5650 4200
$Comp
L Device:R R?
U 1 1 60E0EDED
P 6000 4600
AR Path="/60AD64B7/60E0EDED" Ref="R?"  Part="1" 
AR Path="/60B86C8D/60E0EDED" Ref="R?"  Part="1" 
AR Path="/60C70E12/60E0EDED" Ref="R?"  Part="1" 
AR Path="/60E0EDED" Ref="R2"  Part="1" 
F 0 "R2" V 6207 4600 50  0000 C CNN
F 1 "4k7" V 6116 4600 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P5.08mm_Vertical" V 5930 4600 50  0001 C CNN
F 3 "~" H 6000 4600 50  0001 C CNN
	1    6000 4600
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6000 4450 6000 4300
Connection ~ 6000 4300
Wire Wire Line
	6000 4300 5650 4300
Wire Wire Line
	6000 4750 6000 5100
Connection ~ 6000 5100
Wire Wire Line
	6000 5100 6350 5100
$EndSCHEMATC
