EESchema Schematic File Version 4
LIBS:full-schematic-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 3
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
L CPU:Z80CPU U?
U 1 1 5D5CF86D
P 3200 5350
AR Path="/5D5CF86D" Ref="U?"  Part="1" 
AR Path="/5D5CBDC9/5D5CF86D" Ref="U3"  Part="1" 
F 0 "U3" H 2900 6750 50  0000 C CNN
F 1 "Z80CPU" H 3450 6750 50  0000 C CNN
F 2 "" H 3200 5750 50  0001 C CNN
F 3 "www.zilog.com/manage_directlink.php?filepath=docs/z80/um0080" H 3200 5750 50  0001 C CNN
	1    3200 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 4150 2150 4150
Wire Wire Line
	2500 4450 2150 4450
$Comp
L power:GND #PWR?
U 1 1 5D5CF877
P 3200 6850
AR Path="/5D5CF877" Ref="#PWR?"  Part="1" 
AR Path="/5D5CBDC9/5D5CF877" Ref="#PWR016"  Part="1" 
F 0 "#PWR016" H 3200 6600 50  0001 C CNN
F 1 "GND" H 3205 6677 50  0000 C CNN
F 2 "" H 3200 6850 50  0001 C CNN
F 3 "" H 3200 6850 50  0001 C CNN
	1    3200 6850
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5D5CF87D
P 3200 3850
AR Path="/5D5CF87D" Ref="#PWR?"  Part="1" 
AR Path="/5D5CBDC9/5D5CF87D" Ref="#PWR07"  Part="1" 
F 0 "#PWR07" H 3200 3700 50  0001 C CNN
F 1 "+5V" H 3215 4023 50  0000 C CNN
F 2 "" H 3200 3850 50  0001 C CNN
F 3 "" H 3200 3850 50  0001 C CNN
	1    3200 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 5850 2150 5850
Text Label 2150 5850 0    50   ~ 0
-RD-
Wire Wire Line
	2500 5950 2150 5950
Text Label 2150 5950 0    50   ~ 0
-WR-
Wire Wire Line
	2500 6050 2150 6050
Text Label 2150 6050 0    50   ~ 0
-MREQ-
Wire Wire Line
	2500 6150 2150 6150
Text Label 2150 6150 0    50   ~ 0
-IORQ-
$Comp
L 74xx:74LS32 U4
U 3 1 5D5F2415
P 9300 4800
F 0 "U4" H 9200 5000 50  0000 C CNN
F 1 "74LS32" H 9500 5000 50  0000 C CNN
F 2 "" H 9300 4800 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 9300 4800 50  0001 C CNN
	3    9300 4800
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS32 U4
U 4 1 5D5F241B
P 9300 5200
F 0 "U4" H 9200 5000 50  0000 C CNN
F 1 "74LS32" H 9500 5000 50  0000 C CNN
F 2 "" H 9300 5200 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 9300 5200 50  0001 C CNN
	4    9300 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	9000 4900 8950 4900
Wire Wire Line
	8950 4900 8950 5000
Wire Wire Line
	8950 5100 9000 5100
Wire Wire Line
	8950 5000 8600 5000
Connection ~ 8950 5000
Wire Wire Line
	8950 5000 8950 5100
Wire Wire Line
	9000 4700 8600 4700
Wire Wire Line
	9000 5300 8600 5300
