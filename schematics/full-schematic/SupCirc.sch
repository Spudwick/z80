EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 4
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
U 1 1 5E0545C7
P 3300 1100
AR Path="/5E0545C7" Ref="U?"  Part="1" 
AR Path="/5E0480C4/5E0545C7" Ref="U?"  Part="1" 
F 0 "U?" H 3300 1342 50  0000 C CNN
F 1 "L7805" H 3300 1251 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:TO-263-2" H 3325 950 50  0001 L CIN
F 3 "http://www.st.com/content/ccc/resource/technical/document/datasheet/41/4f/b3/b0/12/d4/47/88/CD00000444.pdf/files/CD00000444.pdf/jcr:content/translations/en.CD00000444.pdf" H 3300 1050 50  0001 C CNN
	1    3300 1100
	1    0    0    -1  
$EndComp
$Comp
L power:+VDC #PWR?
U 1 1 5E0545CD
P 1350 1100
AR Path="/5E0545CD" Ref="#PWR?"  Part="1" 
AR Path="/5E0480C4/5E0545CD" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 1350 1000 50  0001 C CNN
F 1 "+VDC" V 1350 1329 50  0000 L CNN
F 2 "" H 1350 1100 50  0001 C CNN
F 3 "" H 1350 1100 50  0001 C CNN
	1    1350 1100
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5E0545D3
P 4850 1100
AR Path="/5E0545D3" Ref="#PWR?"  Part="1" 
AR Path="/5E0480C4/5E0545D3" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4850 950 50  0001 C CNN
F 1 "+5V" V 4865 1228 50  0000 L CNN
F 2 "" H 4850 1100 50  0001 C CNN
F 3 "" H 4850 1100 50  0001 C CNN
	1    4850 1100
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E0545D9
P 3300 1500
AR Path="/5E0545D9" Ref="#PWR?"  Part="1" 
AR Path="/5E0480C4/5E0545D9" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3300 1250 50  0001 C CNN
F 1 "GND" H 3305 1327 50  0000 C CNN
F 2 "" H 3300 1500 50  0001 C CNN
F 3 "" H 3300 1500 50  0001 C CNN
	1    3300 1500
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C?
U 1 1 5E0545DF
P 2800 1300
AR Path="/5E0545DF" Ref="C?"  Part="1" 
AR Path="/5E0480C4/5E0545DF" Ref="C?"  Part="1" 
F 0 "C?" H 2918 1346 50  0000 L CNN
F 1 "1m" H 2918 1255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 2838 1150 50  0001 C CNN
F 3 "~" H 2800 1300 50  0001 C CNN
	1    2800 1300
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C?
U 1 1 5E0545E5
P 3750 1300
AR Path="/5E0545E5" Ref="C?"  Part="1" 
AR Path="/5E0480C4/5E0545E5" Ref="C?"  Part="1" 
F 0 "C?" H 3868 1346 50  0000 L CNN
F 1 "1m" H 3868 1255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3788 1150 50  0001 C CNN
F 3 "~" H 3750 1300 50  0001 C CNN
	1    3750 1300
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5E0545EB
P 2400 1300
AR Path="/5E0545EB" Ref="C?"  Part="1" 
AR Path="/5E0480C4/5E0545EB" Ref="C?"  Part="1" 
F 0 "C?" H 2515 1346 50  0000 L CNN
F 1 "0.1u" H 2515 1255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 2438 1150 50  0001 C CNN
F 3 "~" H 2400 1300 50  0001 C CNN
	1    2400 1300
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5E0545F1
P 4150 1300
AR Path="/5E0545F1" Ref="C?"  Part="1" 
AR Path="/5E0480C4/5E0545F1" Ref="C?"  Part="1" 
F 0 "C?" H 4265 1346 50  0000 L CNN
F 1 "0.1u" H 4265 1255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4188 1150 50  0001 C CNN
F 3 "~" H 4150 1300 50  0001 C CNN
	1    4150 1300
	1    0    0    -1  
