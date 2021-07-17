EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 4
Title "Relay board controlled by CAN."
Date "2021-06-28"
Rev "1.0"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Transistor_Array:ULN2803A U?
U 1 1 60AE02BD
P 1750 1600
AR Path="/60AE02BD" Ref="U?"  Part="1" 
AR Path="/60AD64B7/60AE02BD" Ref="U7"  Part="1" 
AR Path="/60B83274/60AE02BD" Ref="U?"  Part="1" 
AR Path="/60B86C8D/60AE02BD" Ref="U5"  Part="1" 
AR Path="/60C70E12/60AE02BD" Ref="U6"  Part="1" 
F 0 "U7" H 1750 2167 50  0000 C CNN
F 1 "ULN2803A" H 1750 2076 50  0000 C CNN
F 2 "Package_DIP:DIP-18_W7.62mm_LongPads" H 1800 950 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/uln2803a.pdf" H 1850 1400 50  0001 C CNN
	1    1750 1600
	1    0    0    -1  
$EndComp
$Comp
L Relay_JGUI:ALQ112 K?
U 1 1 60AE02C3
P 5550 1900
AR Path="/60AE02C3" Ref="K?"  Part="1" 
AR Path="/60AD64B7/60AE02C3" Ref="K2"  Part="1" 
AR Path="/60B83274/60AE02C3" Ref="K?"  Part="1" 
AR Path="/60B86C8D/60AE02C3" Ref="K10"  Part="1" 
AR Path="/60C70E12/60AE02C3" Ref="K18"  Part="1" 
F 0 "K2" V 5500 1500 50  0000 C CNN
F 1 "ALQ112" V 5600 1550 50  0000 C CNN
F 2 "Relay_THT_JGUI:Relay_Panasonic_ALQ112" H 6000 1850 50  0001 L CNN
F 3 "https://docs.rs-online.com/6724/0900766b8159833f.pdf" H 5550 1900 50  0001 C CNN
	1    5550 1900
	0    1    1    0   
$EndComp
$Comp
L Relay_JGUI:ALQ112 K?
U 1 1 60AE02C9
P 5550 2800
AR Path="/60AE02C9" Ref="K?"  Part="1" 
AR Path="/60AD64B7/60AE02C9" Ref="K3"  Part="1" 
AR Path="/60B83274/60AE02C9" Ref="K?"  Part="1" 
AR Path="/60B86C8D/60AE02C9" Ref="K11"  Part="1" 
AR Path="/60C70E12/60AE02C9" Ref="K19"  Part="1" 
F 0 "K3" V 5500 2400 50  0000 C CNN
F 1 "ALQ112" V 5600 2450 50  0000 C CNN
F 2 "Relay_THT_JGUI:Relay_Panasonic_ALQ112" H 6000 2750 50  0001 L CNN
F 3 "https://docs.rs-online.com/6724/0900766b8159833f.pdf" H 5550 2800 50  0001 C CNN
	1    5550 2800
	0    1    1    0   
$EndComp
$Comp
L Relay_JGUI:ALQ112 K?
U 1 1 60AE02CF
P 5550 3700
AR Path="/60AE02CF" Ref="K?"  Part="1" 
AR Path="/60AD64B7/60AE02CF" Ref="K4"  Part="1" 
AR Path="/60B83274/60AE02CF" Ref="K?"  Part="1" 
AR Path="/60B86C8D/60AE02CF" Ref="K12"  Part="1" 
AR Path="/60C70E12/60AE02CF" Ref="K20"  Part="1" 
F 0 "K4" V 5500 3300 50  0000 C CNN
F 1 "ALQ112" V 5600 3350 50  0000 C CNN
F 2 "Relay_THT_JGUI:Relay_Panasonic_ALQ112" H 6000 3650 50  0001 L CNN
F 3 "https://docs.rs-online.com/6724/0900766b8159833f.pdf" H 5550 3700 50  0001 C CNN
	1    5550 3700
	0    1    1    0   
