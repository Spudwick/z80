EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
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
L z80-project:PCF8584 U1
U 1 1 5E0FF1AA
P 4800 4250
F 0 "U1" H 4800 5115 50  0000 C CNN
F 1 "PCF8584" H 4800 5024 50  0000 C CNN
F 2 "Package_SO:SOIC-20W_7.5x12.8mm_P1.27mm" H 5500 3550 50  0001 C CNN
F 3 "https://www.nxp.com/docs/en/data-sheet/PCF8584.pdf?" H 5500 3550 50  0001 C CNN
	1    4800 4250
	1    0    0    -1  
$EndComp
$Comp
L Oscillator:CXO_DIP8 X1
U 1 1 5E100596
P 4800 2450
F 0 "X1" H 5050 2600 50  0000 L CNN
F 1 "8MHz" H 5050 2300 50  0000 L CNN
F 2 "Oscillator:Oscillator_DIP-8" H 5250 2100 50  0001 C CNN
F 3 "http://cdn-reichelt.de/documents/datenblatt/B400/OSZI.pdf" H 4700 2450 50  0001 C CNN
	1    4800 2450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 5E1040AB
P 4800 2850
F 0 "#PWR04" H 4800 2600 50  0001 C CNN
F 1 "GND" H 4805 2677 50  0000 C CNN
F 2 "" H 4800 2850 50  0001 C CNN
F 3 "" H 4800 2850 50  0001 C CNN
	1    4800 2850
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR03
U 1 1 5E10470F
P 4800 2050
F 0 "#PWR03" H 4800 1900 50  0001 C CNN
F 1 "+5V" H 4815 2223 50  0000 C CNN
F 2 "" H 4800 2050 50  0001 C CNN
F 3 "" H 4800 2050 50  0001 C CNN
	1    4800 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 2450 5700 2450
Wire Wire Line
	5700 2450 5700 3650
Wire Wire Line
	5700 3650 5300 3650
Wire Wire Line
	4800 2050 4800 2100
Wire Wire Line
	4800 2100 4400 2100
Wire Wire Line
	4400 2100 4400 2450
Wire Wire Line
	4400 2450 4500 2450
Connection ~ 4800 2100
Wire Wire Line
	4800 2100 4800 2150
Wire Wire Line
	4800 2750 4800 2800
$Comp
L Device:C C2
U 1 1 5E105B53
P 4050 2450
F 0 "C2" H 4165 2496 50  0000 L CNN
F 1 "0.1u" H 4165 2405 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4088 2300 50  0001 C CNN
F 3 "~" H 4050 2450 50  0001 C CNN
	1    4050 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 2300 4050 2100
Wire Wire Line
	4050 2100 4400 2100
Connection ~ 4400 2100
Wire Wire Line
	4800 2800 4050 2800
Connection ~ 4800 2800
Wire Wire Line
	4800 2800 4800 2850
Wire Wire Line
	4050 2600 4050 2800
$Comp
L Device:C C1
U 1 1 5E1090D9
P 3800 3550
F 0 "C1" H 3915 3596 50  0000 L CNN
F 1 "0.1u" H 3915 3505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3838 3400 50  0001 C CNN
F 3 "~" H 3800 3550 50  0001 C CNN
	1    3800 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4300 3750 3800 3750
Wire Wire Line
	3800 3750 3800 3700
Wire Wire Line
	3800 3400 3800 3350
Wire Wire Line
	3800 3350 4200 3350
Wire Wire Line
	4200 3350 4200 3650
Wire Wire Line
	4200 3650 4300 3650
$Comp
L power:GND #PWR02
U 1 1 5E10A9D6
P 3800 3750
F 0 "#PWR02" H 3800 3500 50  0001 C CNN
F 1 "GND" H 3650 3650 50  0000 C CNN
F 2 "" H 3800 3750 50  0001 C CNN
F 3 "" H 3800 3750 50  0001 C CNN
	1    3800 3750
	1    0    0    -1  
$EndComp
Connection ~ 3800 3750
$Comp
L power:+5V #PWR01
U 1 1 5E10AEDB
P 3800 3350
F 0 "#PWR01" H 3800 3200 50  0001 C CNN
F 1 "+5V" H 3815 3523 50  0000 C CNN
F 2 "" H 3800 3350 50  0001 C CNN
F 3 "" H 3800 3350 50  0001 C CNN
	1    3800 3350
	1    0    0    -1  
$EndComp
Connection ~ 3800 3350
Wire Wire Line
	5300 3850 5700 3850
Text GLabel 5700 3850 2    50   Input ~ 0
D0
Wire Wire Line
	5300 3950 5700 3950
Text GLabel 5700 3950 2    50   Input ~ 0
D1
Wire Wire Line
	5300 4050 5700 4050
Text GLabel 5700 4050 2    50   Input ~ 0
D2
Wire Wire Line
	5300 4150 5700 4150
Text GLabel 5700 4150 2    50   Input ~ 0
D3
Wire Wire Line
	5300 4250 5700 4250
Text GLabel 5700 4250 2    50   Input ~ 0
D4
Wire Wire Line
	5300 4350 5700 4350
Text GLabel 5700 4350 2    50   Input ~ 0
D5
Wire Wire Line
	5300 4450 5700 4450
Text GLabel 5700 4450 2    50   Input ~ 0
D6
Wire Wire Line
	5300 4550 5700 4550
