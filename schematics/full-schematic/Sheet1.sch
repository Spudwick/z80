EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 4
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
L Regulator_Linear:L7805 U?
U 1 1 5E0BE254
P 3500 1100
AR Path="/5E0BE254" Ref="U?"  Part="1" 
AR Path="/5E0480C4/5E0BE254" Ref="U?"  Part="1" 
AR Path="/5E0AB4D6/5E0BE254" Ref="U3"  Part="1" 
F 0 "U3" H 3500 1342 50  0000 C CNN
F 1 "L7805" H 3500 1251 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:TO-263-2" H 3525 950 50  0001 L CIN
F 3 "http://www.st.com/content/ccc/resource/technical/document/datasheet/41/4f/b3/b0/12/d4/47/88/CD00000444.pdf/files/CD00000444.pdf/jcr:content/translations/en.CD00000444.pdf" H 3500 1050 50  0001 C CNN
	1    3500 1100
	1    0    0    -1  
$EndComp
$Comp
L power:+VDC #PWR?
U 1 1 5E0BE25A
P 1550 1100
AR Path="/5E0BE25A" Ref="#PWR?"  Part="1" 
AR Path="/5E0480C4/5E0BE25A" Ref="#PWR?"  Part="1" 
AR Path="/5E0AB4D6/5E0BE25A" Ref="#PWR03"  Part="1" 
F 0 "#PWR03" H 1550 1000 50  0001 C CNN
F 1 "+VDC" V 1550 1329 50  0000 L CNN
F 2 "" H 1550 1100 50  0001 C CNN
F 3 "" H 1550 1100 50  0001 C CNN
	1    1550 1100
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5E0BE260
P 5050 1100
AR Path="/5E0BE260" Ref="#PWR?"  Part="1" 
AR Path="/5E0480C4/5E0BE260" Ref="#PWR?"  Part="1" 
AR Path="/5E0AB4D6/5E0BE260" Ref="#PWR015"  Part="1" 
F 0 "#PWR015" H 5050 950 50  0001 C CNN
F 1 "+5V" V 5065 1228 50  0000 L CNN
F 2 "" H 5050 1100 50  0001 C CNN
F 3 "" H 5050 1100 50  0001 C CNN
	1    5050 1100
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E0BE266
P 3500 1500
AR Path="/5E0BE266" Ref="#PWR?"  Part="1" 
AR Path="/5E0480C4/5E0BE266" Ref="#PWR?"  Part="1" 
AR Path="/5E0AB4D6/5E0BE266" Ref="#PWR013"  Part="1" 
F 0 "#PWR013" H 3500 1250 50  0001 C CNN
F 1 "GND" H 3505 1327 50  0000 C CNN
F 2 "" H 3500 1500 50  0001 C CNN
F 3 "" H 3500 1500 50  0001 C CNN
	1    3500 1500
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C?
U 1 1 5E0BE26C
P 3000 1300
AR Path="/5E0BE26C" Ref="C?"  Part="1" 
AR Path="/5E0480C4/5E0BE26C" Ref="C?"  Part="1" 
AR Path="/5E0AB4D6/5E0BE26C" Ref="C5"  Part="1" 
F 0 "C5" H 3118 1346 50  0000 L CNN
F 1 "1m" H 3118 1255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3038 1150 50  0001 C CNN
F 3 "~" H 3000 1300 50  0001 C CNN
	1    3000 1300
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C?
U 1 1 5E0BE272
P 3950 1300
AR Path="/5E0BE272" Ref="C?"  Part="1" 
AR Path="/5E0480C4/5E0BE272" Ref="C?"  Part="1" 
AR Path="/5E0AB4D6/5E0BE272" Ref="C6"  Part="1" 
F 0 "C6" H 4068 1346 50  0000 L CNN
F 1 "1m" H 4068 1255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3988 1150 50  0001 C CNN
F 3 "~" H 3950 1300 50  0001 C CNN
	1    3950 1300
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5E0BE278
P 2600 1300
AR Path="/5E0BE278" Ref="C?"  Part="1" 
AR Path="/5E0480C4/5E0BE278" Ref="C?"  Part="1" 
AR Path="/5E0AB4D6/5E0BE278" Ref="C3"  Part="1" 
F 0 "C3" H 2715 1346 50  0000 L CNN
F 1 "0.1u" H 2715 1255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 2638 1150 50  0001 C CNN
F 3 "~" H 2600 1300 50  0001 C CNN
	1    2600 1300
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5E0BE27E
P 4350 1300
AR Path="/5E0BE27E" Ref="C?"  Part="1" 
AR Path="/5E0480C4/5E0BE27E" Ref="C?"  Part="1" 
AR Path="/5E0AB4D6/5E0BE27E" Ref="C7"  Part="1" 
F 0 "C7" H 4465 1346 50  0000 L CNN
F 1 "0.1u" H 4465 1255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4388 1150 50  0001 C CNN
F 3 "~" H 4350 1300 50  0001 C CNN
	1    4350 1300
	1    0    0    -1  