$EndComp
$Comp
L Relay_JGUI:ALQ112 K?
U 1 1 60AE079D
P 5550 4600
AR Path="/60AE079D" Ref="K?"  Part="1" 
AR Path="/60AD64B7/60AE079D" Ref="K5"  Part="1" 
AR Path="/60B83274/60AE079D" Ref="K?"  Part="1" 
AR Path="/60B86C8D/60AE079D" Ref="K13"  Part="1" 
AR Path="/60C70E12/60AE079D" Ref="K21"  Part="1" 
F 0 "K5" V 5500 4200 50  0000 C CNN
F 1 "ALQ112" V 5600 4250 50  0000 C CNN
F 2 "Relay_THT_JGUI:Relay_Panasonic_ALQ112" H 6000 4550 50  0001 L CNN
F 3 "https://docs.rs-online.com/6724/0900766b8159833f.pdf" H 5550 4600 50  0001 C CNN
	1    5550 4600
	0    1    1    0   
$EndComp
$Comp
L Relay_JGUI:ALQ112 K?
U 1 1 60AE08E1
P 5550 5500
AR Path="/60AE08E1" Ref="K?"  Part="1" 
AR Path="/60AD64B7/60AE08E1" Ref="K6"  Part="1" 
AR Path="/60B83274/60AE08E1" Ref="K?"  Part="1" 
AR Path="/60B86C8D/60AE08E1" Ref="K14"  Part="1" 
AR Path="/60C70E12/60AE08E1" Ref="K22"  Part="1" 
F 0 "K6" V 5500 5100 50  0000 C CNN
F 1 "ALQ112" V 5600 5150 50  0000 C CNN
F 2 "Relay_THT_JGUI:Relay_Panasonic_ALQ112" H 6000 5450 50  0001 L CNN
F 3 "https://docs.rs-online.com/6724/0900766b8159833f.pdf" H 5550 5500 50  0001 C CNN
	1    5550 5500
	0    1    1    0   
$EndComp
$Comp
L Relay_JGUI:ALQ112 K?
U 1 1 60AE08EB
P 5550 6400
AR Path="/60AE08EB" Ref="K?"  Part="1" 
AR Path="/60AD64B7/60AE08EB" Ref="K7"  Part="1" 
AR Path="/60B83274/60AE08EB" Ref="K?"  Part="1" 
AR Path="/60B86C8D/60AE08EB" Ref="K15"  Part="1" 
AR Path="/60C70E12/60AE08EB" Ref="K23"  Part="1" 
F 0 "K7" V 5500 6000 50  0000 C CNN
F 1 "ALQ112" V 5600 6050 50  0000 C CNN
F 2 "Relay_THT_JGUI:Relay_Panasonic_ALQ112" H 6000 6350 50  0001 L CNN
F 3 "https://docs.rs-online.com/6724/0900766b8159833f.pdf" H 5550 6400 50  0001 C CNN
	1    5550 6400
	0    1    1    0   
$EndComp
$Comp
L Relay_JGUI:ALQ112 K?
U 1 1 60AE08F5
P 5550 7300
AR Path="/60AE08F5" Ref="K?"  Part="1" 
AR Path="/60AD64B7/60AE08F5" Ref="K8"  Part="1" 
AR Path="/60B83274/60AE08F5" Ref="K?"  Part="1" 
AR Path="/60B86C8D/60AE08F5" Ref="K16"  Part="1" 
AR Path="/60C70E12/60AE08F5" Ref="K24"  Part="1" 
F 0 "K8" V 5500 6900 50  0000 C CNN
F 1 "ALQ112" V 5600 6950 50  0000 C CNN
F 2 "Relay_THT_JGUI:Relay_Panasonic_ALQ112" H 6000 7250 50  0001 L CNN
F 3 "https://docs.rs-online.com/6724/0900766b8159833f.pdf" H 5550 7300 50  0001 C CNN
	1    5550 7300
	0    1    1    0   
$EndComp
Text HLabel 1000 1400 0    50   Input ~ 0
Cmd1
Text HLabel 1000 750  0    50   Input ~ 0
+12V
$Comp
L Relay_JGUI:ALQ112 K?
U 1 1 60AE02B7
P 5550 1000
AR Path="/60AE02B7" Ref="K?"  Part="1" 
AR Path="/60AD64B7/60AE02B7" Ref="K1"  Part="1" 
AR Path="/60B83274/60AE02B7" Ref="K?"  Part="1" 
AR Path="/60B86C8D/60AE02B7" Ref="K9"  Part="1" 
AR Path="/60C70E12/60AE02B7" Ref="K17"  Part="1" 
F 0 "K1" V 5500 600 50  0000 C CNN
F 1 "ALQ112" V 5600 650 50  0000 C CNN
F 2 "Relay_THT_JGUI:Relay_Panasonic_ALQ112" H 6000 950 50  0001 L CNN
F 3 "https://docs.rs-online.com/6724/0900766b8159833f.pdf" H 5550 1000 50  0001 C CNN
	1    5550 1000
	0    1    1    0   
