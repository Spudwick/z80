EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 4
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
L 74xx:74LS138 U?
U 1 1 5E1D9BF9
P 2550 1550
AR Path="/5D5CBDC9/5E1D9BF9" Ref="U?"  Part="1" 
AR Path="/5E1D9BF9" Ref="U?"  Part="1" 
AR Path="/5E1C888F/5E1D9BF9" Ref="U5"  Part="1" 
F 0 "U5" H 2350 2000 50  0000 C CNN
F 1 "74LS138" H 2750 2000 50  0000 C CNN
F 2 "Package_SO:SOIC-16_3.9x9.9mm_P1.27mm" H 2550 1550 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS138" H 2550 1550 50  0001 C CNN
	1    2550 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 1250 1650 1250
Text Label 1650 1250 0    50   ~ 0
A5
Wire Wire Line
	2050 1350 1650 1350
Text Label 1650 1350 0    50   ~ 0
A6
Wire Wire Line
	2050 1450 1650 1450
Text Label 1650 1450 0    50   ~ 0
A7
Wire Wire Line
	2000 1850 2000 1950
Wire Wire Line
	2000 1950 2050 1950
Wire Wire Line
	2000 1850 2050 1850
$Comp
L power:GND #PWR?
U 1 1 5E1D9C08
P 2550 2250
AR Path="/5E1D9C08" Ref="#PWR?"  Part="1" 
AR Path="/5D5CBDC9/5E1D9C08" Ref="#PWR?"  Part="1" 
AR Path="/5E1C888F/5E1D9C08" Ref="#PWR024"  Part="1" 
F 0 "#PWR024" H 2550 2000 50  0001 C CNN
F 1 "GND" H 2555 2077 50  0000 C CNN
F 2 "" H 2550 2250 50  0001 C CNN
F 3 "" H 2550 2250 50  0001 C CNN
	1    2550 2250
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5E1D9C0E
P 2550 950
AR Path="/5E1D9C0E" Ref="#PWR?"  Part="1" 
AR Path="/5D5CBDC9/5E1D9C0E" Ref="#PWR?"  Part="1" 
AR Path="/5E1C888F/5E1D9C0E" Ref="#PWR023"  Part="1" 
F 0 "#PWR023" H 2550 800 50  0001 C CNN
F 1 "+5V" H 2565 1123 50  0000 C CNN
F 2 "" H 2550 950 50  0001 C CNN
F 3 "" H 2550 950 50  0001 C CNN
	1    2550 950 
	1    0    0    -1  
$EndComp
Text GLabel 3350 1250 2    50   Input ~ 0
-CFCS-
Text GLabel 3350 1350 2    50   Input ~ 0
-IOCS1-
Text GLabel 3350 1450 2    50   Input ~ 0
-IOCS2-
Text GLabel 3350 1550 2    50   Input ~ 0
-IOCS3-
Text GLabel 3350 1650 2    50   Input ~ 0
-IOCS4-
Text GLabel 3350 1750 2    50   Input ~ 0
-IOCS5-
Text GLabel 3350 1850 2    50   Input ~ 0
-IOCS6-
Wire Wire Line
	3050 1250 3350 1250
Wire Wire Line
	3050 1350 3350 1350
Wire Wire Line
	3050 1450 3350 1450
Wire Wire Line
	3050 1550 3350 1550
Wire Wire Line
	3050 1650 3350 1650
Wire Wire Line
	3050 1750 3350 1750
Wire Wire Line
	3050 1850 3350 1850
Text Label 6400 1950 2    50   ~ 0
ROM_DIS
Text GLabel 3750 2950 0    50   Input ~ 0
-RST-
$Comp
L 74xx:74LS32 U?
U 3 1 5E1D9C4E
P 4150 2050
AR Path="/5D5CBDC9/5E1D9C4E" Ref="U?"  Part="3" 
AR Path="/5E1D9C4E" Ref="U?"  Part="3" 
AR Path="/5E1C888F/5E1D9C4E" Ref="U7"  Part="3" 
F 0 "U7" H 4050 2250 50  0000 C CNN
F 1 "74LS32" H 4350 2250 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 4150 2050 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 4150 2050 50  0001 C CNN
	3    4150 2050
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS32 U?
U 3 1 5E1D9C55
P 4150 2600
AR Path="/5D5CBDC9/5E1D9C55" Ref="U?"  Part="3" 
AR Path="/5E1D9C55" Ref="U?"  Part="3" 
AR Path="/5E1C888F/5E1D9C55" Ref="U8"  Part="3" 
F 0 "U8" H 4050 2800 50  0000 C CNN
F 1 "74LS32" H 4350 2800 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 4150 2600 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 4150 2600 50  0001 C CNN
	3    4150 2600
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS08 U?
U 1 1 5E1D9C5B
P 4750 2700
AR Path="/5E1D9C5B" Ref="U?"  Part="1" 
AR Path="/5D5CBDC9/5E1D9C5B" Ref="U?"  Part="1" 
AR Path="/5E1C888F/5E1D9C5B" Ref="U10"  Part="1" 
F 0 "U10" H 4650 2900 50  0000 C CNN
F 1 "74LS08" H 4950 2900 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 4750 2700 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 4750 2700 50  0001 C CNN
	1    4750 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 2950 4300 2950