$EndComp
$Comp
L Device:D_Schottky D?
U 1 1 5E0BE284
P 1800 1100
AR Path="/5E0BE284" Ref="D?"  Part="1" 
AR Path="/5E0480C4/5E0BE284" Ref="D?"  Part="1" 
AR Path="/5E0AB4D6/5E0BE284" Ref="D1"  Part="1" 
F 0 "D1" H 1800 884 50  0000 C CNN
F 1 "D_Schottky" H 1800 975 50  0000 C CNN
F 2 "Diode_SMD:D_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 1800 1100 50  0001 C CNN
F 3 "~" H 1800 1100 50  0001 C CNN
	1    1800 1100
	-1   0    0    1   
$EndComp
Wire Wire Line
	2450 1100 2600 1100
Wire Wire Line
	1550 1100 1650 1100
Wire Wire Line
	2600 1150 2600 1100
Connection ~ 2600 1100
Wire Wire Line
	2600 1100 3000 1100
Wire Wire Line
	3000 1150 3000 1100
Connection ~ 3000 1100
Wire Wire Line
	3000 1100 3200 1100
Wire Wire Line
	2600 1450 2600 1500
Wire Wire Line
	4350 1500 4350 1450
Wire Wire Line
	3950 1450 3950 1500
Connection ~ 3950 1500
Wire Wire Line
	3950 1500 4350 1500
Wire Wire Line
	3000 1450 3000 1500
Connection ~ 3000 1500
Wire Wire Line
	3000 1500 3500 1500
Wire Wire Line
	3800 1100 3950 1100
Wire Wire Line
	4350 1150 4350 1100
Connection ~ 4350 1100
Wire Wire Line
	3950 1150 3950 1100
Connection ~ 3950 1100
Wire Wire Line
	3950 1100 4350 1100
Wire Wire Line
	3500 1400 3500 1500
Connection ~ 3500 1500
Wire Wire Line
	3500 1500 3950 1500
Wire Wire Line
	4350 1100 4750 1100
$Comp
L Device:R R?
U 1 1 5E0BE2A4
P 4750 1300
AR Path="/5E0BE2A4" Ref="R?"  Part="1" 
AR Path="/5E0480C4/5E0BE2A4" Ref="R?"  Part="1" 
AR Path="/5E0AB4D6/5E0BE2A4" Ref="R4"  Part="1" 
F 0 "R4" H 4820 1346 50  0000 L CNN
F 1 "330" H 4820 1255 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 4680 1300 50  0001 C CNN
F 3 "~" H 4750 1300 50  0001 C CNN
	1    4750 1300
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D?
U 1 1 5E0BE2AA
P 4750 1600
AR Path="/5E0BE2AA" Ref="D?"  Part="1" 
AR Path="/5E0480C4/5E0BE2AA" Ref="D?"  Part="1" 
AR Path="/5E0AB4D6/5E0BE2AA" Ref="D2"  Part="1" 
F 0 "D2" V 4789 1483 50  0000 R CNN
F 1 "LED" V 4698 1483 50  0000 R CNN
F 2 "LED_SMD:LED_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4750 1600 50  0001 C CNN
F 3 "~" H 4750 1600 50  0001 C CNN
	1    4750 1600
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E0BE2B0
P 4750 1750
AR Path="/5E0BE2B0" Ref="#PWR?"  Part="1" 
AR Path="/5E0480C4/5E0BE2B0" Ref="#PWR?"  Part="1" 
AR Path="/5E0AB4D6/5E0BE2B0" Ref="#PWR014"  Part="1" 
F 0 "#PWR014" H 4750 1500 50  0001 C CNN
F 1 "GND" H 4755 1577 50  0000 C CNN
F 2 "" H 4750 1750 50  0001 C CNN
F 3 "" H 4750 1750 50  0001 C CNN
	1    4750 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 1100 4750 1150
Wire Wire Line
	5050 1100 4750 1100
Connection ~ 4750 1100
$Comp
L Switch:SW_SPST SW?
U 1 1 5E0BE2B9
P 2250 1100
AR Path="/5E0BE2B9" Ref="SW?"  Part="1" 
AR Path="/5E0480C4/5E0BE2B9" Ref="SW?"  Part="1" 
AR Path="/5E0AB4D6/5E0BE2B9" Ref="SW2"  Part="1" 
F 0 "SW2" H 2250 1335 50  0000 C CNN
F 1 "SW_SPST" H 2250 1244 50  0000 C CNN
F 2 "Button_Switch_THT:SW_E-Switch_EG1224_SPDT_Angled" H 2250 1100 50  0001 C CNN
F 3 "~" H 2250 1100 50  0001 C CNN
	1    2250 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 1100 2050 1100