$EndComp
Wire Wire Line
	6000 550  6000 800 
Wire Wire Line
	6000 800  5850 800 
Wire Wire Line
	2150 1300 2250 1300
Wire Wire Line
	2250 1300 2250 750 
Wire Wire Line
	2250 550  4750 550 
Wire Wire Line
	2950 7100 3900 7100
Wire Wire Line
	3000 6200 3900 6200
Wire Wire Line
	3200 5300 3900 5300
Wire Wire Line
	3250 4400 3900 4400
Wire Wire Line
	6000 800  6000 1700
Wire Wire Line
	6000 1700 5850 1700
Connection ~ 6000 800 
Wire Wire Line
	6000 1700 6000 2600
Wire Wire Line
	6000 2600 5850 2600
Connection ~ 6000 1700
Wire Wire Line
	6000 2600 6000 3500
Wire Wire Line
	6000 3500 5850 3500
Connection ~ 6000 2600
Wire Wire Line
	6000 3500 6000 4400
Wire Wire Line
	6000 4400 5850 4400
Connection ~ 6000 3500
Wire Wire Line
	6000 4400 6000 5300
Wire Wire Line
	6000 5300 5850 5300
Connection ~ 6000 4400
Wire Wire Line
	6000 5300 6000 6200
Wire Wire Line
	6000 6200 5850 6200
Connection ~ 6000 5300
Wire Wire Line
	6000 6200 6000 7100
Wire Wire Line
	6000 7100 5850 7100
Connection ~ 6000 6200
Wire Wire Line
	1000 750  2250 750 
Connection ~ 2250 750 
Wire Wire Line
	2250 750  2250 550 
Text HLabel 1000 2450 0    50   Input ~ 0
GND
Wire Wire Line
	1000 2450 1750 2450
Wire Wire Line
	1750 2450 1750 2300
Wire Wire Line
	1000 1400 1350 1400
Text HLabel 1000 1500 0    50   Input ~ 0
Cmd2
Text HLabel 1000 1600 0    50   Input ~ 0
Cmd3
Text HLabel 1000 1700 0    50   Input ~ 0
Cmd4
Text HLabel 1000 1800 0    50   Input ~ 0
Cmd5
Text HLabel 1000 1900 0    50   Input ~ 0
Cmd6
Text HLabel 1000 2000 0    50   Input ~ 0
Cmd7
Text HLabel 1000 2100 0    50   Input ~ 0
Cmd8
Wire Wire Line
	1000 1500 1350 1500
Wire Wire Line
	1000 1600 1350 1600
Wire Wire Line
	1000 1700 1350 1700
Wire Wire Line
	1000 1800 1350 1800
Wire Wire Line
	1000 1900 1350 1900
Wire Wire Line
	1000 2000 1350 2000
Wire Wire Line
	1000 2100 1350 2100
Wire Wire Line
	5850 1100 6400 1100
Wire Wire Line
	5850 1300 6400 1300
Wire Wire Line
	5250 1200 5000 1200
Wire Wire Line
	5000 1200 5000 1450
Wire Wire Line
	5000 1450 6400 1450