Wire Wire Line
	4300 2950 4300 2800
Wire Wire Line
	4300 2800 4450 2800
Wire Wire Line
	3050 1950 3150 1950
Wire Wire Line
	5050 2700 5700 2700
Wire Wire Line
	5700 2700 5700 2350
Wire Wire Line
	3850 2500 3150 2500
Wire Wire Line
	3150 2500 3150 1950
Connection ~ 3150 1950
Wire Wire Line
	3150 1950 3850 1950
Connection ~ 7300 2050
Wire Wire Line
	8150 2050 7300 2050
Wire Wire Line
	7950 2650 8150 2650
Wire Wire Line
	7300 2650 7300 2050
Wire Wire Line
	7350 2650 7300 2650
Wire Wire Line
	7150 2050 7300 2050
$Comp
L 74xx:74LS32 U?
U 1 1 5E1D9C71
P 6850 2050
AR Path="/5D5CBDC9/5E1D9C71" Ref="U?"  Part="1" 
AR Path="/5E1D9C71" Ref="U?"  Part="1" 
AR Path="/5E1C888F/5E1D9C71" Ref="U7"  Part="1" 
F 0 "U7" H 6750 2250 50  0000 C CNN
F 1 "74LS32" H 7050 2250 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 6850 2050 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 6850 2050 50  0001 C CNN
	1    6850 2050
	1    0    0    -1  
$EndComp
Text Label 6350 2150 0    50   ~ 0
A15
Text GLabel 9150 2150 2    50   Input ~ 0
-ROMCS-
Text GLabel 9150 2550 2    50   Input ~ 0
-RAMCS-
Wire Wire Line
	8750 2150 9150 2150
Wire Wire Line
	8750 2550 9150 2550
$Comp
L 74xx:74LS04 U?
U 3 1 5E1D9C7C
P 7650 2650
AR Path="/5E1D9C7C" Ref="U?"  Part="3" 
AR Path="/5D5CBDC9/5E1D9C7C" Ref="U?"  Part="4" 
AR Path="/5E1C888F/5E1D9C7C" Ref="U12"  Part="3" 
F 0 "U12" H 7550 2450 50  0000 C CNN
F 1 "74LS04" H 7850 2450 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 7650 2650 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 7650 2650 50  0001 C CNN
	3    7650 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	8100 2350 8100 2450
Connection ~ 8100 2350
Wire Wire Line
	8100 2350 7750 2350
Wire Wire Line
	8100 2450 8150 2450
Wire Wire Line
	8100 2250 8100 2350
Wire Wire Line
	8150 2250 8100 2250
$Comp
L 74xx:74LS32 U?
U 2 1 5E1D9C88
P 8450 2550
AR Path="/5D5CBDC9/5E1D9C88" Ref="U?"  Part="2" 
AR Path="/5E1D9C88" Ref="U?"  Part="2" 
AR Path="/5E1C888F/5E1D9C88" Ref="U7"  Part="2" 
F 0 "U7" H 8350 2350 50  0000 C CNN
F 1 "74LS32" H 8650 2350 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 8450 2550 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 8450 2550 50  0001 C CNN
	2    8450 2550
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS32 U?
U 1 1 5E1D9C8E
P 8450 2150
AR Path="/5D5CBDC9/5E1D9C8E" Ref="U?"  Part="1" 
AR Path="/5E1D9C8E" Ref="U?"  Part="1" 
AR Path="/5E1C888F/5E1D9C8E" Ref="U8"  Part="1" 
F 0 "U8" H 8350 2350 50  0000 C CNN
F 1 "74LS32" H 8650 2350 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 8450 2150 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 8450 2150 50  0001 C CNN
	1    8450 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6350 2150 6550 2150