$EndComp
$Comp
L Device:D_Schottky D?
U 1 1 5E0545F7
P 1600 1100
AR Path="/5E0545F7" Ref="D?"  Part="1" 
AR Path="/5E0480C4/5E0545F7" Ref="D?"  Part="1" 
F 0 "D?" H 1600 884 50  0000 C CNN
F 1 "D_Schottky" H 1600 975 50  0000 C CNN
F 2 "Diode_SMD:D_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 1600 1100 50  0001 C CNN
F 3 "~" H 1600 1100 50  0001 C CNN
	1    1600 1100
	-1   0    0    1   
$EndComp
Wire Wire Line
	2250 1100 2400 1100
Wire Wire Line
	1350 1100 1450 1100
Wire Wire Line
	2400 1150 2400 1100
Connection ~ 2400 1100
Wire Wire Line
	2400 1100 2800 1100
Wire Wire Line
	2800 1150 2800 1100
Connection ~ 2800 1100
Wire Wire Line
	2800 1100 3000 1100
Wire Wire Line
	2400 1450 2400 1500
Wire Wire Line
	4150 1500 4150 1450
Wire Wire Line
	3750 1450 3750 1500
Connection ~ 3750 1500
Wire Wire Line
	3750 1500 4150 1500
Wire Wire Line
	2800 1450 2800 1500
Connection ~ 2800 1500
Wire Wire Line
	2800 1500 3300 1500
Wire Wire Line
	3600 1100 3750 1100
Wire Wire Line
	4150 1150 4150 1100
Connection ~ 4150 1100
Wire Wire Line
	3750 1150 3750 1100
Connection ~ 3750 1100
Wire Wire Line
	3750 1100 4150 1100
Wire Wire Line
	3300 1400 3300 1500
Connection ~ 3300 1500
Wire Wire Line
	3300 1500 3750 1500
Wire Wire Line
	4150 1100 4550 1100
$Comp
L Device:R R?
U 1 1 5E054617
P 4550 1300
AR Path="/5E054617" Ref="R?"  Part="1" 
AR Path="/5E0480C4/5E054617" Ref="R?"  Part="1" 
F 0 "R?" H 4620 1346 50  0000 L CNN
F 1 "330" H 4620 1255 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 4480 1300 50  0001 C CNN
F 3 "~" H 4550 1300 50  0001 C CNN
	1    4550 1300
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D?
U 1 1 5E05461D
P 4550 1600
AR Path="/5E05461D" Ref="D?"  Part="1" 
AR Path="/5E0480C4/5E05461D" Ref="D?"  Part="1" 
F 0 "D?" V 4589 1483 50  0000 R CNN
F 1 "LED" V 4498 1483 50  0000 R CNN
F 2 "LED_SMD:LED_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4550 1600 50  0001 C CNN
F 3 "~" H 4550 1600 50  0001 C CNN
	1    4550 1600
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E054623
P 4550 1750
AR Path="/5E054623" Ref="#PWR?"  Part="1" 
AR Path="/5E0480C4/5E054623" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4550 1500 50  0001 C CNN
F 1 "GND" H 4555 1577 50  0000 C CNN
F 2 "" H 4550 1750 50  0001 C CNN
F 3 "" H 4550 1750 50  0001 C CNN
	1    4550 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 1100 4550 1150
Wire Wire Line
	4850 1100 4550 1100
Connection ~ 4550 1100
$Comp
L Switch:SW_SPST SW?
U 1 1 5E05462C
P 2050 1100
AR Path="/5E05462C" Ref="SW?"  Part="1" 
AR Path="/5E0480C4/5E05462C" Ref="SW?"  Part="1" 
F 0 "SW?" H 2050 1335 50  0000 C CNN
F 1 "SW_SPST" H 2050 1244 50  0000 C CNN
F 2 "Button_Switch_THT:SW_E-Switch_EG1224_SPDT_Angled" H 2050 1100 50  0001 C CNN
F 3 "~" H 2050 1100 50  0001 C CNN
	1    2050 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1750 1100 1850 1100