Text HLabel 6400 1100 2    50   UnSpc ~ 0
NC1
Text HLabel 6400 2900 2    50   UnSpc ~ 0
NC3
Text HLabel 6450 7400 2    50   UnSpc ~ 0
NC8
Text HLabel 6450 6500 2    50   UnSpc ~ 0
NC7
Text HLabel 6450 5600 2    50   UnSpc ~ 0
NC6
Text HLabel 6400 4700 2    50   UnSpc ~ 0
NC5
Text HLabel 6400 3800 2    50   UnSpc ~ 0
NC4
Text HLabel 6400 1300 2    50   UnSpc ~ 0
NO1
Text HLabel 6450 2200 2    50   UnSpc ~ 0
NO2
Text HLabel 6400 3100 2    50   UnSpc ~ 0
NO3
Text HLabel 6400 4000 2    50   UnSpc ~ 0
NO4
Text HLabel 6400 4900 2    50   UnSpc ~ 0
NO5
Text HLabel 6450 5800 2    50   UnSpc ~ 0
NO6
Text HLabel 6450 6700 2    50   UnSpc ~ 0
NO7
Text HLabel 6450 7600 2    50   UnSpc ~ 0
NO8
Text HLabel 6450 2000 2    50   UnSpc ~ 0
NC2
Text HLabel 6400 1450 2    50   UnSpc ~ 0
COM1
Text HLabel 6450 2350 2    50   UnSpc ~ 0
COM2
Text HLabel 6400 3250 2    50   UnSpc ~ 0
COM3
Text HLabel 6400 4150 2    50   UnSpc ~ 0
COM4
Text HLabel 6400 5050 2    50   UnSpc ~ 0
COM5
Text HLabel 6450 5950 2    50   UnSpc ~ 0
COM6
Text HLabel 6450 6850 2    50   UnSpc ~ 0
COM7
Text HLabel 6450 7750 2    50   UnSpc ~ 0
COM8
Wire Wire Line
	5850 2000 6450 2000
Wire Wire Line
	5850 2200 6450 2200
Wire Wire Line
	5250 2100 5000 2100
Wire Wire Line
	5000 2100 5000 2350
Wire Wire Line
	5000 2350 6450 2350
Wire Wire Line
	5850 2900 6400 2900
Wire Wire Line
	5850 3100 6400 3100
Wire Wire Line
	6400 3250 5050 3250
Wire Wire Line
	5050 3250 5050 3000
Wire Wire Line
	5050 3000 5250 3000
Wire Wire Line
	6400 3800 5850 3800
Wire Wire Line
	6400 4000 5850 4000
Wire Wire Line
	6400 4150 5050 4150
Wire Wire Line
	5050 4150 5050 3900
Wire Wire Line
	5050 3900 5250 3900
Wire Wire Line
	6400 4700 5850 4700
Wire Wire Line
	6400 4900 5850 4900
Wire Wire Line
	6400 5050 5050 5050
Wire Wire Line
	5050 5050 5050 4800
Wire Wire Line
	5050 4800 5250 4800
Wire Wire Line
	6450 5800 5850 5800
Wire Wire Line
	5850 5600 6450 5600
Wire Wire Line
	6450 5950 5050 5950
Wire Wire Line
	5050 5950 5050 5700
Wire Wire Line
	5050 5700 5250 5700
Wire Wire Line
	6450 6850 5100 6850
Wire Wire Line
	5100 6850 5100 6600
Wire Wire Line
	5100 6600 5250 6600
Wire Wire Line
	5850 6700 6450 6700
Wire Wire Line
	6450 6500 5850 6500
Wire Wire Line
	6450 7400 5850 7400
Wire Wire Line
	6450 7600 5850 7600
Wire Wire Line
	6450 7750 5100 7750
Wire Wire Line
	5100 7750 5100 7500
Wire Wire Line
	5100 7500 5250 7500
$Comp
L Device:LED D1
U 1 1 60E0B3CE
P 4450 700
AR Path="/60AD64B7/60E0B3CE" Ref="D1"  Part="1" 
AR Path="/60B86C8D/60E0B3CE" Ref="D9"  Part="1" 
AR Path="/60C70E12/60E0B3CE" Ref="D17"  Part="1" 
F 0 "D1" H 4443 917 50  0000 C CNN
F 1 "LED" H 4443 826 50  0000 C CNN
F 2 "LED_THT:LED_D3.0mm" H 4450 700 50  0001 C CNN
F 3 "~" H 4450 700 50  0001 C CNN
	1    4450 700 
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 60E0DC26
P 4150 700
AR Path="/60AD64B7/60E0DC26" Ref="R3"  Part="1" 
AR Path="/60B86C8D/60E0DC26" Ref="R11"  Part="1" 
AR Path="/60C70E12/60E0DC26" Ref="R19"  Part="1" 
F 0 "R3" V 4357 700 50  0000 C CNN
F 1 "1k1" V 4266 700 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P5.08mm_Vertical" V 4080 700 50  0001 C CNN
F 3 "~" H 4150 700 50  0001 C CNN
	1    4150 700 
	0    1    -1   0   
$EndComp
Wire Wire Line
	4600 700  4750 700 
Wire Wire Line
	4750 700  4750 550 