Text Label 8600 4700 0    50   ~ 0
-RD-
Text Label 8600 5300 0    50   ~ 0
-WR-
Text Label 8600 5000 0    50   ~ 0
-IORQ-
Text Label 10000 4800 2    50   ~ 0
-IORD-
Text Label 10000 5200 2    50   ~ 0
-IOWR-
$Comp
L Device:C C?
U 1 1 5D71E1B4
P 2700 3450
AR Path="/5D71E1B4" Ref="C?"  Part="1" 
AR Path="/5D5CBDC9/5D71E1B4" Ref="C5"  Part="1" 
F 0 "C5" H 2815 3496 50  0000 L CNN
F 1 "0.1u" H 2815 3405 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 2738 3300 50  0001 C CNN
F 3 "~" H 2700 3450 50  0001 C CNN
	1    2700 3450
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5D71EB36
P 2700 3300
AR Path="/5D71EB36" Ref="#PWR?"  Part="1" 
AR Path="/5D5CBDC9/5D71EB36" Ref="#PWR019"  Part="1" 
F 0 "#PWR019" H 2700 3150 50  0001 C CNN
F 1 "+5V" H 2715 3473 50  0000 C CNN
F 2 "" H 2700 3300 50  0001 C CNN
F 3 "" H 2700 3300 50  0001 C CNN
	1    2700 3300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5D72197C
P 2700 3600
AR Path="/5D72197C" Ref="#PWR?"  Part="1" 
AR Path="/5D5CBDC9/5D72197C" Ref="#PWR020"  Part="1" 
F 0 "#PWR020" H 2700 3350 50  0001 C CNN
F 1 "GND" H 2705 3427 50  0000 C CNN
F 2 "" H 2700 3600 50  0001 C CNN
F 3 "" H 2700 3600 50  0001 C CNN
	1    2700 3600
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS32 U6
U 3 1 5D77AE4F
P 1950 1700
F 0 "U6" H 1850 1900 50  0000 C CNN
F 1 "74LS32" H 2150 1900 50  0000 C CNN
F 2 "" H 1950 1700 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 1950 1700 50  0001 C CNN
	3    1950 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 1600 1250 1600
Text Label 1250 1600 0    50   ~ 0
-IORQ-
Wire Wire Line
	1650 1800 1250 1800
Text Label 1250 1800 0    50   ~ 0
-M1-
Wire Wire Line
	9600 5200 10000 5200
Wire Wire Line
	9600 4800 10000 4800
$Comp
L 74xx:74LS138 U8
U 1 1 5D7D442D
P 3350 1500
F 0 "U8" H 3150 1950 50  0000 C CNN
F 1 "74LS138" H 3550 1950 50  0000 C CNN
F 2 "" H 3350 1500 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS138" H 3350 1500 50  0001 C CNN
	1    3350 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 1200 2450 1200
Text Label 2450 1200 0    50   ~ 0
A5
Wire Wire Line
	2850 1300 2450 1300
Text Label 2450 1300 0    50   ~ 0
A6
Wire Wire Line
	2850 1400 2450 1400
Text Label 2450 1400 0    50   ~ 0
A7
Text Label 2450 1800 0    50   ~ 0
-IORQ-
Wire Wire Line
	2450 1800 2800 1800
Wire Wire Line
	2800 1800 2800 1900
Wire Wire Line
	2800 1900 2850 1900
Connection ~ 2800 1800
Wire Wire Line
	2800 1800 2850 1800
$Comp
L power:GND #PWR?
U 1 1 5D8146F7
P 3350 2200
AR Path="/5D8146F7" Ref="#PWR?"  Part="1" 
AR Path="/5D5CBDC9/5D8146F7" Ref="#PWR021"  Part="1" 
F 0 "#PWR021" H 3350 1950 50  0001 C CNN
F 1 "GND" H 3355 2027 50  0000 C CNN
F 2 "" H 3350 2200 50  0001 C CNN
F 3 "" H 3350 2200 50  0001 C CNN
	1    3350 2200
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5D81840F
P 3350 900
AR Path="/5D81840F" Ref="#PWR?"  Part="1" 
AR Path="/5D5CBDC9/5D81840F" Ref="#PWR018"  Part="1" 
F 0 "#PWR018" H 3350 750 50  0001 C CNN
F 1 "+5V" H 3365 1073 50  0000 C CNN
F 2 "" H 3350 900 50  0001 C CNN
F 3 "" H 3350 900 50  0001 C CNN
	1    3350 900 
	1    0    0    -1  