$Comp
L Oscillator:CXO_DIP8 X?
U 1 1 5E054633
P 3000 5250
AR Path="/5E054633" Ref="X?"  Part="1" 
AR Path="/5E0480C4/5E054633" Ref="X?"  Part="1" 
F 0 "X?" H 3250 5400 50  0000 L CNN
F 1 "CXO_DIP8" H 3250 5100 50  0000 L CNN
F 2 "Oscillator:Oscillator_DIP-8" H 3450 4900 50  0001 C CNN
F 3 "http://cdn-reichelt.de/documents/datenblatt/B400/OSZI.pdf" H 2900 5250 50  0001 C CNN
	1    3000 5250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E054639
P 3000 5650
AR Path="/5E054639" Ref="#PWR?"  Part="1" 
AR Path="/5E0480C4/5E054639" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3000 5400 50  0001 C CNN
F 1 "GND" H 3005 5477 50  0000 C CNN
F 2 "" H 3000 5650 50  0001 C CNN
F 3 "" H 3000 5650 50  0001 C CNN
	1    3000 5650
	1    0    0    -1  
$EndComp
Text Label 3950 5250 2    50   ~ 0
OSC_CLK
$Comp
L Device:C C?
U 1 1 5E054640
P 2600 5400
AR Path="/5E054640" Ref="C?"  Part="1" 
AR Path="/5E0480C4/5E054640" Ref="C?"  Part="1" 
F 0 "C?" H 2450 5500 50  0000 L CNN
F 1 "0.1u" H 2400 5300 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 2638 5250 50  0001 C CNN
F 3 "~" H 2600 5400 50  0001 C CNN
	1    2600 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 5250 2600 5250
Connection ~ 2600 5250
Wire Wire Line
	2600 5550 2600 5600
Wire Wire Line
	2600 5600 3000 5600
Wire Wire Line
	3000 5600 3000 5550
Connection ~ 3000 5600
Wire Wire Line
	3000 5600 3000 5650
Text Label 3950 6300 2    50   ~ 0
SW_CLK
$Comp
L Switch:SW_SPDT SW?
U 1 1 5E05464E
P 4250 5750
AR Path="/5E05464E" Ref="SW?"  Part="1" 
AR Path="/5E0480C4/5E05464E" Ref="SW?"  Part="1" 
F 0 "SW?" H 4250 5425 50  0000 C CNN
F 1 "SW_SPDT" H 4250 5516 50  0000 C CNN
F 2 "Button_Switch_THT:SW_CuK_JS202011CQN_DPDT_Straight" H 4250 5750 50  0001 C CNN
F 3 "~" H 4250 5750 50  0001 C CNN
	1    4250 5750
	-1   0    0    1   
$EndComp
Wire Wire Line
	3950 6300 3950 5850
Wire Wire Line
	3950 5850 4050 5850
Wire Wire Line
	4050 5650 3950 5650
Wire Wire Line
	3950 5650 3950 5250
Wire Wire Line
	3300 5250 3950 5250
Wire Wire Line
	4450 5750 4700 5750
$Comp
L power:VDD #PWR?
U 1 1 5E05465A
P 1250 1500
AR Path="/5E05465A" Ref="#PWR?"  Part="1" 
AR Path="/5E0480C4/5E05465A" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 1250 1350 50  0001 C CNN
F 1 "VDD" V 1268 1627 50  0000 L CNN
F 2 "" H 1250 1500 50  0001 C CNN
F 3 "" H 1250 1500 50  0001 C CNN
	1    1250 1500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1250 1500 2400 1500
Connection ~ 2400 1500
Wire Wire Line
	2400 1500 2800 1500