$Comp
L Connector:TestPoint_Probe TP?
U 1 1 5E1D9C95
P 6500 1500
AR Path="/5D5CBDC9/5E1D9C95" Ref="TP?"  Part="1" 
AR Path="/5E1D9C95" Ref="TP?"  Part="1" 
AR Path="/5E1C888F/5E1D9C95" Ref="TP3"  Part="1" 
F 0 "TP3" H 6653 1601 50  0000 L CNN
F 1 "TestPoint_Probe" H 6653 1510 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.5mm" H 6700 1500 50  0001 C CNN
F 3 "~" H 6700 1500 50  0001 C CNN
	1    6500 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 1950 6500 1950
Wire Wire Line
	6500 1500 6500 1950
Connection ~ 6500 1950
Wire Wire Line
	6500 1950 6550 1950
Text GLabel 1950 1850 0    50   Input ~ 0
-IORQ-
Wire Wire Line
	1950 1850 2000 1850
Connection ~ 2000 1850
Text GLabel 7750 2350 0    50   Input ~ 0
-MREQ-
$Comp
L power:+5V #PWR?
U 1 1 5E1D9CA3
P 1600 1750
AR Path="/5E1D9CA3" Ref="#PWR?"  Part="1" 
AR Path="/5D5CBDC9/5E1D9CA3" Ref="#PWR?"  Part="1" 
AR Path="/5E1C888F/5E1D9CA3" Ref="#PWR020"  Part="1" 
F 0 "#PWR020" H 1600 1600 50  0001 C CNN
F 1 "+5V" H 1615 1923 50  0000 C CNN
F 2 "" H 1600 1750 50  0001 C CNN
F 3 "" H 1600 1750 50  0001 C CNN
	1    1600 1750
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 5E1D9CA9
P 1800 1750
AR Path="/5D5CBDC9/5E1D9CA9" Ref="R?"  Part="1" 
AR Path="/5E1D9CA9" Ref="R?"  Part="1" 
AR Path="/5E1C888F/5E1D9CA9" Ref="R6"  Part="1" 
F 0 "R6" V 1700 1650 50  0000 C CNN
F 1 "1k" V 1700 1850 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 1730 1750 50  0001 C CNN
F 3 "~" H 1800 1750 50  0001 C CNN
	1    1800 1750
	0    1    1    0   
$EndComp
Wire Wire Line
	1650 1750 1600 1750
Wire Wire Line
	1950 1750 2050 1750
Text GLabel 3700 2150 0    50   Input ~ 0
-WR-
Text GLabel 3700 2700 0    50   Input ~ 0
-RD-
Wire Wire Line
	3700 2150 3850 2150
Wire Wire Line
	3850 2700 3700 2700
Text GLabel 6050 2850 0    50   Input ~ 0
A[0..15]
Entry Wire Line
	6350 2150 6250 2250
Wire Bus Line
	6250 2250 6250 2850
Wire Bus Line
	6250 2850 6050 2850
Text Label 6250 2750 2    50   ~ 0
A[0..15]
Text GLabel 7250 4600 0    50   Input ~ 0
-ROMCS-
Text GLabel 4900 6550 2    50   Input ~ 0
A[0..15]
Entry Wire Line
	9700 4350 9600 4450
Entry Wire Line
	9700 4850 9600 4950
Entry Wire Line
	9700 4750 9600 4850
Entry Wire Line
	9700 4650 9600 4750
Entry Wire Line
	9700 4550 9600 4650
Entry Wire Line
	9700 4450 9600 4550
Entry Wire Line
	9700 4250 9600 4350
Entry Wire Line
	9700 4150 9600 4250
Text Label 9600 4250 2    50   ~ 0
A0
Text Label 9600 4350 2    50   ~ 0
A1
Text Label 9600 4450 2    50   ~ 0
A2
Text Label 9600 4550 2    50   ~ 0
A3
Text Label 9600 4650 2    50   ~ 0
A4
Text Label 9600 4750 2    50   ~ 0
A5
Text Label 9600 4850 2    50   ~ 0
A6
Text Label 9600 4950 2    50   ~ 0
A7
Wire Bus Line
	9700 4150 9900 4150