$Comp
L power:GND #PWR?
U 1 1 5E0BE2C6
P 2600 6500
AR Path="/5E0BE2C6" Ref="#PWR?"  Part="1" 
AR Path="/5E0480C4/5E0BE2C6" Ref="#PWR?"  Part="1" 
AR Path="/5E0AB4D6/5E0BE2C6" Ref="#PWR09"  Part="1" 
F 0 "#PWR09" H 2600 6250 50  0001 C CNN
F 1 "GND" H 2605 6327 50  0000 C CNN
F 2 "" H 2600 6500 50  0001 C CNN
F 3 "" H 2600 6500 50  0001 C CNN
	1    2600 6500
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5E0BE2CD
P 2200 6250
AR Path="/5E0BE2CD" Ref="C?"  Part="1" 
AR Path="/5E0480C4/5E0BE2CD" Ref="C?"  Part="1" 
AR Path="/5E0AB4D6/5E0BE2CD" Ref="C2"  Part="1" 
F 0 "C2" H 2050 6350 50  0000 L CNN
F 1 "0.1u" H 2000 6150 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 2238 6100 50  0001 C CNN
F 3 "~" H 2200 6250 50  0001 C CNN
	1    2200 6250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 6100 2200 6100
Connection ~ 2200 6100
Wire Wire Line
	2200 6400 2200 6450
Wire Wire Line
	2200 6450 2600 6450
Wire Wire Line
	2600 6450 2600 6400
Connection ~ 2600 6450
Wire Wire Line
	2600 6450 2600 6500
$Comp
L power:VDD #PWR?
U 1 1 5E0BE2E7
P 1450 1500
AR Path="/5E0BE2E7" Ref="#PWR?"  Part="1" 
AR Path="/5E0480C4/5E0BE2E7" Ref="#PWR?"  Part="1" 
AR Path="/5E0AB4D6/5E0BE2E7" Ref="#PWR02"  Part="1" 
F 0 "#PWR02" H 1450 1350 50  0001 C CNN
F 1 "VDD" V 1468 1627 50  0000 L CNN
F 2 "" H 1450 1500 50  0001 C CNN
F 3 "" H 1450 1500 50  0001 C CNN
	1    1450 1500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1450 1500 2600 1500
Connection ~ 2600 1500
Wire Wire Line
	2600 1500 3000 1500
Wire Wire Line
	2200 5750 2200 6100
Wire Wire Line
	2200 5750 2600 5750
Wire Wire Line
	2600 5750 2600 5700
Connection ~ 2600 5750
Wire Wire Line
	2600 5800 2600 5750
$Comp
L power:+5V #PWR?
U 1 1 5E0BE328
P 2600 5700
AR Path="/5E0BE328" Ref="#PWR?"  Part="1" 
AR Path="/5E0480C4/5E0BE328" Ref="#PWR?"  Part="1" 
AR Path="/5E0AB4D6/5E0BE328" Ref="#PWR08"  Part="1" 
F 0 "#PWR08" H 2600 5550 50  0001 C CNN
F 1 "+5V" H 2615 5873 50  0000 C CNN
F 2 "" H 2600 5700 50  0001 C CNN
F 3 "" H 2600 5700 50  0001 C CNN
	1    2600 5700
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push_Dual SW?
U 1 1 5E0BE342
P 1700 4000
AR Path="/5E0BE342" Ref="SW?"  Part="1" 
AR Path="/5E0480C4/5E0BE342" Ref="SW?"  Part="1" 
AR Path="/5E0AB4D6/5E0BE342" Ref="SW1"  Part="1" 
F 0 "SW1" H 1700 4200 50  0000 C CNN
F 1 "SW_Push_Dual" H 1700 3700 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm" H 1700 4200 50  0001 C CNN
F 3 "~" H 1700 4200 50  0001 C CNN
	1    1700 4000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E0BE35A
P 1850 3400
AR Path="/5E0BE35A" Ref="#PWR?"  Part="1" 
AR Path="/5E0480C4/5E0BE35A" Ref="#PWR?"  Part="1" 
AR Path="/5E0AB4D6/5E0BE35A" Ref="#PWR05"  Part="1" 
F 0 "#PWR05" H 1850 3150 50  0001 C CNN
F 1 "GND" H 1855 3227 50  0000 C CNN
F 2 "" H 1850 3400 50  0001 C CNN
F 3 "" H 1850 3400 50  0001 C CNN
	1    1850 3400
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5E0BE360
P 1850 2300
AR Path="/5E0BE360" Ref="#PWR?"  Part="1" 
AR Path="/5E0480C4/5E0BE360" Ref="#PWR?"  Part="1" 
AR Path="/5E0AB4D6/5E0BE360" Ref="#PWR04"  Part="1" 
F 0 "#PWR04" H 1850 2150 50  0001 C CNN
F 1 "+5V" H 1865 2473 50  0000 C CNN
F 2 "" H 1850 2300 50  0001 C CNN
F 3 "" H 1850 2300 50  0001 C CNN
	1    1850 2300
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5E0BE367
P 1200 3150
AR Path="/5E0BE367" Ref="C?"  Part="1" 
AR Path="/5E0480C4/5E0BE367" Ref="C?"  Part="1" 
AR Path="/5E0AB4D6/5E0BE367" Ref="C1"  Part="1" 
F 0 "C1" H 1315 3196 50  0000 L CNN
F 1 "0.1u" H 1315 3105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 1238 3000 50  0001 C CNN
F 3 "~" H 1200 3150 50  0001 C CNN
	1    1200 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 2350 1850 2450
Connection ~ 1850 2350
Wire Wire Line
	1850 2300 1850 2350