Connection ~ 4750 550 
Wire Wire Line
	4750 550  6000 550 
Wire Wire Line
	4000 700  3850 700 
Wire Wire Line
	3850 700  3850 800 
Connection ~ 3850 800 
Wire Wire Line
	3850 800  5250 800 
$Comp
L Device:LED D2
U 1 1 60E39B0E
P 4450 1600
AR Path="/60AD64B7/60E39B0E" Ref="D2"  Part="1" 
AR Path="/60B86C8D/60E39B0E" Ref="D10"  Part="1" 
AR Path="/60C70E12/60E39B0E" Ref="D18"  Part="1" 
F 0 "D2" H 4443 1817 50  0000 C CNN
F 1 "LED" H 4443 1726 50  0000 C CNN
F 2 "LED_THT:LED_D3.0mm" H 4450 1600 50  0001 C CNN
F 3 "~" H 4450 1600 50  0001 C CNN
	1    4450 1600
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 60E39D22
P 4150 1600
AR Path="/60AD64B7/60E39D22" Ref="R4"  Part="1" 
AR Path="/60B86C8D/60E39D22" Ref="R12"  Part="1" 
AR Path="/60C70E12/60E39D22" Ref="R20"  Part="1" 
F 0 "R4" V 4357 1600 50  0000 C CNN
F 1 "1k1" V 4266 1600 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P5.08mm_Vertical" V 4080 1600 50  0001 C CNN
F 3 "~" H 4150 1600 50  0001 C CNN
	1    4150 1600
	0    1    -1   0   
$EndComp
Wire Wire Line
	4750 700  4750 1600
Wire Wire Line
	4750 1600 4600 1600
Connection ~ 4750 700 
Wire Wire Line
	4000 1600 3900 1600
Wire Wire Line
	3900 1600 3900 1700
Connection ~ 3900 1700
Wire Wire Line
	3900 1700 5250 1700
$Comp
L Device:LED D3
U 1 1 60E4C933
P 4450 2500
AR Path="/60AD64B7/60E4C933" Ref="D3"  Part="1" 
AR Path="/60B86C8D/60E4C933" Ref="D11"  Part="1" 
AR Path="/60C70E12/60E4C933" Ref="D19"  Part="1" 
F 0 "D3" H 4443 2717 50  0000 C CNN
F 1 "LED" H 4443 2626 50  0000 C CNN
F 2 "LED_THT:LED_D3.0mm" H 4450 2500 50  0001 C CNN
F 3 "~" H 4450 2500 50  0001 C CNN
	1    4450 2500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 60E4CB6F
P 4150 2500
AR Path="/60AD64B7/60E4CB6F" Ref="R5"  Part="1" 
AR Path="/60B86C8D/60E4CB6F" Ref="R13"  Part="1" 
AR Path="/60C70E12/60E4CB6F" Ref="R21"  Part="1" 
F 0 "R5" V 4357 2500 50  0000 C CNN
F 1 "1k1" V 4266 2500 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P5.08mm_Vertical" V 4080 2500 50  0001 C CNN
F 3 "~" H 4150 2500 50  0001 C CNN
	1    4150 2500
	0    1    -1   0   
$EndComp
$Comp
L Device:LED D4
U 1 1 60E50D1C
P 4450 3400
AR Path="/60AD64B7/60E50D1C" Ref="D4"  Part="1" 
AR Path="/60B86C8D/60E50D1C" Ref="D12"  Part="1" 
AR Path="/60C70E12/60E50D1C" Ref="D20"  Part="1" 
F 0 "D4" H 4443 3617 50  0000 C CNN
F 1 "LED" H 4443 3526 50  0000 C CNN
F 2 "LED_THT:LED_D3.0mm" H 4450 3400 50  0001 C CNN
F 3 "~" H 4450 3400 50  0001 C CNN
	1    4450 3400
	1    0    0    -1  
$EndComp
$Comp
L Device:R R6
U 1 1 60E50F80
P 4150 3400
AR Path="/60AD64B7/60E50F80" Ref="R6"  Part="1" 
AR Path="/60B86C8D/60E50F80" Ref="R14"  Part="1" 
AR Path="/60C70E12/60E50F80" Ref="R22"  Part="1" 
F 0 "R6" V 4357 3400 50  0000 C CNN
F 1 "1k1" V 4266 3400 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P5.08mm_Vertical" V 4080 3400 50  0001 C CNN
F 3 "~" H 4150 3400 50  0001 C CNN
	1    4150 3400
	0    1    -1   0   