Text GLabel 9900 4150 2    50   Input ~ 0
A[0..15]
$Comp
L power:+5V #PWR?
U 1 1 5E1EAD7E
P 7500 3900
AR Path="/5DFFC633/5E1EAD7E" Ref="#PWR?"  Part="1" 
AR Path="/5E1C888F/5E1EAD7E" Ref="#PWR030"  Part="1" 
F 0 "#PWR030" H 7500 3750 50  0001 C CNN
F 1 "+5V" H 7515 4073 50  0000 C CNN
F 2 "" H 7500 3900 50  0001 C CNN
F 3 "" H 7500 3900 50  0001 C CNN
	1    7500 3900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E1EAD84
P 7500 4400
AR Path="/5DFFC633/5E1EAD84" Ref="#PWR?"  Part="1" 
AR Path="/5E1C888F/5E1EAD84" Ref="#PWR031"  Part="1" 
F 0 "#PWR031" H 7500 4150 50  0001 C CNN
F 1 "GND" H 7500 4250 50  0000 C CNN
F 2 "" H 7500 4400 50  0001 C CNN
F 3 "" H 7500 4400 50  0001 C CNN
	1    7500 4400
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5E1EAD8A
P 7500 4150
AR Path="/5E1EAD8A" Ref="C?"  Part="1" 
AR Path="/5D5CBDC9/5E1EAD8A" Ref="C?"  Part="1" 
AR Path="/5DFFC633/5E1EAD8A" Ref="C?"  Part="1" 
AR Path="/5E1C888F/5E1EAD8A" Ref="C11"  Part="1" 
F 0 "C11" H 7615 4196 50  0000 L CNN
F 1 "0.1u" H 7615 4105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 7538 4000 50  0001 C CNN
F 3 "~" H 7500 4150 50  0001 C CNN
	1    7500 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	7500 4400 7500 4350
Wire Wire Line
	7500 4350 8100 4350
Connection ~ 7500 4350
Wire Wire Line
	8100 4250 7900 4250
Wire Wire Line
	7500 4300 7500 4350
Wire Wire Line
	7500 3950 7900 3950
Wire Wire Line
	7900 3950 7900 4250
Wire Wire Line
	7500 4000 7500 3950
Wire Wire Line
	7500 3950 7500 3900
Connection ~ 7500 3950
Text GLabel 7250 4700 0    50   Input ~ 0
-RD-
Text GLabel 6600 5050 3    50   Input ~ 0
-WR-
Wire Wire Line
	7250 4600 7950 4600
Entry Wire Line
	7600 5750 7700 5650
Entry Wire Line
	7600 5050 7700 4950
Entry Wire Line
	7600 5150 7700 5050
Entry Wire Line
	7600 5250 7700 5150
Entry Wire Line
	7600 5350 7700 5250
Entry Wire Line
	7600 5450 7700 5350
Entry Wire Line
	7600 5550 7700 5450
Entry Wire Line
	7600 5650 7700 5550
Wire Wire Line
	7700 4950 8100 4950
Wire Wire Line
	8100 5050 7700 5050
Wire Wire Line
	7700 5150 8100 5150
Wire Wire Line
	8100 5250 7700 5250
Wire Wire Line
	7700 5350 8100 5350
Wire Wire Line
	8100 5450 7700 5450
Wire Wire Line
	7700 5550 8100 5550
Wire Wire Line
	8100 5650 7700 5650
Text Label 7700 4950 0    50   ~ 0
D0
Text Label 7700 5050 0    50   ~ 0
D1
Text Label 7700 5150 0    50   ~ 0
D2
Text Label 7700 5250 0    50   ~ 0
D3
Text Label 7700 5350 0    50   ~ 0
D4
Text Label 7700 5450 0    50   ~ 0
D5
Text Label 7700 5550 0    50   ~ 0
D6
Text Label 7700 5650 0    50   ~ 0
D7
Wire Bus Line
	7600 5750 7450 5750
Text GLabel 7450 5750 0    50   Input ~ 0
D[0..7]
$Comp
L z80-project:AT28C256-15PU U?
U 1 1 5E1EADB7
P 8600 5000
AR Path="/5DFFC633/5E1EADB7" Ref="U?"  Part="1" 
AR Path="/5E1C888F/5E1EADB7" Ref="U13"  Part="1" 
F 0 "U13" H 8600 6015 50  0000 C CNN
F 1 "AT28C256-15PU" H 8600 5924 50  0000 C CNN
F 2 "Package_DIP:DIP-28_W15.24mm_Socket_LongPads" H 8600 4800 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/1626953.pdf?_ga=2.85835038.641070572.1576682455-1858140526.1572536997" H 8600 4800 50  0001 C CNN
	1    8600 5000
	1    0    0    -1  