Wire Wire Line
	1200 3000 1200 2950
Wire Wire Line
	1200 2950 1350 2950
Text GLabel 4950 3400 2    50   Input ~ 0
-RST-
$Comp
L Connector:TestPoint_Probe TP?
U 1 1 5E0BE3B8
P 4400 3100
AR Path="/5E0BE3B8" Ref="TP?"  Part="1" 
AR Path="/5E0480C4/5E0BE3B8" Ref="TP?"  Part="1" 
AR Path="/5E0AB4D6/5E0BE3B8" Ref="TP2"  Part="1" 
F 0 "TP2" V 4408 3253 50  0000 L CNN
F 1 "TestPoint_Probe" V 4499 3253 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.5mm" H 4600 3100 50  0001 C CNN
F 3 "~" H 4600 3100 50  0001 C CNN
	1    4400 3100
	0    -1   -1   0   
$EndComp
$Comp
L z80-project:LP3470 U?
U 1 1 5E0BE3CA
P 1850 2800
AR Path="/5E0BE3CA" Ref="U?"  Part="1" 
AR Path="/5E0480C4/5E0BE3CA" Ref="U?"  Part="1" 
AR Path="/5E0AB4D6/5E0BE3CA" Ref="U1"  Part="1" 
F 0 "U1" H 2050 3100 50  0000 L CNN
F 1 "LP3470" H 1950 2500 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5_HandSoldering" H 2850 2450 50  0001 C CNN
F 3 "https://www.promelec.ru/pdf/LP3470.pdf" H 2850 2450 50  0001 C CNN
	1    1850 2800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E0F5669
P 8250 5200
AR Path="/5E0F5669" Ref="#PWR?"  Part="1" 
AR Path="/5D5CBDC9/5E0F5669" Ref="#PWR?"  Part="1" 
AR Path="/5E0AB4D6/5E0F5669" Ref="#PWR022"  Part="1" 
F 0 "#PWR022" H 8250 4950 50  0001 C CNN
F 1 "GND" H 8255 5027 50  0000 C CNN
F 2 "" H 8250 5200 50  0001 C CNN
F 3 "" H 8250 5200 50  0001 C CNN
	1    8250 5200
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5E0F566F
P 8250 2200
AR Path="/5E0F566F" Ref="#PWR?"  Part="1" 
AR Path="/5D5CBDC9/5E0F566F" Ref="#PWR?"  Part="1" 
AR Path="/5E0AB4D6/5E0F566F" Ref="#PWR021"  Part="1" 
F 0 "#PWR021" H 8250 2050 50  0001 C CNN
F 1 "+5V" H 8265 2373 50  0000 C CNN
F 2 "" H 8250 2200 50  0001 C CNN
F 3 "" H 8250 2200 50  0001 C CNN
	1    8250 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	7550 4200 7200 4200
Wire Wire Line
	7550 4300 7200 4300
Wire Wire Line
	7550 4400 7200 4400
Wire Wire Line
	7550 4500 7200 4500
$Comp
L Device:C C?
U 1 1 5E0F567D
P 7750 1800
AR Path="/5E0F567D" Ref="C?"  Part="1" 
AR Path="/5D5CBDC9/5E0F567D" Ref="C?"  Part="1" 
AR Path="/5E0AB4D6/5E0F567D" Ref="C8"  Part="1" 
F 0 "C8" H 7865 1846 50  0000 L CNN
F 1 "0.1u" H 7865 1755 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 7788 1650 50  0001 C CNN
F 3 "~" H 7750 1800 50  0001 C CNN
	1    7750 1800
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5E0F5683
P 7750 1650
AR Path="/5E0F5683" Ref="#PWR?"  Part="1" 
AR Path="/5D5CBDC9/5E0F5683" Ref="#PWR?"  Part="1" 
AR Path="/5E0AB4D6/5E0F5683" Ref="#PWR019"  Part="1" 
F 0 "#PWR019" H 7750 1500 50  0001 C CNN
F 1 "+5V" H 7765 1823 50  0000 C CNN
F 2 "" H 7750 1650 50  0001 C CNN
F 3 "" H 7750 1650 50  0001 C CNN
	1    7750 1650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E0F5689
P 7750 1950
AR Path="/5E0F5689" Ref="#PWR?"  Part="1" 
AR Path="/5D5CBDC9/5E0F5689" Ref="#PWR?"  Part="1" 
AR Path="/5E0AB4D6/5E0F5689" Ref="#PWR020"  Part="1" 
F 0 "#PWR020" H 7750 1700 50  0001 C CNN
F 1 "GND" H 7755 1777 50  0000 C CNN
F 2 "" H 7750 1950 50  0001 C CNN
F 3 "" H 7750 1950 50  0001 C CNN
	1    7750 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	8950 2500 9300 2500
Entry Wire Line
	9300 2500 9400 2400
Text Label 9300 2500 2    50   ~ 0
A0
Wire Wire Line
	8950 2600 9300 2600
Entry Wire Line
	9300 2600 9400 2500
Text Label 9300 2600 2    50   ~ 0
A1
Wire Wire Line
	8950 2700 9300 2700