$Comp
L Device:R R?
U 1 1 5E054663
P 2550 6300
AR Path="/5E054663" Ref="R?"  Part="1" 
AR Path="/5E0480C4/5E054663" Ref="R?"  Part="1" 
F 0 "R?" V 2650 6300 50  0000 C CNN
F 1 "10k" V 2750 6300 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 2480 6300 50  0001 C CNN
F 3 "~" H 2550 6300 50  0001 C CNN
	1    2550 6300
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5E054669
P 2300 6000
AR Path="/5E054669" Ref="R?"  Part="1" 
AR Path="/5E0480C4/5E054669" Ref="R?"  Part="1" 
F 0 "R?" H 2230 5954 50  0000 R CNN
F 1 "100k" H 2230 6045 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 2230 6000 50  0001 C CNN
F 3 "~" H 2300 6000 50  0001 C CNN
	1    2300 6000
	-1   0    0    1   
$EndComp
$Comp
L Device:C C?
U 1 1 5E05466F
P 2850 6600
AR Path="/5E05466F" Ref="C?"  Part="1" 
AR Path="/5E0480C4/5E05466F" Ref="C?"  Part="1" 
F 0 "C?" H 2965 6646 50  0000 L CNN
F 1 "0.1u" H 2965 6555 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 2888 6450 50  0001 C CNN
F 3 "~" H 2850 6600 50  0001 C CNN
	1    2850 6600
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5E054675
P 2300 5850
AR Path="/5E054675" Ref="#PWR?"  Part="1" 
AR Path="/5E0480C4/5E054675" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 2300 5700 50  0001 C CNN
F 1 "+5V" H 2315 6023 50  0000 C CNN
F 2 "" H 2300 5850 50  0001 C CNN
F 3 "" H 2300 5850 50  0001 C CNN
	1    2300 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 6300 2300 6300
Wire Wire Line
	2300 6150 2300 6300
Connection ~ 2300 6300
Wire Wire Line
	2300 6300 2400 6300
Wire Wire Line
	2850 6450 2850 6300
Wire Wire Line
	2700 6300 2850 6300
$Comp
L power:GND #PWR?
U 1 1 5E054681
P 2850 6750
AR Path="/5E054681" Ref="#PWR?"  Part="1" 
AR Path="/5E0480C4/5E054681" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 2850 6500 50  0001 C CNN
F 1 "GND" H 2855 6577 50  0000 C CNN
F 2 "" H 2850 6750 50  0001 C CNN
F 3 "" H 2850 6750 50  0001 C CNN
	1    2850 6750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E054687
P 1600 6300
AR Path="/5E054687" Ref="#PWR?"  Part="1" 
AR Path="/5E0480C4/5E054687" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 1600 6050 50  0001 C CNN
F 1 "GND" V 1605 6172 50  0000 R CNN
F 2 "" H 1600 6300 50  0001 C CNN
F 3 "" H 1600 6300 50  0001 C CNN
	1    1600 6300
	0    1    1    0   
$EndComp
$Comp
L 74xx:74LS04 U?
U 3 1 5E05468D
P 3300 6300
AR Path="/5E05468D" Ref="U?"  Part="3" 
AR Path="/5E0480C4/5E05468D" Ref="U?"  Part="3" 
F 0 "U?" H 3300 6617 50  0000 C CNN
F 1 "74LS04" H 3300 6526 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 3300 6300 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 3300 6300 50  0001 C CNN
	3    3300 6300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 6300 3000 6300
Connection ~ 2850 6300
Wire Wire Line
	3600 6300 3950 6300
Wire Wire Line
	2600 4900 2600 5250
Wire Wire Line
	2600 4900 3000 4900
Wire Wire Line
	3000 4900 3000 4850
Connection ~ 3000 4900
Wire Wire Line
	3000 4950 3000 4900