$EndComp
$Comp
L Device:LED D5
U 1 1 60E550A5
P 4450 4300
AR Path="/60AD64B7/60E550A5" Ref="D5"  Part="1" 
AR Path="/60B86C8D/60E550A5" Ref="D13"  Part="1" 
AR Path="/60C70E12/60E550A5" Ref="D21"  Part="1" 
F 0 "D5" H 4443 4517 50  0000 C CNN
F 1 "LED" H 4443 4426 50  0000 C CNN
F 2 "LED_THT:LED_D3.0mm" H 4450 4300 50  0001 C CNN
F 3 "~" H 4450 4300 50  0001 C CNN
	1    4450 4300
	1    0    0    -1  
$EndComp
$Comp
L Device:R R7
U 1 1 60E55331
P 4150 4300
AR Path="/60AD64B7/60E55331" Ref="R7"  Part="1" 
AR Path="/60B86C8D/60E55331" Ref="R15"  Part="1" 
AR Path="/60C70E12/60E55331" Ref="R23"  Part="1" 
F 0 "R7" V 4357 4300 50  0000 C CNN
F 1 "1k1" V 4266 4300 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P5.08mm_Vertical" V 4080 4300 50  0001 C CNN
F 3 "~" H 4150 4300 50  0001 C CNN
	1    4150 4300
	0    1    -1   0   
$EndComp
$Comp
L Device:LED D6
U 1 1 60E591CC
P 4450 5200
AR Path="/60AD64B7/60E591CC" Ref="D6"  Part="1" 
AR Path="/60B86C8D/60E591CC" Ref="D14"  Part="1" 
AR Path="/60C70E12/60E591CC" Ref="D22"  Part="1" 
F 0 "D6" H 4443 5417 50  0000 C CNN
F 1 "LED" H 4443 5326 50  0000 C CNN
F 2 "LED_THT:LED_D3.0mm" H 4450 5200 50  0001 C CNN
F 3 "~" H 4450 5200 50  0001 C CNN
	1    4450 5200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R8
U 1 1 60E59480
P 4150 5200
AR Path="/60AD64B7/60E59480" Ref="R8"  Part="1" 
AR Path="/60B86C8D/60E59480" Ref="R16"  Part="1" 
AR Path="/60C70E12/60E59480" Ref="R24"  Part="1" 
F 0 "R8" V 4357 5200 50  0000 C CNN
F 1 "1k1" V 4266 5200 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P5.08mm_Vertical" V 4080 5200 50  0001 C CNN
F 3 "~" H 4150 5200 50  0001 C CNN
	1    4150 5200
	0    1    -1   0   
$EndComp
$Comp
L Device:LED D7
U 1 1 60E5D76B
P 4450 6100
AR Path="/60AD64B7/60E5D76B" Ref="D7"  Part="1" 
AR Path="/60B86C8D/60E5D76B" Ref="D15"  Part="1" 
AR Path="/60C70E12/60E5D76B" Ref="D23"  Part="1" 
F 0 "D7" H 4443 6317 50  0000 C CNN
F 1 "LED" H 4443 6226 50  0000 C CNN
F 2 "LED_THT:LED_D3.0mm" H 4450 6100 50  0001 C CNN
F 3 "~" H 4450 6100 50  0001 C CNN
	1    4450 6100
	1    0    0    -1  
$EndComp
$Comp
L Device:R R9
U 1 1 60E5DA47
P 4150 6100
AR Path="/60AD64B7/60E5DA47" Ref="R9"  Part="1" 
AR Path="/60B86C8D/60E5DA47" Ref="R17"  Part="1" 
AR Path="/60C70E12/60E5DA47" Ref="R25"  Part="1" 
F 0 "R9" V 4357 6100 50  0000 C CNN
F 1 "1k1" V 4266 6100 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P5.08mm_Vertical" V 4080 6100 50  0001 C CNN
F 3 "~" H 4150 6100 50  0001 C CNN
	1    4150 6100
	0    1    -1   0   