Entry Wire Line
	9300 2700 9400 2600
Text Label 9300 2700 2    50   ~ 0
A2
Wire Wire Line
	8950 2800 9300 2800
Entry Wire Line
	9300 2800 9400 2700
Text Label 9300 2800 2    50   ~ 0
A3
Wire Wire Line
	8950 2900 9300 2900
Entry Wire Line
	9300 2900 9400 2800
Text Label 9300 2900 2    50   ~ 0
A4
Wire Wire Line
	8950 3000 9300 3000
Entry Wire Line
	9300 3000 9400 2900
Text Label 9300 3000 2    50   ~ 0
A5
Wire Wire Line
	8950 3100 9300 3100
Entry Wire Line
	9300 3100 9400 3000
Text Label 9300 3100 2    50   ~ 0
A6
Wire Wire Line
	8950 3200 9300 3200
Entry Wire Line
	9300 3200 9400 3100
Text Label 9300 3200 2    50   ~ 0
A7
Wire Wire Line
	8950 3300 9300 3300
Entry Wire Line
	9300 3300 9400 3200
Text Label 9300 3300 2    50   ~ 0
A8
Wire Wire Line
	8950 3400 9300 3400
Entry Wire Line
	9300 3400 9400 3300
Text Label 9300 3400 2    50   ~ 0
A9
Wire Wire Line
	8950 3500 9300 3500
Entry Wire Line
	9300 3500 9400 3400
Text Label 9300 3500 2    50   ~ 0
A10
Wire Wire Line
	8950 3600 9300 3600
Entry Wire Line
	9300 3600 9400 3500
Text Label 9300 3600 2    50   ~ 0
A11
Wire Wire Line
	8950 3700 9300 3700
Entry Wire Line
	9300 3700 9400 3600
Text Label 9300 3700 2    50   ~ 0
A12
Wire Wire Line
	8950 3800 9300 3800
Entry Wire Line
	9300 3800 9400 3700
Text Label 9300 3800 2    50   ~ 0
A13
Wire Wire Line
	8950 3900 9300 3900
Entry Wire Line
	9300 3900 9400 3800
Text Label 9300 3900 2    50   ~ 0
A14
Wire Wire Line
	8950 4000 9300 4000
Entry Wire Line
	9300 4000 9400 3900
Text Label 9300 4000 2    50   ~ 0
A15
Wire Wire Line
	8950 4200 9300 4200
Entry Wire Line
	9300 4200 9400 4100
Text Label 9300 4200 2    50   ~ 0
D0
Wire Wire Line
	8950 4300 9300 4300
Entry Wire Line
	9300 4300 9400 4200
Text Label 9300 4300 2    50   ~ 0
D1
Wire Wire Line
	8950 4400 9300 4400
Entry Wire Line
	9300 4400 9400 4300
Text Label 9300 4400 2    50   ~ 0
D2
Wire Wire Line
	8950 4500 9300 4500
Entry Wire Line
	9300 4500 9400 4400
Text Label 9300 4500 2    50   ~ 0
D3
Wire Wire Line
	8950 4600 9300 4600
Entry Wire Line
	9300 4600 9400 4500
Text Label 9300 4600 2    50   ~ 0
D4
Wire Wire Line
	8950 4700 9300 4700
Entry Wire Line
	9300 4700 9400 4600
Text Label 9300 4700 2    50   ~ 0
D5
Wire Wire Line
	8950 4800 9300 4800
Entry Wire Line
	9300 4800 9400 4700
Text Label 9300 4800 2    50   ~ 0
D6
Wire Wire Line
	8950 4900 9300 4900
Entry Wire Line
	9300 4900 9400 4800
Text Label 9300 4900 2    50   ~ 0
D7
Text Label 9450 2400 0    50   ~ 0
A[0..15]
Text Label 9450 4100 0    50   ~ 0
D[0..7]
Wire Bus Line
	9400 4100 9850 4100
Wire Bus Line
	9400 2400 9850 2400
Text GLabel 9850 2400 2    50   Input ~ 0
A[0..15]
Text GLabel 9850 4100 2    50   Input ~ 0
D[0..7]
Wire Wire Line
	7550 3500 7200 3500
Text Label 7200 3500 0    50   ~ 0
-M1-
$Comp
L CPU:Z80CPU U?
U 1 1 5E0F56E1
P 8250 3700
AR Path="/5E0F56E1" Ref="U?"  Part="1" 
AR Path="/5D5CBDC9/5E0F56E1" Ref="U?"  Part="1" 
AR Path="/5E0AB4D6/5E0F56E1" Ref="U4"  Part="1" 
F 0 "U4" H 7950 5100 50  0000 C CNN
F 1 "Z80CPU" H 8500 5100 50  0000 C CNN
F 2 "Package_DIP:DIP-40_W15.24mm" H 8250 4100 50  0001 C CNN
F 3 "www.zilog.com/manage_directlink.php?filepath=docs/z80/um0080" H 8250 4100 50  0001 C CNN
	1    8250 3700
	1    0    0    -1  