Text GLabel 5700 4550 2    50   Input ~ 0
D7
Text GLabel 6600 4100 0    50   Input ~ 0
D0
Text GLabel 6600 4200 0    50   Input ~ 0
D1
Text GLabel 6600 4300 0    50   Input ~ 0
D2
Text GLabel 6600 3600 0    50   Input ~ 0
D3
Text GLabel 6600 3500 0    50   Input ~ 0
D4
Text GLabel 6600 3400 0    50   Input ~ 0
D5
Text GLabel 6600 3300 0    50   Input ~ 0
D6
Text GLabel 6600 3200 0    50   Input ~ 0
D7
Wire Wire Line
	5300 4750 5700 4750
Text GLabel 5700 4750 2    50   Input ~ 0
SCL
Wire Wire Line
	5300 4850 5700 4850
Text GLabel 5700 4850 2    50   Input ~ 0
SDA
Wire Wire Line
	4300 4250 3900 4250
Wire Wire Line
	4300 4150 3900 4150
Wire Wire Line
	4300 4350 3900 4350
Text GLabel 3900 4350 0    50   Input ~ 0
-WR-
Text GLabel 3900 4250 0    50   Input ~ 0
-RD-
Text GLabel 3900 4150 0    50   Input ~ 0
-CS-
Wire Wire Line
	4300 4550 3900 4550
Text GLabel 3900 4550 0    50   Input ~ 0
A0
Wire Wire Line
	4300 4750 3900 4750
Text GLabel 3900 4750 0    50   Input ~ 0
-INT-
Wire Wire Line
	4300 4850 3900 4850
Text GLabel 3900 4850 0    50   Input ~ 0
-IACK-
Wire Wire Line
	4300 3950 3900 3950
Text GLabel 3900 3950 0    50   Input ~ 0
-RST-
$Comp
L power:+5V #PWR05
U 1 1 5E132456
P 6600 2700
F 0 "#PWR05" H 6600 2550 50  0001 C CNN
F 1 "+5V" H 6615 2873 50  0000 C CNN
F 2 "" H 6600 2700 50  0001 C CNN
F 3 "" H 6600 2700 50  0001 C CNN
	1    6600 2700
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR07
U 1 1 5E133876
P 7900 2700
F 0 "#PWR07" H 7900 2550 50  0001 C CNN
F 1 "+5V" H 7915 2873 50  0000 C CNN
F 2 "" H 7900 2700 50  0001 C CNN
F 3 "" H 7900 2700 50  0001 C CNN
	1    7900 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	7900 4400 7500 4400
Wire Wire Line
	7000 4400 6600 4400
$Comp
L power:GND #PWR06
U 1 1 5E135A76
P 6600 4400
F 0 "#PWR06" H 6600 4150 50  0001 C CNN
F 1 "GND" H 6605 4227 50  0000 C CNN
F 2 "" H 6600 4400 50  0001 C CNN
F 3 "" H 6600 4400 50  0001 C CNN
	1    6600 4400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR08
U 1 1 5E135FB1
P 7900 4400
F 0 "#PWR08" H 7900 4150 50  0001 C CNN
F 1 "GND" H 7905 4227 50  0000 C CNN
F 2 "" H 7900 4400 50  0001 C CNN
F 3 "" H 7900 4400 50  0001 C CNN
	1    7900 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6650 5500 7050 5500
Wire Wire Line
	6650 5400 7050 5400
Text GLabel 6650 5500 0    50   Input ~ 0
SCL
Text GLabel 6650 5400 0    50   Input ~ 0
SDA
Text GLabel 6600 2800 0    50   Input ~ 0
-RST-
Text GLabel 6600 2900 0    50   Input ~ 0
-WR-
Text GLabel 6600 3100 0    50   Input ~ 0
-RD-
Text GLabel 6600 3000 0    50   Input ~ 0
-CS-
Text GLabel 6600 4000 0    50   Input ~ 0
A0
Text GLabel 6600 3900 0    50   Input ~ 0
-INT-
Text GLabel 6600 3800 0    50   Input ~ 0
-IACK-
Wire Wire Line
	7900 2700 7500 2700
Wire Wire Line
	7000 3000 6600 3000
Wire Wire Line
	7000 2900 6600 2900
Wire Wire Line
	7000 2800 6600 2800
Wire Wire Line
	7000 4200 6600 4200
Wire Wire Line
	7000 4100 6600 4100
Wire Wire Line
	7000 4000 6600 4000
Wire Wire Line
	7000 3900 6600 3900
Wire Wire Line
	7000 3600 6600 3600
Wire Wire Line
	7000 2700 6600 2700
Wire Wire Line
	7000 3500 6600 3500
Wire Wire Line
	7000 3400 6600 3400
Wire Wire Line
	7000 3200 6600 3200
Wire Wire Line
	7000 3100 6600 3100
Wire Wire Line
	7000 3300 6600 3300
Wire Wire Line
	7000 3800 6600 3800
$Comp
L Connector_Generic:Conn_02x18_Odd_Even J1
U 1 1 5E1401B5
P 7200 3500
F 0 "J1" H 7250 4517 50  0000 C CNN
F 1 "Conn_02x18_Odd_Even" H 7250 4426 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x18_P2.54mm_Vertical" H 7200 3500 50  0001 C CNN
F 3 "~" H 7200 3500 50  0001 C CNN
	1    7200 3500
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x08 J2
U 1 1 5DFD613A
P 7250 5100
F 0 "J2" H 7330 5092 50  0000 L CNN
F 1 "Conn_01x08" H 7330 5001 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x08_P2.54mm_Vertical" H 7250 5100 50  0001 C CNN
F 3 "~" H 7250 5100 50  0001 C CNN
	1    7250 5100
	1    0    0    -1  
$EndComp
Text Label 5700 3150 1    50   ~ 0
CLK
Wire Wire Line
	7000 4300 6600 4300
$EndSCHEMATC