$EndComp
Entry Wire Line
	9700 5150 9600 5250
Entry Wire Line
	9700 5550 9600 5650
Entry Wire Line
	9700 5450 9600 5550
Entry Wire Line
	9700 5350 9600 5450
Entry Wire Line
	9700 5250 9600 5350
Entry Wire Line
	9700 5050 9600 5150
Entry Wire Line
	9700 4950 9600 5050
Text Label 9600 5050 2    50   ~ 0
A8
Text Label 9600 5150 2    50   ~ 0
A9
Text Label 9600 5250 2    50   ~ 0
A10
Text Label 9600 5350 2    50   ~ 0
A11
Text Label 9600 5450 2    50   ~ 0
A12
Text Label 9600 5550 2    50   ~ 0
A13
Text Label 9600 5650 2    50   ~ 0
A14
Wire Wire Line
	8050 4750 8100 4750
Wire Wire Line
	8000 4700 8000 4650
Wire Wire Line
	8000 4650 8100 4650
Wire Wire Line
	7250 4700 8000 4700
Wire Wire Line
	7950 4600 7950 4550
Wire Wire Line
	7950 4550 8100 4550
Wire Wire Line
	9100 4250 9600 4250
Wire Wire Line
	9600 4350 9100 4350
Wire Wire Line
	9100 4450 9600 4450
Wire Wire Line
	9600 4550 9100 4550
Wire Wire Line
	9100 4650 9600 4650
Wire Wire Line
	9100 4750 9600 4750
Wire Wire Line
	9600 4850 9100 4850
Wire Wire Line
	9100 4950 9600 4950
Wire Wire Line
	9600 5050 9100 5050
Wire Wire Line
	9100 5150 9600 5150
Wire Wire Line
	9600 5250 9100 5250
Wire Wire Line
	9100 5350 9600 5350
Wire Wire Line
	9600 5450 9100 5450
Wire Wire Line
	9100 5550 9600 5550
Wire Wire Line
	9600 5650 9100 5650
$Comp
L Device:Jumper_NC_Dual JP?
U 1 1 5E1EADE0
P 6600 4800
AR Path="/5DFFC633/5E1EADE0" Ref="JP?"  Part="1" 
AR Path="/5E1C888F/5E1EADE0" Ref="JP1"  Part="1" 
F 0 "JP1" V 6646 4902 50  0000 L CNN
F 1 "Jumper_NC_Dual" V 6555 4902 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical_SMD_Pin1Left" H 6600 4800 50  0001 C CNN
F 3 "~" H 6600 4800 50  0001 C CNN
	1    6600 4800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6700 4800 8050 4800
Wire Wire Line
	8050 4800 8050 4750
$Comp
L Device:R R?
U 1 1 5E1EADE8
P 6600 4400
AR Path="/5E1EADE8" Ref="R?"  Part="1" 
AR Path="/5DFFC633/5E1EADE8" Ref="R?"  Part="1" 
AR Path="/5E1C888F/5E1EADE8" Ref="R11"  Part="1" 
F 0 "R11" H 6530 4354 50  0000 R CNN
F 1 "1k" H 6530 4445 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 6530 4400 50  0001 C CNN
F 3 "~" H 6600 4400 50  0001 C CNN
	1    6600 4400
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5E1EADEE
P 6600 4250
AR Path="/5DFFC633/5E1EADEE" Ref="#PWR?"  Part="1" 
AR Path="/5E1C888F/5E1EADEE" Ref="#PWR029"  Part="1" 
F 0 "#PWR029" H 6600 4100 50  0001 C CNN
F 1 "+5V" H 6615 4423 50  0000 C CNN
F 2 "" H 6600 4250 50  0001 C CNN
F 3 "" H 6600 4250 50  0001 C CNN
	1    6600 4250
	1    0    0    -1  
$EndComp
Text GLabel 1700 5050 0    50   Input ~ 0
-RD-
Text GLabel 1700 5150 0    50   Input ~ 0
-WR-
Text GLabel 4100 4650 2    50   Input ~ 0
-RAMCS-
Wire Bus Line
	4650 6550 4900 6550
Wire Bus Line
	2050 5750 1700 5750