$EndComp
Text GLabel 7200 3500 0    50   Input ~ 0
-M1-
Text GLabel 7200 4200 0    50   Input ~ 0
-RD-
Text GLabel 7200 4300 0    50   Input ~ 0
-WR-
Text GLabel 7200 4400 0    50   Input ~ 0
-MREQ-
Text GLabel 7200 4500 0    50   Input ~ 0
-IORQ-
$Comp
L Device:R R?
U 1 1 5E06CA07
P 7400 3100
AR Path="/5E06CA07" Ref="R?"  Part="1" 
AR Path="/5E0480C4/5E06CA07" Ref="R?"  Part="1" 
AR Path="/5E0AB4D6/5E06CA07" Ref="R5"  Part="1" 
F 0 "R5" V 7500 3300 50  0000 R CNN
F 1 "1k" V 7500 3100 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 7330 3100 50  0001 C CNN
F 3 "~" H 7400 3100 50  0001 C CNN
	1    7400 3100
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 5E06D984
P 7400 3200
AR Path="/5E06D984" Ref="R?"  Part="1" 
AR Path="/5E0480C4/5E06D984" Ref="R?"  Part="1" 
AR Path="/5E0AB4D6/5E06D984" Ref="R6"  Part="1" 
F 0 "R6" V 7300 3400 50  0000 R CNN
F 1 "1k" V 7300 3200 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 7330 3200 50  0001 C CNN
F 3 "~" H 7400 3200 50  0001 C CNN
	1    7400 3200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7250 3100 7150 3100
Wire Wire Line
	7150 3100 7150 3150
Wire Wire Line
	7150 3200 7250 3200
Wire Wire Line
	7150 3150 7100 3150
Connection ~ 7150 3150
Wire Wire Line
	7150 3150 7150 3200
$Comp
L power:+5V #PWR?
U 1 1 5E077356
P 7100 3150
AR Path="/5E077356" Ref="#PWR?"  Part="1" 
AR Path="/5D5CBDC9/5E077356" Ref="#PWR?"  Part="1" 
AR Path="/5E0AB4D6/5E077356" Ref="#PWR016"  Part="1" 
F 0 "#PWR016" H 7100 3000 50  0001 C CNN
F 1 "+5V" V 7115 3323 50  0000 C CNN
F 2 "" H 7100 3150 50  0001 C CNN
F 3 "" H 7100 3150 50  0001 C CNN
	1    7100 3150
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5E078DF5
P 7250 3700
AR Path="/5E078DF5" Ref="#PWR?"  Part="1" 
AR Path="/5D5CBDC9/5E078DF5" Ref="#PWR?"  Part="1" 
AR Path="/5E0AB4D6/5E078DF5" Ref="#PWR017"  Part="1" 
F 0 "#PWR017" H 7250 3550 50  0001 C CNN
F 1 "+5V" V 7265 3873 50  0000 C CNN
F 2 "" H 7250 3700 50  0001 C CNN
F 3 "" H 7250 3700 50  0001 C CNN
	1    7250 3700
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 5E079933
P 7400 3700
AR Path="/5E079933" Ref="R?"  Part="1" 
AR Path="/5E0480C4/5E079933" Ref="R?"  Part="1" 
AR Path="/5E0AB4D6/5E079933" Ref="R7"  Part="1" 
F 0 "R7" V 7500 3900 50  0000 R CNN
F 1 "1k" V 7500 3700 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 7330 3700 50  0001 C CNN
F 3 "~" H 7400 3700 50  0001 C CNN
	1    7400 3700
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 5E07C478
P 7400 4800
AR Path="/5E07C478" Ref="R?"  Part="1" 
AR Path="/5E0480C4/5E07C478" Ref="R?"  Part="1" 
AR Path="/5E0AB4D6/5E07C478" Ref="R8"  Part="1" 
F 0 "R8" V 7500 5000 50  0000 R CNN
F 1 "1k" V 7500 4800 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 7330 4800 50  0001 C CNN
F 3 "~" H 7400 4800 50  0001 C CNN
	1    7400 4800
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5E07CB44
P 7250 4800
AR Path="/5E07CB44" Ref="#PWR?"  Part="1" 
AR Path="/5D5CBDC9/5E07CB44" Ref="#PWR?"  Part="1" 
AR Path="/5E0AB4D6/5E07CB44" Ref="#PWR018"  Part="1" 
F 0 "#PWR018" H 7250 4650 50  0001 C CNN
F 1 "+5V" V 7265 4973 50  0000 C CNN
F 2 "" H 7250 4800 50  0001 C CNN
F 3 "" H 7250 4800 50  0001 C CNN
	1    7250 4800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6400 2800 7550 2800
Text GLabel 6650 6100 2    50   Input ~ 0
SYS_CLK
$Comp
L Device:R R?
U 1 1 5DFF2E34
P 2550 2500
AR Path="/5DFF2E34" Ref="R?"  Part="1" 
AR Path="/5E0480C4/5DFF2E34" Ref="R?"  Part="1" 
AR Path="/5E0AB4D6/5DFF2E34" Ref="R2"  Part="1" 
F 0 "R2" V 2650 2650 50  0000 C CNN
F 1 "10k" V 2650 2350 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 2480 2500 50  0001 C CNN
F 3 "~" H 2550 2500 50  0001 C CNN
	1    2550 2500
	-1   0    0    1   