$Comp
L power:+5V #PWR?
U 1 1 5E05469B
P 3000 4850
AR Path="/5E05469B" Ref="#PWR?"  Part="1" 
AR Path="/5E0480C4/5E05469B" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3000 4700 50  0001 C CNN
F 1 "+5V" H 3015 5023 50  0000 C CNN
F 2 "" H 3000 4850 50  0001 C CNN
F 3 "" H 3000 4850 50  0001 C CNN
	1    3000 4850
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5E0546A1
P 3250 2900
AR Path="/5E0546A1" Ref="#PWR?"  Part="1" 
AR Path="/5E0480C4/5E0546A1" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3250 2750 50  0001 C CNN
F 1 "+5V" H 3265 3073 50  0000 C CNN
F 2 "" H 3250 2900 50  0001 C CNN
F 3 "" H 3250 2900 50  0001 C CNN
	1    3250 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 3350 3350 3350
Wire Wire Line
	3250 3200 3250 3350
$Comp
L Device:R R?
U 1 1 5E0546A9
P 3250 3050
AR Path="/5E0546A9" Ref="R?"  Part="1" 
AR Path="/5E0480C4/5E0546A9" Ref="R?"  Part="1" 
F 0 "R?" H 3180 3004 50  0000 R CNN
F 1 "100k" H 3180 3095 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 3180 3050 50  0001 C CNN
F 3 "~" H 3250 3050 50  0001 C CNN
	1    3250 3050
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 5E0546AF
P 3500 3350
AR Path="/5E0546AF" Ref="R?"  Part="1" 
AR Path="/5E0480C4/5E0546AF" Ref="R?"  Part="1" 
F 0 "R?" V 3600 3350 50  0000 C CNN
F 1 "10k" V 3700 3350 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 3430 3350 50  0001 C CNN
F 3 "~" H 3500 3350 50  0001 C CNN
	1    3500 3350
	0    1    1    0   
$EndComp
$Comp
L Switch:SW_Push_Dual SW?
U 1 1 5E0546B5
P 2350 3600
AR Path="/5E0546B5" Ref="SW?"  Part="1" 
AR Path="/5E0480C4/5E0546B5" Ref="SW?"  Part="1" 
F 0 "SW?" H 2350 3800 50  0000 C CNN
F 1 "SW_Push_Dual" H 2350 3300 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_MEC_5GSH9" H 2350 3800 50  0001 C CNN
F 3 "~" H 2350 3800 50  0001 C CNN
	1    2350 3600
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push_Dual SW?
U 1 1 5E0546BB
P 1950 6200
AR Path="/5E0546BB" Ref="SW?"  Part="1" 
AR Path="/5E0480C4/5E0546BB" Ref="SW?"  Part="1" 
F 0 "SW?" H 1950 6400 50  0000 C CNN
F 1 "SW_Push_Dual" H 1950 5900 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_MEC_5GSH9" H 1950 6400 50  0001 C CNN
F 3 "~" H 1950 6400 50  0001 C CNN
	1    1950 6200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 6200 2200 6200
Wire Wire Line
	2200 6200 2200 6300
Wire Wire Line
	2200 6400 2150 6400
Connection ~ 2200 6300
Wire Wire Line
	2200 6300 2200 6400
Wire Wire Line
	1750 6200 1700 6200
Wire Wire Line
	1700 6200 1700 6300
Wire Wire Line
	1700 6400 1750 6400
Wire Wire Line
	1600 6300 1700 6300
Connection ~ 1700 6300
Wire Wire Line
	1700 6300 1700 6400
Wire Wire Line
	5250 3750 5350 3750
$Comp
L power:GND #PWR?
U 1 1 5E0546CD
P 2000 4050
AR Path="/5E0546CD" Ref="#PWR?"  Part="1" 
AR Path="/5E0480C4/5E0546CD" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 2000 3800 50  0001 C CNN
F 1 "GND" H 2005 3877 50  0000 C CNN
F 2 "" H 2000 4050 50  0001 C CNN
F 3 "" H 2000 4050 50  0001 C CNN
	1    2000 4050
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5E0546D3
P 2000 2500
AR Path="/5E0546D3" Ref="#PWR?"  Part="1" 
AR Path="/5E0480C4/5E0546D3" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 2000 2350 50  0001 C CNN
F 1 "+5V" H 2015 2673 50  0000 C CNN
F 2 "" H 2000 2500 50  0001 C CNN
F 3 "" H 2000 2500 50  0001 C CNN
	1    2000 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 2850 1500 2850