Text Label 2150 6550 0    50   ~ 0
D7
Text Label 2150 6450 0    50   ~ 0
D6
Text Label 2150 6350 0    50   ~ 0
D5
Text Label 2150 6250 0    50   ~ 0
D4
Text Label 2150 6150 0    50   ~ 0
D3
Text Label 2150 6050 0    50   ~ 0
D2
Text Label 2150 5950 0    50   ~ 0
D1
Text Label 2150 5850 0    50   ~ 0
D0
Text GLabel 1700 5750 0    50   Input ~ 0
D[0..7]
Wire Wire Line
	2550 6550 2150 6550
Wire Wire Line
	2150 6450 2550 6450
Wire Wire Line
	2550 6350 2150 6350
Wire Wire Line
	2150 6250 2550 6250
Wire Wire Line
	2550 6150 2150 6150
Wire Wire Line
	2150 6050 2550 6050
Wire Wire Line
	2550 5950 2150 5950
Wire Wire Line
	2150 5850 2550 5850
Entry Wire Line
	2050 6450 2150 6550
Entry Wire Line
	2050 6350 2150 6450
Entry Wire Line
	2050 6250 2150 6350
Entry Wire Line
	2050 6150 2150 6250
Entry Wire Line
	2050 6050 2150 6150
Entry Wire Line
	2050 5950 2150 6050
Entry Wire Line
	2050 5850 2150 5950
Entry Wire Line
	2050 5750 2150 5850
Text Label 4550 6450 2    50   ~ 0
A15
Text Label 4550 6350 2    50   ~ 0
A14
Text Label 4550 6250 2    50   ~ 0
A13
Text Label 4550 6150 2    50   ~ 0
A12
Text Label 4550 6050 2    50   ~ 0
A11
Text Label 4550 5950 2    50   ~ 0
A10
Text Label 4550 5850 2    50   ~ 0
A9
Text Label 4550 5750 2    50   ~ 0
A8
Text Label 4550 5650 2    50   ~ 0
A7
Text Label 4550 5550 2    50   ~ 0
A6
Text Label 4550 5450 2    50   ~ 0
A5
Text Label 4550 5350 2    50   ~ 0
A4
Text Label 4550 5250 2    50   ~ 0
A3
Text Label 4550 5150 2    50   ~ 0
A2
Text Label 4550 5050 2    50   ~ 0
A1
Text Label 4550 4950 2    50   ~ 0
A0
Wire Wire Line
	4550 6350 3550 6350
Wire Wire Line
	3550 6450 4550 6450
Wire Wire Line
	4550 6250 3550 6250
Wire Wire Line
	3550 6150 4550 6150
Wire Wire Line
	4550 6050 3550 6050
Wire Wire Line
	3550 5950 4550 5950
Wire Wire Line
	4550 5850 3550 5850
Wire Wire Line
	3550 5750 4550 5750
Wire Wire Line
	4550 5650 3550 5650
Wire Wire Line
	3550 5550 4550 5550
Wire Wire Line
	3550 5450 4550 5450
Wire Wire Line
	3550 5350 4550 5350
Wire Wire Line
	4550 5250 3550 5250
Wire Wire Line
	3550 5150 4550 5150
Wire Wire Line
	4550 5050 3550 5050
Wire Wire Line
	3550 4950 4550 4950
Entry Wire Line
	4650 5050 4550 4950
Entry Wire Line
	4650 5150 4550 5050
Entry Wire Line
	4650 5250 4550 5150
Entry Wire Line
	4650 5350 4550 5250
Entry Wire Line
	4650 5450 4550 5350
Entry Wire Line
	4650 5550 4550 5450
Entry Wire Line
	4650 5650 4550 5550
Entry Wire Line
	4650 5750 4550 5650
Entry Wire Line
	4650 5850 4550 5750
Entry Wire Line
	4650 5950 4550 5850
Entry Wire Line
	4650 6050 4550 5950
Entry Wire Line
	4650 6150 4550 6050
Entry Wire Line
	4650 6250 4550 6150
Entry Wire Line
	4650 6350 4550 6250
Entry Wire Line
	4650 6450 4550 6350
Entry Wire Line
	4650 6550 4550 6450
Wire Wire Line
	3950 4750 4050 4750