$EndComp
Wire Wire Line
	2350 2800 2550 2800
Wire Wire Line
	2550 2650 2550 2800
$Comp
L power:+5V #PWR?
U 1 1 5DFFB935
P 2550 2300
AR Path="/5DFFB935" Ref="#PWR?"  Part="1" 
AR Path="/5E0480C4/5DFFB935" Ref="#PWR?"  Part="1" 
AR Path="/5E0AB4D6/5DFFB935" Ref="#PWR07"  Part="1" 
F 0 "#PWR07" H 2550 2150 50  0001 C CNN
F 1 "+5V" H 2565 2473 50  0000 C CNN
F 2 "" H 2550 2300 50  0001 C CNN
F 3 "" H 2550 2300 50  0001 C CNN
	1    2550 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 2300 2550 2350
Wire Wire Line
	1200 3300 1200 3350
Wire Wire Line
	1200 3350 1850 3350
Wire Wire Line
	1850 3350 1850 3150
Connection ~ 1850 3350
Wire Wire Line
	1850 3350 1850 3400
Wire Wire Line
	1200 2650 1200 2350
Wire Wire Line
	1200 2350 1850 2350
Wire Wire Line
	1200 2650 1350 2650
$Comp
L Device:R R?
U 1 1 5E02A565
P 2250 3800
AR Path="/5E02A565" Ref="R?"  Part="1" 
AR Path="/5E0480C4/5E02A565" Ref="R?"  Part="1" 
AR Path="/5E0AB4D6/5E02A565" Ref="R1"  Part="1" 
F 0 "R1" H 2100 3750 50  0000 C CNN
F 1 "100k" H 2100 3850 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 2180 3800 50  0001 C CNN
F 3 "~" H 2250 3800 50  0001 C CNN
	1    2250 3800
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 5E02A936
P 2550 4100
AR Path="/5E02A936" Ref="R?"  Part="1" 
AR Path="/5E0480C4/5E02A936" Ref="R?"  Part="1" 
AR Path="/5E0AB4D6/5E02A936" Ref="R3"  Part="1" 
F 0 "R3" V 2650 4100 50  0000 C CNN
F 1 "10k" V 2750 4100 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 2480 4100 50  0001 C CNN
F 3 "~" H 2550 4100 50  0001 C CNN
	1    2550 4100
	0    1    1    0   
$EndComp
$Comp
L Device:C C?
U 1 1 5E02B255
P 2900 4450
AR Path="/5E02B255" Ref="C?"  Part="1" 
AR Path="/5E0480C4/5E02B255" Ref="C?"  Part="1" 
AR Path="/5E0AB4D6/5E02B255" Ref="C4"  Part="1" 
F 0 "C4" H 3015 4496 50  0000 L CNN
F 1 "0.1u" H 3015 4405 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 2938 4300 50  0001 C CNN
F 3 "~" H 2900 4450 50  0001 C CNN
	1    2900 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 4300 2900 4100
Wire Wire Line
	2700 4100 2900 4100
Wire Wire Line
	2400 4100 2250 4100
Wire Wire Line
	2250 4100 2250 3950
$Comp
L power:GND #PWR?
U 1 1 5E039448
P 2900 4600
AR Path="/5E039448" Ref="#PWR?"  Part="1" 
AR Path="/5E0480C4/5E039448" Ref="#PWR?"  Part="1" 
AR Path="/5E0AB4D6/5E039448" Ref="#PWR010"  Part="1" 
F 0 "#PWR010" H 2900 4350 50  0001 C CNN
F 1 "GND" H 2905 4427 50  0000 C CNN
F 2 "" H 2900 4600 50  0001 C CNN
F 3 "" H 2900 4600 50  0001 C CNN
	1    2900 4600
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5E0398E1
P 2250 3650
AR Path="/5E0398E1" Ref="#PWR?"  Part="1" 
AR Path="/5E0480C4/5E0398E1" Ref="#PWR?"  Part="1" 
AR Path="/5E0AB4D6/5E0398E1" Ref="#PWR06"  Part="1" 
F 0 "#PWR06" H 2250 3500 50  0001 C CNN
F 1 "+5V" H 2265 3823 50  0000 C CNN
F 2 "" H 2250 3650 50  0001 C CNN
F 3 "" H 2250 3650 50  0001 C CNN
	1    2250 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 4000 2000 4000
Wire Wire Line
	2000 4000 2000 4100
Wire Wire Line
	2000 4200 1900 4200
Wire Wire Line
	1500 4000 1400 4000
Wire Wire Line
	1400 4000 1400 4100
Wire Wire Line
	1400 4200 1500 4200
Wire Wire Line
	2000 4100 2250 4100
Connection ~ 2000 4100
Wire Wire Line
	2000 4100 2000 4200