$EndComp
Wire Wire Line
	2250 1700 2300 1700
Wire Wire Line
	2300 1700 2300 2200
Wire Wire Line
	2300 2200 2500 2200
Connection ~ 2300 1700
Wire Wire Line
	2300 1700 2850 1700
Text GLabel 2500 2200 2    50   Input ~ 0
-INT_LD-
Text GLabel 4150 1200 2    50   Input ~ 0
-IOCS0-
Text GLabel 4150 1300 2    50   Input ~ 0
-IOCS1-
Text GLabel 4150 1400 2    50   Input ~ 0
-IOCS2-
Text GLabel 4150 1500 2    50   Input ~ 0
-IOCS3-
Text GLabel 4150 1600 2    50   Input ~ 0
-IOCS4-
Text GLabel 4150 1700 2    50   Input ~ 0
-IOCS5-
Text GLabel 4150 1800 2    50   Input ~ 0
-IOCS6-
Wire Wire Line
	3900 4150 4250 4150
Entry Wire Line
	4250 4150 4350 4050
Text Label 4250 4150 2    50   ~ 0
A0
Wire Wire Line
	3900 4250 4250 4250
Entry Wire Line
	4250 4250 4350 4150
Text Label 4250 4250 2    50   ~ 0
A1
Wire Wire Line
	3900 4350 4250 4350
Entry Wire Line
	4250 4350 4350 4250
Text Label 4250 4350 2    50   ~ 0
A2
Wire Wire Line
	3900 4450 4250 4450
Entry Wire Line
	4250 4450 4350 4350
Text Label 4250 4450 2    50   ~ 0
A3
Wire Wire Line
	3900 4550 4250 4550
Entry Wire Line
	4250 4550 4350 4450
Text Label 4250 4550 2    50   ~ 0
A4
Wire Wire Line
	3900 4650 4250 4650
Entry Wire Line
	4250 4650 4350 4550
Text Label 4250 4650 2    50   ~ 0
A5
Wire Wire Line
	3900 4750 4250 4750
Entry Wire Line
	4250 4750 4350 4650
Text Label 4250 4750 2    50   ~ 0
A6
Wire Wire Line
	3900 4850 4250 4850
Entry Wire Line
	4250 4850 4350 4750
Text Label 4250 4850 2    50   ~ 0
A7
Wire Wire Line
	3900 4950 4250 4950
Entry Wire Line
	4250 4950 4350 4850
Text Label 4250 4950 2    50   ~ 0
A8
Wire Wire Line
	3900 5050 4250 5050
Entry Wire Line
	4250 5050 4350 4950
Text Label 4250 5050 2    50   ~ 0
A9
Wire Wire Line
	3900 5150 4250 5150
Entry Wire Line
	4250 5150 4350 5050
Text Label 4250 5150 2    50   ~ 0
A10
Wire Wire Line
	3900 5250 4250 5250
Entry Wire Line
	4250 5250 4350 5150
Text Label 4250 5250 2    50   ~ 0
A11
Wire Wire Line
	3900 5350 4250 5350
Entry Wire Line
	4250 5350 4350 5250
Text Label 4250 5350 2    50   ~ 0
A12
Wire Wire Line
	3900 5450 4250 5450
Entry Wire Line
	4250 5450 4350 5350
Text Label 4250 5450 2    50   ~ 0
A13
Wire Wire Line
	3900 5550 4250 5550
Entry Wire Line
	4250 5550 4350 5450
Text Label 4250 5550 2    50   ~ 0
A14
Wire Wire Line
	3900 5650 4250 5650
Entry Wire Line
	4250 5650 4350 5550
Text Label 4250 5650 2    50   ~ 0
A15
Wire Wire Line
	3900 5850 4250 5850
Entry Wire Line
	4250 5850 4350 5750
Text Label 4250 5850 2    50   ~ 0
D0
Wire Wire Line
	3900 5950 4250 5950
Entry Wire Line
	4250 5950 4350 5850