$EndComp
$Comp
L Device:LED D8
U 1 1 60E62340
P 4450 7000
AR Path="/60AD64B7/60E62340" Ref="D8"  Part="1" 
AR Path="/60B86C8D/60E62340" Ref="D16"  Part="1" 
AR Path="/60C70E12/60E62340" Ref="D24"  Part="1" 
F 0 "D8" H 4443 7217 50  0000 C CNN
F 1 "LED" H 4443 7126 50  0000 C CNN
F 2 "LED_THT:LED_D3.0mm" H 4450 7000 50  0001 C CNN
F 3 "~" H 4450 7000 50  0001 C CNN
	1    4450 7000
	1    0    0    -1  
$EndComp
$Comp
L Device:R R10
U 1 1 60E62644
P 4150 7000
AR Path="/60AD64B7/60E62644" Ref="R10"  Part="1" 
AR Path="/60B86C8D/60E62644" Ref="R18"  Part="1" 
AR Path="/60C70E12/60E62644" Ref="R26"  Part="1" 
F 0 "R10" V 4357 7000 50  0000 C CNN
F 1 "1k1" V 4266 7000 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P5.08mm_Vertical" V 4080 7000 50  0001 C CNN
F 3 "~" H 4150 7000 50  0001 C CNN
	1    4150 7000
	0    1    -1   0   
$EndComp
Wire Wire Line
	4600 2500 4750 2500
Wire Wire Line
	4750 2500 4750 1600
Connection ~ 4750 1600
Wire Wire Line
	4000 2500 3900 2500
Wire Wire Line
	3900 2500 3900 2600
Connection ~ 3900 2600
Wire Wire Line
	3900 2600 5250 2600
Wire Wire Line
	4600 3400 4750 3400
Wire Wire Line
	4750 3400 4750 2500
Connection ~ 4750 2500
Wire Wire Line
	3900 3500 3900 3400
Wire Wire Line
	3900 3400 4000 3400
Connection ~ 3900 3500
Wire Wire Line
	3900 3500 5250 3500
Wire Wire Line
	4750 3400 4750 4300
Wire Wire Line
	4750 4300 4600 4300
Connection ~ 4750 3400
Wire Wire Line
	3900 4400 3900 4300
Wire Wire Line
	3900 4300 4000 4300
Connection ~ 3900 4400
Wire Wire Line
	3900 4400 5250 4400
Wire Wire Line
	4750 4300 4750 5200
Wire Wire Line
	4750 5200 4600 5200
Connection ~ 4750 4300
Wire Wire Line
	4000 5200 3900 5200
Wire Wire Line
	3900 5200 3900 5300
Connection ~ 3900 5300
Wire Wire Line
	3900 5300 5250 5300
Wire Wire Line
	4750 5200 4750 6100
Wire Wire Line
	4750 6100 4600 6100
Connection ~ 4750 5200
Wire Wire Line
	4000 6100 3900 6100
Wire Wire Line
	3900 6100 3900 6200
Connection ~ 3900 6200
Wire Wire Line
	3900 6200 5250 6200
Wire Wire Line
	4000 7000 3900 7000
Wire Wire Line
	3900 7000 3900 7100
Connection ~ 3900 7100
Wire Wire Line
	3900 7100 5250 7100
Wire Wire Line
	4750 6100 4750 7000
Wire Wire Line
	4750 7000 4600 7000
Connection ~ 4750 6100
Wire Wire Line
	3550 800  3850 800 
Wire Wire Line
	2150 2000 3550 2000
Wire Wire Line
	3550 2000 3550 800 
Wire Wire Line
	2150 2100 3600 2100
Wire Wire Line
	3600 2100 3600 1700
Wire Wire Line
	3600 1700 3900 1700
Wire Wire Line
	2150 1900 3400 1900
Wire Wire Line
	3400 1900 3400 3500
Wire Wire Line
	3400 3500 3900 3500
Wire Wire Line
	2150 1800 3450 1800
Wire Wire Line
	3450 1800 3450 2600
Wire Wire Line
	3450 2600 3900 2600
Wire Wire Line
	3250 4400 3250 1600
Wire Wire Line
	3250 1600 2150 1600
Wire Wire Line
	3200 1700 2150 1700
Wire Wire Line
	3200 1700 3200 5300
Wire Wire Line
	2950 7100 2950 1500
Wire Wire Line
	2950 1500 2150 1500
Wire Wire Line
	2150 1400 3000 1400
Wire Wire Line
	3000 1400 3000 6200
$EndSCHEMATC