Connection ~ 2250 4100
$Comp
L power:GND #PWR?
U 1 1 5E04E73B
P 1300 4600
AR Path="/5E04E73B" Ref="#PWR?"  Part="1" 
AR Path="/5E0480C4/5E04E73B" Ref="#PWR?"  Part="1" 
AR Path="/5E0AB4D6/5E04E73B" Ref="#PWR01"  Part="1" 
F 0 "#PWR01" H 1300 4350 50  0001 C CNN
F 1 "GND" H 1305 4427 50  0000 C CNN
F 2 "" H 1300 4600 50  0001 C CNN
F 3 "" H 1300 4600 50  0001 C CNN
	1    1300 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 4600 1300 4100
Wire Wire Line
	1300 4100 1400 4100
Connection ~ 1400 4100
Wire Wire Line
	1400 4100 1400 4200
Wire Wire Line
	2550 2800 2900 2800
Connection ~ 2550 2800
Connection ~ 2900 4100
Wire Wire Line
	4400 3400 4400 3100
$Comp
L Connector:TestPoint_Probe TP?
U 1 1 5E0B1DFD
P 4350 5650
AR Path="/5E0B1DFD" Ref="TP?"  Part="1" 
AR Path="/5E0480C4/5E0B1DFD" Ref="TP?"  Part="1" 
AR Path="/5E0AB4D6/5E0B1DFD" Ref="TP1"  Part="1" 
F 0 "TP1" V 4358 5803 50  0000 L CNN
F 1 "TestPoint_Probe" V 4449 5803 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.5mm" H 4550 5650 50  0001 C CNN
F 3 "~" H 4550 5650 50  0001 C CNN
	1    4350 5650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3650 3400 4400 3400
$Comp
L 74xGxx:74LVC1G08 U?
U 1 1 5E1828DF
P 3400 3400
AR Path="/5E1C888F/5E1828DF" Ref="U?"  Part="1" 
AR Path="/5E0AB4D6/5E1828DF" Ref="U2"  Part="1" 
F 0 "U2" H 3550 3550 50  0000 C CNN
F 1 "74LVC1G08" H 3700 3250 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5_HandSoldering" H 3400 3400 50  0001 C CNN
F 3 "http://www.ti.com/lit/sg/scyt129e/scyt129e.pdf" H 3400 3400 50  0001 C CNN
	1    3400 3400
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5E1828E5
P 3400 3300
AR Path="/5E1828E5" Ref="#PWR?"  Part="1" 
AR Path="/5D5CBDC9/5E1828E5" Ref="#PWR?"  Part="1" 
AR Path="/5E1C888F/5E1828E5" Ref="#PWR?"  Part="1" 
AR Path="/5E0AB4D6/5E1828E5" Ref="#PWR011"  Part="1" 
F 0 "#PWR011" H 3400 3150 50  0001 C CNN
F 1 "+5V" H 3400 3500 50  0000 C CNN
F 2 "" H 3400 3300 50  0001 C CNN
F 3 "" H 3400 3300 50  0001 C CNN
	1    3400 3300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E1828EB
P 3400 3500
AR Path="/5E1828EB" Ref="#PWR?"  Part="1" 
AR Path="/5D5CBDC9/5E1828EB" Ref="#PWR?"  Part="1" 
AR Path="/5E1C888F/5E1828EB" Ref="#PWR?"  Part="1" 
AR Path="/5E0AB4D6/5E1828EB" Ref="#PWR012"  Part="1" 
F 0 "#PWR012" H 3400 3250 50  0001 C CNN
F 1 "GND" H 3400 3300 50  0000 C CNN
F 2 "" H 3400 3500 50  0001 C CNN
F 3 "" H 3400 3500 50  0001 C CNN
	1    3400 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 3450 3100 3450
Wire Wire Line
	2900 3450 2900 4100
Wire Wire Line
	3100 3350 2900 3350
Wire Wire Line
	2900 2800 2900 3350
Wire Wire Line
	4400 3400 4700 3400
Connection ~ 4400 3400
Wire Wire Line
	4700 3400 4700 2500
Wire Wire Line
	4700 2500 7550 2500
Connection ~ 4700 3400
Wire Wire Line
	4700 3400 4950 3400
Wire Wire Line
	2900 6100 4350 6100
Wire Wire Line
	6400 6100 6400 2800
Wire Wire Line
	6650 6100 6400 6100
Connection ~ 6400 6100
Wire Wire Line
	4350 5650 4350 6100
Wire Bus Line
	9400 4100 9400 4800
Wire Bus Line
	9400 2400 9400 3900
Connection ~ 4350 6100
Wire Wire Line
	4350 6100 6400 6100
$Comp
L Oscillator:XO32 X1
U 1 1 5E1E5772
P 2600 6100
F 0 "X1" H 2944 6146 50  0000 L CNN
F 1 "XO32" H 2944 6055 50  0000 L CNN
F 2 "Oscillator:Oscillator_SMD_EuroQuartz_XO32-4Pin_3.2x2.5mm" H 3300 5750 50  0001 C CNN
F 3 "http://cdn-reichelt.de/documents/datenblatt/B400/XO32.pdf" H 2500 6100 50  0001 C CNN
	1    2600 6100
	1    0    0    -1  
$EndComp
Text Label 2900 2800 2    50   ~ 0
-POR-
$EndSCHEMATC