Text Label 4250 5950 2    50   ~ 0
D1
Wire Wire Line
	3900 6050 4250 6050
Entry Wire Line
	4250 6050 4350 5950
Text Label 4250 6050 2    50   ~ 0
D2
Wire Wire Line
	3900 6150 4250 6150
Entry Wire Line
	4250 6150 4350 6050
Text Label 4250 6150 2    50   ~ 0
D3
Wire Wire Line
	3900 6250 4250 6250
Entry Wire Line
	4250 6250 4350 6150
Text Label 4250 6250 2    50   ~ 0
D4
Wire Wire Line
	3900 6350 4250 6350
Entry Wire Line
	4250 6350 4350 6250
Text Label 4250 6350 2    50   ~ 0
D5
Wire Wire Line
	3900 6450 4250 6450
Entry Wire Line
	4250 6450 4350 6350
Text Label 4250 6450 2    50   ~ 0
D6
Wire Wire Line
	3900 6550 4250 6550
Entry Wire Line
	4250 6550 4350 6450
Text Label 4250 6550 2    50   ~ 0
D7
Text Label 4400 4050 0    50   ~ 0
A[0..15]
Text Label 4400 5750 0    50   ~ 0
D[0..7]
Wire Bus Line
	4350 5750 4800 5750
Wire Bus Line
	4350 4050 4800 4050
Text GLabel 4800 4050 2    50   Input ~ 0
A[0..15]
Text GLabel 4800 5750 2    50   Input ~ 0
D[0..7]
Wire Wire Line
	2500 5150 2150 5150
Text Label 2150 5150 0    50   ~ 0
-M1-
Text GLabel 10000 4800 2    50   Input ~ 0
-IORD-
Text GLabel 10000 5200 2    50   Input ~ 0
-IOWR-
Text GLabel 2150 4150 0    50   Input ~ 0
-RST-
Text GLabel 2150 4450 0    50   Input ~ 0
SYS_CLK
$Comp
L 74xx:74LS109 U11
U 1 1 5DA67A73
P 6500 2000
F 0 "U11" H 6300 2250 50  0000 C CNN
F 1 "74LS109" H 6700 2250 50  0000 C CNN
F 2 "" H 6500 2000 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS109" H 6500 2000 50  0001 C CNN
	1    6500 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 1200 4150 1200
Wire Wire Line
	3850 1300 4150 1300
Wire Wire Line
	3850 1400 4150 1400
Wire Wire Line
	3850 1500 4150 1500
Wire Wire Line
	3850 1600 4150 1600
Wire Wire Line
	3850 1700 4150 1700
Wire Wire Line
	3850 1800 4150 1800
$Comp
L Device:R R8
U 1 1 5DAB3F56
P 6500 1450
F 0 "R8" H 6570 1496 50  0000 L CNN
F 1 "1k" H 6570 1405 50  0000 L CNN
F 2 "" V 6430 1450 50  0001 C CNN
F 3 "~" H 6500 1450 50  0001 C CNN
	1    6500 1450
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5DAB5CCF
P 6500 1300
AR Path="/5DAB5CCF" Ref="#PWR?"  Part="1" 
AR Path="/5D5CBDC9/5DAB5CCF" Ref="#PWR023"  Part="1" 
F 0 "#PWR023" H 6500 1150 50  0001 C CNN
F 1 "+5V" H 6515 1473 50  0000 C CNN
F 2 "" H 6500 1300 50  0001 C CNN
F 3 "" H 6500 1300 50  0001 C CNN
	1    6500 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6800 1900 7350 1900
Text Label 7200 1900 2    50   ~ 0
ROMDis
Text GLabel 10000 4250 2    50   Input ~ 0
-MWR-
Wire Wire Line
	9600 3850 10000 3850
Wire Wire Line
	9600 4250 10000 4250