$Comp
L power:+5V #PWR?
U 1 1 5E1EAE47
P 4050 4750
AR Path="/5DFFC633/5E1EAE47" Ref="#PWR?"  Part="1" 
AR Path="/5E1C888F/5E1EAE47" Ref="#PWR025"  Part="1" 
F 0 "#PWR025" H 4050 4600 50  0001 C CNN
F 1 "+5V" V 4065 4878 50  0000 L CNN
F 2 "" H 4050 4750 50  0001 C CNN
F 3 "" H 4050 4750 50  0001 C CNN
	1    4050 4750
	0    1    1    0   
$EndComp
Wire Wire Line
	3550 4750 3650 4750
$Comp
L Device:R R?
U 1 1 5E1EAE4E
P 3800 4750
AR Path="/5E1EAE4E" Ref="R?"  Part="1" 
AR Path="/5DFFC633/5E1EAE4E" Ref="R?"  Part="1" 
AR Path="/5E1C888F/5E1EAE4E" Ref="R7"  Part="1" 
F 0 "R7" V 3700 4650 50  0000 R CNN
F 1 "1k" V 3700 4950 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 3730 4750 50  0001 C CNN
F 3 "~" H 3800 4750 50  0001 C CNN
	1    3800 4750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3550 4650 4100 4650
Wire Wire Line
	1700 5150 2550 5150
Wire Wire Line
	1700 5050 2550 5050
Wire Wire Line
	4050 6550 3950 6550
$Comp
L power:GND #PWR?
U 1 1 5E1EAE58
P 4050 6550
AR Path="/5DFFC633/5E1EAE58" Ref="#PWR?"  Part="1" 
AR Path="/5E1C888F/5E1EAE58" Ref="#PWR026"  Part="1" 
F 0 "#PWR026" H 4050 6300 50  0001 C CNN
F 1 "GND" V 4055 6422 50  0000 R CNN
F 2 "" H 4050 6550 50  0001 C CNN
F 3 "" H 4050 6550 50  0001 C CNN
	1    4050 6550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3650 6550 3550 6550
$Comp
L Device:R R?
U 1 1 5E1EAE5F
P 3800 6550
AR Path="/5E1EAE5F" Ref="R?"  Part="1" 
AR Path="/5DFFC633/5E1EAE5F" Ref="R?"  Part="1" 
AR Path="/5E1C888F/5E1EAE5F" Ref="R8"  Part="1" 
F 0 "R8" V 3700 6450 50  0000 R CNN
F 1 "1k" V 3700 6750 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 3730 6550 50  0001 C CNN
F 3 "~" H 3800 6550 50  0001 C CNN
	1    3800 6550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2350 4350 2350 4650
Wire Wire Line
	1950 4350 1950 4300
Wire Wire Line
	1950 4400 1950 4350
Connection ~ 1950 4350
Wire Wire Line
	1950 4350 2350 4350
Wire Wire Line
	1950 4700 1950 4750
Wire Wire Line
	2550 4650 2350 4650
Wire Wire Line
	1950 4750 2550 4750
Connection ~ 1950 4750
Wire Wire Line
	1950 4800 1950 4750
$Comp
L Device:C C?
U 1 1 5E1EAE6F
P 1950 4550
AR Path="/5E1EAE6F" Ref="C?"  Part="1" 
AR Path="/5D5CBDC9/5E1EAE6F" Ref="C?"  Part="1" 
AR Path="/5DFFC633/5E1EAE6F" Ref="C?"  Part="1" 
AR Path="/5E1C888F/5E1EAE6F" Ref="C10"  Part="1" 
F 0 "C10" H 2065 4596 50  0000 L CNN
F 1 "0.1u" H 2065 4505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 1988 4400 50  0001 C CNN
F 3 "~" H 1950 4550 50  0001 C CNN
	1    1950 4550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E1EAE75
P 1950 4800
AR Path="/5DFFC633/5E1EAE75" Ref="#PWR?"  Part="1" 
AR Path="/5E1C888F/5E1EAE75" Ref="#PWR022"  Part="1" 
F 0 "#PWR022" H 1950 4550 50  0001 C CNN
F 1 "GND" H 1955 4627 50  0000 C CNN
F 2 "" H 1950 4800 50  0001 C CNN
F 3 "" H 1950 4800 50  0001 C CNN
	1    1950 4800
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5E1EAE7B
P 1950 4300
AR Path="/5DFFC633/5E1EAE7B" Ref="#PWR?"  Part="1" 
AR Path="/5E1C888F/5E1EAE7B" Ref="#PWR021"  Part="1" 
F 0 "#PWR021" H 1950 4150 50  0001 C CNN
F 1 "+5V" H 1965 4473 50  0000 C CNN
F 2 "" H 1950 4300 50  0001 C CNN
F 3 "" H 1950 4300 50  0001 C CNN
	1    1950 4300
	1    0    0    -1  