$Comp
L Device:C C?
U 1 1 5E0546DA
P 1350 3350
AR Path="/5E0546DA" Ref="C?"  Part="1" 
AR Path="/5E0480C4/5E0546DA" Ref="C?"  Part="1" 
F 0 "C?" H 1465 3396 50  0000 L CNN
F 1 "0.1u" H 1465 3305 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 1388 3200 50  0001 C CNN
F 3 "~" H 1350 3350 50  0001 C CNN
	1    1350 3350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E0546E0
P 1350 3500
AR Path="/5E0546E0" Ref="#PWR?"  Part="1" 
AR Path="/5E0480C4/5E0546E0" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 1350 3250 50  0001 C CNN
F 1 "GND" H 1355 3327 50  0000 C CNN
F 2 "" H 1350 3500 50  0001 C CNN
F 3 "" H 1350 3500 50  0001 C CNN
	1    1350 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 2550 2000 2650
Wire Wire Line
	1450 2550 1450 2850
Connection ~ 2000 2550
Wire Wire Line
	2000 2550 1450 2550
Wire Wire Line
	2000 2500 2000 2550
Wire Wire Line
	1350 3200 1350 3150
Wire Wire Line
	1350 3150 1500 3150
Wire Wire Line
	2550 3600 2600 3600
Wire Wire Line
	2600 3800 2550 3800
Wire Wire Line
	2000 3350 2000 3600
Wire Wire Line
	2150 3600 2000 3600
Connection ~ 2000 3600
Wire Wire Line
	2000 3600 2000 3800
Wire Wire Line
	2150 3800 2000 3800
Connection ~ 2000 3800
Wire Wire Line
	2000 3800 2000 4050
$Comp
L Device:D_Schottky D?
U 1 1 5E0546F6
P 2800 3000
AR Path="/5E0546F6" Ref="D?"  Part="1" 
AR Path="/5E0480C4/5E0546F6" Ref="D?"  Part="1" 
F 0 "D?" H 2800 2900 50  0000 C CNN
F 1 "D_Schottky" H 2800 3100 50  0000 C CNN
F 2 "Diode_SMD:D_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 2800 3000 50  0001 C CNN
F 3 "~" H 2800 3000 50  0001 C CNN
	1    2800 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 3000 2500 3000
Wire Wire Line
	2600 3600 2600 3700
Connection ~ 2600 3700
Wire Wire Line
	2600 3700 2600 3800
Wire Wire Line
	2950 3000 3100 3000
Wire Wire Line
	3100 3000 3100 3350
Connection ~ 3100 3350
Wire Wire Line
	3100 3350 3100 3700
Wire Wire Line
	3100 3350 3250 3350
Connection ~ 3250 3350
Wire Wire Line
	2600 3700 3100 3700
Wire Wire Line
	4550 3350 4600 3350
$Comp
L 74xx:74LS04 U?
U 1 1 5E054708
P 4250 3350
AR Path="/5E054708" Ref="U?"  Part="1" 
AR Path="/5E0480C4/5E054708" Ref="U?"  Part="1" 
F 0 "U?" H 4250 3667 50  0000 C CNN
F 1 "74LS04" H 4250 3576 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 4250 3350 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 4250 3350 50  0001 C CNN
	1    4250 3350
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS04 U?
U 2 1 5E05470E
P 4950 3750
AR Path="/5E05470E" Ref="U?"  Part="2" 
AR Path="/5E0480C4/5E05470E" Ref="U?"  Part="2" 
F 0 "U?" H 4950 4067 50  0000 C CNN
F 1 "74LS04" H 4950 3976 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 4950 3750 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 4950 3750 50  0001 C CNN
	2    4950 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 3350 4600 3750
Wire Wire Line
	4600 3750 4650 3750
Connection ~ 4600 3350
Wire Wire Line
	4600 3350 5550 3350