Text Label 10000 4250 2    50   ~ 0
-MWR-
Text Label 10000 3850 2    50   ~ 0
-MRD-
Text Label 8600 4350 0    50   ~ 0
-WR-
Text Label 8600 3750 0    50   ~ 0
-RD-
Text Label 8600 4050 0    50   ~ 0
-MREQ-
Wire Wire Line
	9000 4350 8600 4350
Wire Wire Line
	9000 3750 8600 3750
Wire Wire Line
	8950 4050 8950 4150
Connection ~ 8950 4050
Wire Wire Line
	8950 4050 8600 4050
Wire Wire Line
	8950 4150 9000 4150
Wire Wire Line
	8950 3950 8950 4050
Wire Wire Line
	9000 3950 8950 3950
$Comp
L 74xx:74LS32 U4
U 2 1 5D5DFF3D
P 9300 4250
F 0 "U4" H 9200 4050 50  0000 C CNN
F 1 "74LS32" H 9500 4050 50  0000 C CNN
F 2 "" H 9300 4250 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 9300 4250 50  0001 C CNN
	2    9300 4250
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS32 U4
U 1 1 5D5DD172
P 9300 3850
F 0 "U4" H 9200 4050 50  0000 C CNN
F 1 "74LS32" H 9500 4050 50  0000 C CNN
F 2 "" H 9300 3850 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 9300 3850 50  0001 C CNN
	1    9300 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 1600 6500 1650
Wire Wire Line
	6500 1650 6150 1650
Wire Wire Line
	6150 1650 6150 1900
Wire Wire Line
	6150 1900 6200 1900
Connection ~ 6500 1650
Wire Wire Line
	6500 1650 6500 1700
Text GLabel 4550 2900 0    50   Input ~ 0
-RST-
$Comp
L 74xx:74LS04 U?
U 4 1 5DAC3947
P 5550 2000
AR Path="/5DAC3947" Ref="U?"  Part="3" 
AR Path="/5D5CBDC9/5DAC3947" Ref="U10"  Part="4" 
F 0 "U10" H 5450 2200 50  0000 C CNN
F 1 "74LS04" H 5750 2200 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 5550 2000 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 5550 2000 50  0001 C CNN
	4    5550 2000
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 5DD2B742
P 6050 2100
F 0 "R4" V 6150 2050 50  0000 C CNN
F 1 "1k" V 6150 2200 50  0000 C CNN
F 2 "" V 5980 2100 50  0001 C CNN
F 3 "~" H 6050 2100 50  0001 C CNN
	1    6050 2100
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DD2BB9D
P 5900 2100
AR Path="/5DD2BB9D" Ref="#PWR?"  Part="1" 
AR Path="/5D5CBDC9/5DD2BB9D" Ref="#PWR022"  Part="1" 
F 0 "#PWR022" H 5900 1850 50  0001 C CNN
F 1 "GND" V 6000 2000 50  0000 C CNN
F 2 "" H 5900 2100 50  0001 C CNN
F 3 "" H 5900 2100 50  0001 C CNN
	1    5900 2100
	0    1    1    0   
$EndComp
$Comp
L 74xx:74LS32 U9
U 3 1 5DD5244D
P 4950 2000
F 0 "U9" H 4850 2200 50  0000 C CNN
F 1 "74LS32" H 5150 2200 50  0000 C CNN
F 2 "" H 4950 2000 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 4950 2000 50  0001 C CNN
	3    4950 2000
	1    0    0    -1  
$EndComp
Text Label 4250 2100 0    50   ~ 0
-IOWR-
Wire Wire Line
	5850 2000 6200 2000
Wire Wire Line
	4650 2100 4250 2100
$Comp
L 74xx:74LS32 U7
U 3 1 5E08F806
P 4950 2550
F 0 "U7" H 4850 2750 50  0000 C CNN
F 1 "74LS32" H 5150 2750 50  0000 C CNN
F 2 "" H 4950 2550 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 4950 2550 50  0001 C CNN
	3    4950 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 2650 4250 2650