$EndComp
$Comp
L z80-project:CY62128ELL-45SXI U?
U 1 1 5E1EAE81
P 3050 5600
AR Path="/5DFFC633/5E1EAE81" Ref="U?"  Part="1" 
AR Path="/5E1C888F/5E1EAE81" Ref="U6"  Part="1" 
F 0 "U6" H 3050 6815 50  0000 C CNN
F 1 "CY62128ELL-45SXI" H 3050 6724 50  0000 C CNN
F 2 "Package_DIP:DIP-32_W15.24mm_SMDSocket_SmallPads" H 2000 5650 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2309570.pdf?_ga=2.235578370.2047645928.1576695285-1840233356.1559759659&_gac=1.262792062.1575397247.CjwKCAiArJjvBRACEiwA-Wiqq5MibpZdJI_R6zy4imeqELEFzPF1-Iw0ySDUdfSQ748UVeaLbhj8xhoC4WQQAvD_BwE" H 2000 5650 50  0001 C CNN
	1    3050 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 2050 5400 2050
$Comp
L z80-project:74HC107D U9
U 1 1 5E0497F4
P 5700 2050
F 0 "U9" H 5700 2417 50  0000 C CNN
F 1 "74HC107D" H 5700 2326 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 5700 2050 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2030218.pdf?_ga=2.120520335.641070572.1576682455-1858140526.1572536997" H 5700 2050 50  0001 C CNN
	1    5700 2050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E1D9C48
P 5100 2150
AR Path="/5E1D9C48" Ref="#PWR?"  Part="1" 
AR Path="/5D5CBDC9/5E1D9C48" Ref="#PWR?"  Part="1" 
AR Path="/5E1C888F/5E1D9C48" Ref="#PWR027"  Part="1" 
F 0 "#PWR027" H 5100 1900 50  0001 C CNN
F 1 "GND" V 5200 2050 50  0000 C CNN
F 2 "" H 5100 2150 50  0001 C CNN
F 3 "" H 5100 2150 50  0001 C CNN
	1    5100 2150
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5E1D9C42
P 5250 2150
AR Path="/5D5CBDC9/5E1D9C42" Ref="R?"  Part="1" 
AR Path="/5E1D9C42" Ref="R?"  Part="1" 
AR Path="/5E1C888F/5E1D9C42" Ref="R9"  Part="1" 
F 0 "R9" V 5350 2100 50  0000 C CNN
F 1 "1k" V 5350 2250 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 5180 2150 50  0001 C CNN
F 3 "~" H 5250 2150 50  0001 C CNN
	1    5250 2150
	0    1    1    0   
$EndComp
Wire Bus Line
	4650 5050 4650 6550
Wire Bus Line
	2050 5750 2050 6450
Wire Bus Line
	7600 5050 7600 5750
Wire Bus Line
	9700 4150 9700 5550
$Comp
L power:+5V #PWR?
U 1 1 5E1D9C2E
P 5100 1950
AR Path="/5E1D9C2E" Ref="#PWR?"  Part="1" 
AR Path="/5D5CBDC9/5E1D9C2E" Ref="#PWR?"  Part="1" 
AR Path="/5E1C888F/5E1D9C2E" Ref="#PWR028"  Part="1" 
F 0 "#PWR028" H 5100 1800 50  0001 C CNN
F 1 "+5V" H 5115 2123 50  0000 C CNN
F 2 "" H 5100 1950 50  0001 C CNN
F 3 "" H 5100 1950 50  0001 C CNN
	1    5100 1950
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 5E1D9C28
P 5250 1950
AR Path="/5D5CBDC9/5E1D9C28" Ref="R?"  Part="1" 
AR Path="/5E1D9C28" Ref="R?"  Part="1" 
AR Path="/5E1C888F/5E1D9C28" Ref="R10"  Part="1" 
F 0 "R10" V 5350 1950 50  0000 L CNN
F 1 "1k" V 5350 1800 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 5180 1950 50  0001 C CNN
F 3 "~" H 5250 1950 50  0001 C CNN
	1    5250 1950
	0    -1   -1   0   
$EndComp
$EndSCHEMATC