Wire Wire Line
	3950 3350 3800 3350
$Comp
L Device:C C?
U 1 1 5E054719
P 3800 3650
AR Path="/5E054719" Ref="C?"  Part="1" 
AR Path="/5E0480C4/5E054719" Ref="C?"  Part="1" 
F 0 "C?" H 3915 3696 50  0000 L CNN
F 1 "0.1u" H 3915 3605 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3838 3500 50  0001 C CNN
F 3 "~" H 3800 3650 50  0001 C CNN
	1    3800 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 3500 3800 3350
Connection ~ 3800 3350
Wire Wire Line
	3650 3350 3800 3350
$Comp
L power:GND #PWR?
U 1 1 5E054722
P 3800 3800
AR Path="/5E054722" Ref="#PWR?"  Part="1" 
AR Path="/5E0480C4/5E054722" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3800 3550 50  0001 C CNN
F 1 "GND" H 3805 3627 50  0000 C CNN
F 2 "" H 3800 3800 50  0001 C CNN
F 3 "" H 3800 3800 50  0001 C CNN
	1    3800 3800
	1    0    0    -1  
$EndComp
Text GLabel 5550 3350 2    50   Input ~ 0
RST
Text GLabel 5550 3750 2    50   Input ~ 0
-RST-
Text GLabel 4900 5750 2    50   Input ~ 0
SYS_CLK
$Comp
L Connector:TestPoint_Probe TP?
U 1 1 5E05472B
P 5350 4000
AR Path="/5E05472B" Ref="TP?"  Part="1" 
AR Path="/5E0480C4/5E05472B" Ref="TP?"  Part="1" 
F 0 "TP?" V 5358 4153 50  0000 L CNN
F 1 "TestPoint_Probe" V 5449 4153 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.5mm" H 5550 4000 50  0001 C CNN
F 3 "~" H 5550 4000 50  0001 C CNN
	1    5350 4000
	0    1    1    0   
$EndComp
Wire Wire Line
	5350 4000 5350 3750
Connection ~ 5350 3750
Wire Wire Line
	5350 3750 5550 3750
$Comp
L Connector:TestPoint_Probe TP?
U 1 1 5E054734
P 4700 5500
AR Path="/5E054734" Ref="TP?"  Part="1" 
AR Path="/5E0480C4/5E054734" Ref="TP?"  Part="1" 
F 0 "TP?" H 4853 5601 50  0000 L CNN
F 1 "TestPoint_Probe" H 4853 5510 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_D1.5mm" H 4900 5500 50  0001 C CNN
F 3 "~" H 4900 5500 50  0001 C CNN
	1    4700 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 5500 4700 5750
Connection ~ 4700 5750
Wire Wire Line
	4700 5750 4900 5750
$Comp
L z80-project:LP3470 U?
U 1 1 5E05473D
P 2000 3000
AR Path="/5E05473D" Ref="U?"  Part="1" 
AR Path="/5E0480C4/5E05473D" Ref="U?"  Part="1" 
F 0 "U?" H 2200 3300 50  0000 L CNN
F 1 "LP3470" H 2100 2700 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5_HandSoldering" H 3000 2650 50  0001 C CNN
F 3 "https://www.promelec.ru/pdf/LP3470.pdf" H 3000 2650 50  0001 C CNN
	1    2000 3000
	1    0    0    -1  
$EndComp
Wire Notes Line width 39 style solid rgb(0, 0, 0)
	500  500  800  500 
Wire Notes Line width 39 style solid rgb(0, 0, 0)
	800  500  5450 500 
Wire Notes Line width 39 style solid rgb(0, 0, 0)
	5450 500  5450 2150
Wire Notes Line width 39 style solid rgb(0, 0, 0)
	5450 2150 500  2150
Wire Notes Line width 39 style solid rgb(0, 0, 0)
	500  2150 500  500 
Text Notes 550  700  0    98   ~ 20
Power
$EndSCHEMATC