$Comp
L 74xx:74LS08 U?
U 1 1 5E0B18F4
P 5550 2650
AR Path="/5E0B18F4" Ref="U?"  Part="1" 
AR Path="/5D5CBDC9/5E0B18F4" Ref="U12"  Part="1" 
F 0 "U12" H 5450 2850 50  0000 C CNN
F 1 "74LS08" H 5750 2850 50  0000 C CNN
F 2 "" H 5550 2650 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS08" H 5550 2650 50  0001 C CNN
	1    5550 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 2900 5100 2900
Wire Wire Line
	5100 2900 5100 2750
Wire Wire Line
	5100 2750 5250 2750
Text Label 4250 2650 0    50   ~ 0
-IORD-
Wire Wire Line
	3850 1900 3950 1900
Wire Wire Line
	5850 2650 6500 2650
Wire Wire Line
	6500 2650 6500 2300
Wire Wire Line
	4650 2450 3950 2450
Wire Wire Line
	3950 2450 3950 1900
Connection ~ 3950 1900
Wire Wire Line
	3950 1900 4650 1900
Connection ~ 8100 2000
Wire Wire Line
	8950 2000 8100 2000
Wire Wire Line
	8750 2600 8950 2600
Wire Wire Line
	8100 2600 8100 2000
Wire Wire Line
	8150 2600 8100 2600
Wire Wire Line
	7950 2000 8100 2000
$Comp
L 74xx:74LS32 U9
U 1 1 5DFDE1CF
P 7650 2000
F 0 "U9" H 7550 2200 50  0000 C CNN
F 1 "74LS32" H 7850 2200 50  0000 C CNN
F 2 "" H 7650 2000 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 7650 2000 50  0001 C CNN
	1    7650 2000
	1    0    0    -1  
$EndComp
Text Label 7150 2100 0    50   ~ 0
A15
Text GLabel 9950 2100 2    50   Input ~ 0
-ROMCS-
Text GLabel 9950 2500 2    50   Input ~ 0
-RAMCS-
Wire Wire Line
	9550 2100 9950 2100
Wire Wire Line
	9550 2500 9950 2500
Text GLabel 10000 3850 2    50   Input ~ 0
-MRD-
Text Label 9950 2500 2    50   ~ 0
-RAMCS-
Text Label 9950 2100 2    50   ~ 0
-ROMCS-
$Comp
L 74xx:74LS04 U?
U 4 1 5D67E263
P 8450 2600
AR Path="/5D67E263" Ref="U?"  Part="3" 
AR Path="/5D5CBDC9/5D67E263" Ref="U2"  Part="4" 
F 0 "U2" H 8350 2800 50  0000 C CNN
F 1 "74LS04" H 8650 2800 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 8450 2600 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 8450 2600 50  0001 C CNN
	4    8450 2600
	1    0    0    -1  
$EndComp
Text Label 8550 2300 0    50   ~ 0
-MREQ-
Wire Wire Line
	8900 2300 8900 2400
Connection ~ 8900 2300
Wire Wire Line
	8900 2300 8550 2300
Wire Wire Line
	8900 2400 8950 2400
Wire Wire Line
	8900 2200 8900 2300
Wire Wire Line
	8950 2200 8900 2200
$Comp
L 74xx:74LS32 U6
U 2 1 5D678AD1
P 9250 2500
F 0 "U6" H 9150 2300 50  0000 C CNN
F 1 "74LS32" H 9450 2300 50  0000 C CNN
F 2 "" H 9250 2500 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 9250 2500 50  0001 C CNN
	2    9250 2500
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS32 U6
U 1 1 5D678ACB
P 9250 2100
F 0 "U6" H 9150 2300 50  0000 C CNN
F 1 "74LS32" H 9450 2300 50  0000 C CNN
F 2 "" H 9250 2100 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 9250 2100 50  0001 C CNN
	1    9250 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 2100 7350 2100
Wire Bus Line
	4350 5750 4350 6450
Wire Bus Line
	4350 4050 4350 5550
$EndSCHEMATC
