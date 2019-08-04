EESchema Schematic File Version 4
LIBS:z80-breadboard-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 2
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
L MCU_Microchip_PIC16:PIC16F882-IP U8
U 1 1 5DE696C0
P 5950 3750
F 0 "U8" H 5350 4750 50  0000 C CNN
F 1 "PIC16F882-IP" H 6550 4750 50  0000 C CNN
F 2 "" H 5950 3750 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/41291D.pdf" H 5950 3550 50  0001 C CNN
	1    5950 3750
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x06 J4
U 1 1 5DE6A642
P 10300 1700
F 0 "J4" H 10380 1692 50  0000 L CNN
F 1 "Conn_01x06" H 10380 1601 50  0000 L CNN
F 2 "" H 10300 1700 50  0001 C CNN
F 3 "~" H 10300 1700 50  0001 C CNN
	1    10300 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	10100 1500 9950 1500
Wire Wire Line
	10100 1800 9550 1800
Wire Wire Line
	10100 1900 9550 1900
Text Label 9550 1500 0    50   ~ 0
-MCLR-
$Comp
L power:GND #PWR024
U 1 1 5DE6E863
P 9550 1700
F 0 "#PWR024" H 9550 1450 50  0001 C CNN
F 1 "GND" V 9555 1572 50  0000 R CNN
F 2 "" H 9550 1700 50  0001 C CNN
F 3 "" H 9550 1700 50  0001 C CNN
	1    9550 1700
	0    1    1    0   
$EndComp
Text Label 9550 1800 0    50   ~ 0
ICSPD
Text Label 9550 1900 0    50   ~ 0
ICSPC
Wire Wire Line
	9550 1600 10100 1600
Wire Wire Line
	9550 1700 10100 1700
$Comp
L Device:R R?
U 1 1 5DE825DE
P 9950 1250
AR Path="/5DE825DE" Ref="R?"  Part="1" 
AR Path="/5DE59D0B/5DE825DE" Ref="R12"  Part="1" 
F 0 "R12" H 10020 1296 50  0000 L CNN
F 1 "10k" H 10020 1205 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 9880 1250 50  0001 C CNN
F 3 "~" H 9950 1250 50  0001 C CNN
	1    9950 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	9950 1400 9950 1500
Connection ~ 9950 1500
Wire Wire Line
	9950 1500 9550 1500
$Comp
L power:+5V #PWR025
U 1 1 5DE82785
P 9950 1100
F 0 "#PWR025" H 9950 950 50  0001 C CNN
F 1 "+5V" H 9965 1273 50  0000 C CNN
F 2 "" H 9950 1100 50  0001 C CNN
F 3 "" H 9950 1100 50  0001 C CNN
	1    9950 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	7250 4550 7400 4550
Wire Wire Line
	7250 4450 7300 4450
Text Label 7400 4900 1    50   ~ 0
ICSPD
Text Label 7300 4900 1    50   ~ 0
ICSPC
Wire Wire Line
	4650 2950 4100 2950
Text Label 4100 2950 0    50   ~ 0
-MCLR-
Wire Wire Line
	5950 4850 5950 4950
Wire Wire Line
	5950 4950 6000 4950
Wire Wire Line
	6050 4950 6050 4850
Wire Wire Line
	6000 4950 6000 5050
Connection ~ 6000 4950
Wire Wire Line
	6000 4950 6050 4950
$Comp
L power:GND #PWR022
U 1 1 5DE8B4B0
P 6000 5050
F 0 "#PWR022" H 6000 4800 50  0001 C CNN
F 1 "GND" H 6005 4877 50  0000 C CNN
F 2 "" H 6000 5050 50  0001 C CNN
F 3 "" H 6000 5050 50  0001 C CNN
	1    6000 5050
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR021
U 1 1 5DE8C3F3
P 5850 2250
F 0 "#PWR021" H 5850 2100 50  0001 C CNN
F 1 "+5V" H 5865 2423 50  0000 C CNN
F 2 "" H 5850 2250 50  0001 C CNN
F 3 "" H 5850 2250 50  0001 C CNN
	1    5850 2250
	-1   0    0    1   
$EndComp
Entry Wire Line
	7800 3550 7700 3650
Entry Wire Line
	7800 3450 7700 3550
Entry Wire Line
	7800 3350 7700 3450
Entry Wire Line
	7800 3250 7700 3350
Entry Wire Line
	7800 3150 7700 3250
Entry Wire Line
	7800 3050 7700 3150
Entry Wire Line
	7800 2950 7700 3050
Entry Wire Line
	7800 2850 7700 2950
Wire Wire Line
	7700 2950 7250 2950
Wire Wire Line
	7250 3050 7700 3050
Wire Wire Line
	7700 3150 7250 3150
Wire Wire Line
	7250 3250 7700 3250
Wire Wire Line
	7700 3350 7250 3350
Wire Wire Line
	7250 3450 7700 3450
Wire Wire Line
	7700 3550 7250 3550
Wire Wire Line
	7250 3650 7700 3650
Wire Bus Line
	7800 2850 8300 2850
Text HLabel 8300 2850 2    50   Input ~ 0
DATA_BUS
Wire Wire Line
	7700 4150 7250 4150
Entry Wire Line
	7700 4350 7800 4450
Wire Wire Line
	7700 4250 7250 4250
Wire Wire Line
	7700 4350 7250 4350
Text HLabel 7700 3950 2    50   Input ~ 0
-RD-
Text HLabel 7700 4050 2    50   Input ~ 0
-WR-
Wire Wire Line
	4650 4550 4100 4550
Text Label 4100 4550 0    50   ~ 0
UART_RX
Wire Wire Line
	4650 4450 4100 4450
Text Label 4100 4450 0    50   ~ 0
UART_TX
Wire Wire Line
	4650 4250 4100 4250
Text Label 4100 4250 0    50   ~ 0
I2C_SDA
Wire Wire Line
	4650 4150 4100 4150
Text Label 4100 4150 0    50   ~ 0
I2C_SCL
Wire Wire Line
	4650 3850 4100 3850
Text Label 4100 3850 0    50   ~ 0
IO1
Wire Wire Line
	4650 3950 4100 3950
Text Label 4100 3950 0    50   ~ 0
IO2
Wire Wire Line
	4650 4050 4100 4050
Text Label 4100 4050 0    50   ~ 0
IO3
Wire Wire Line
	4650 4350 4100 4350
Text Label 4100 4350 0    50   ~ 0
IO4
$Comp
L Connector_Generic:Conn_01x04 J1
U 1 1 5DEAA66C
P 1950 3300
F 0 "J1" H 1868 2875 50  0000 C CNN
F 1 "Conn_01x04" H 1868 2966 50  0000 C CNN
F 2 "" H 1950 3300 50  0001 C CNN
F 3 "~" H 1950 3300 50  0001 C CNN
	1    1950 3300
	-1   0    0    1   
$EndComp
Wire Wire Line
	2150 3100 2700 3100
Text Label 2700 3100 2    50   ~ 0
IO1
Wire Wire Line
	2150 3200 2700 3200
Text Label 2700 3200 2    50   ~ 0
IO2
Wire Wire Line
	2150 3300 2700 3300
Text Label 2700 3300 2    50   ~ 0
IO3
Wire Wire Line
	2150 3400 2700 3400
Text Label 2700 3400 2    50   ~ 0
IO4
$Comp
L Connector_Generic:Conn_01x02 J2
U 1 1 5DEAF983
P 1950 4650
F 0 "J2" H 1868 4325 50  0000 C CNN
F 1 "Conn_01x02" H 1868 4416 50  0000 C CNN
F 2 "" H 1950 4650 50  0001 C CNN
F 3 "~" H 1950 4650 50  0001 C CNN
	1    1950 4650
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J3
U 1 1 5DEB014E
P 1950 5150
F 0 "J3" H 1868 4825 50  0000 C CNN
F 1 "Conn_01x02" H 1868 4916 50  0000 C CNN
F 2 "" H 1950 5150 50  0001 C CNN
F 3 "~" H 1950 5150 50  0001 C CNN
	1    1950 5150
	-1   0    0    1   
$EndComp
Wire Wire Line
	2150 4550 2700 4550
Text Label 2700 4550 2    50   ~ 0
I2C_SCL
Wire Wire Line
	2150 4650 2700 4650
Text Label 2700 4650 2    50   ~ 0
I2C_SDA
Wire Wire Line
	2150 5050 2700 5050
Text Label 2700 5050 2    50   ~ 0
UART_TX
Wire Wire Line
	2150 5150 2700 5150
Text Label 2700 5150 2    50   ~ 0
UART_RX
Text Notes 8900 950  0    79   ~ 16
ICSP
Wire Notes Line width 20 style solid rgb(0, 0, 0)
	8800 2300 8800 750 
Wire Notes Line width 20 style solid rgb(0, 0, 0)
	8800 750  10950 750 
Wire Notes Line width 20 style solid rgb(0, 0, 0)
	10950 750  10950 2300
Wire Notes Line width 20 style solid rgb(0, 0, 0)
	8800 2300 10950 2300
Wire Wire Line
	7300 4450 7300 4900
Wire Wire Line
	7400 4550 7400 4900
Text Label 7700 2950 2    50   ~ 0
D0
Text Label 7700 3050 2    50   ~ 0
D1
Text Label 7700 3150 2    50   ~ 0
D2
Text Label 7700 3250 2    50   ~ 0
D3
Text Label 7700 3350 2    50   ~ 0
D4
Text Label 7700 3450 2    50   ~ 0
D5
Text Label 7700 3550 2    50   ~ 0
D6
Text Label 7700 3650 2    50   ~ 0
D7
Text Label 7700 4150 2    50   ~ 0
A0
Text Label 7700 4250 2    50   ~ 0
A1
Text Label 7700 4350 2    50   ~ 0
A2
$Comp
L power:VPP #PWR028
U 1 1 5D77D2D1
P 9550 1600
F 0 "#PWR028" H 9550 1450 50  0001 C CNN
F 1 "VPP" V 9565 1727 50  0000 L CNN
F 2 "" H 9550 1600 50  0001 C CNN
F 3 "" H 9550 1600 50  0001 C CNN
	1    9550 1600
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x03 J5
U 1 1 5D77F07D
P 5950 2050
F 0 "J5" V 5914 1862 50  0000 R CNN
F 1 "Conn_01x03" V 5823 1862 50  0000 R CNN
F 2 "" H 5950 2050 50  0001 C CNN
F 3 "~" H 5950 2050 50  0001 C CNN
	1    5950 2050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5950 2250 5950 2650
$Comp
L power:VPP #PWR027
U 1 1 5D7826D7
P 6050 2250
F 0 "#PWR027" H 6050 2100 50  0001 C CNN
F 1 "VPP" H 6065 2423 50  0000 C CNN
F 2 "" H 6050 2250 50  0001 C CNN
F 3 "" H 6050 2250 50  0001 C CNN
	1    6050 2250
	-1   0    0    1   
$EndComp
Text HLabel 8300 4650 2    50   Input ~ 0
ADDR_BUS
Wire Bus Line
	7800 4650 8300 4650
Entry Wire Line
	7700 4250 7800 4350
Entry Wire Line
	7700 4150 7800 4250
Wire Wire Line
	7250 3950 7700 3950
Wire Wire Line
	7250 4050 7700 4050
Entry Wire Line
	7700 4550 7800 4650
Text Label 7700 4450 2    50   ~ 0
A1
Text Label 7700 4550 2    50   ~ 0
A2
Entry Wire Line
	7700 4450 7800 4550
Wire Wire Line
	7700 4450 7300 4450
Connection ~ 7300 4450
Wire Wire Line
	7400 4550 7700 4550
Connection ~ 7400 4550
$Comp
L 74xx:74LS00 U11
U 1 1 5D5D7CBC
P 9600 3950
F 0 "U11" H 9600 3750 50  0000 C CNN
F 1 "74LS00" H 9600 4150 50  0000 C CNN
F 2 "" H 9600 3950 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74ls00" H 9600 3950 50  0001 C CNN
	1    9600 3950
	-1   0    0    1   
$EndComp
$Comp
L 74xx:74LS04 U?
U 2 1 5D5EF060
P 9000 3950
AR Path="/5D5EF060" Ref="U?"  Part="1" 
AR Path="/5DE59D0B/5D5EF060" Ref="U5"  Part="2" 
F 0 "U5" H 9050 3750 50  0000 C CNN
F 1 "74LS04" H 9000 4150 50  0000 C CNN
F 2 "" H 9000 3950 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 9000 3950 50  0001 C CNN
	2    9000 3950
	-1   0    0    1   
$EndComp
Text HLabel 9900 3850 2    50   Input ~ 0
-RD-
Text HLabel 9900 4050 2    50   Input ~ 0
-WR-
Wire Wire Line
	8100 3850 7250 3850
$Comp
L 74xx:74LS32 U?
U 3 1 5D61E4BD
P 8400 3850
AR Path="/5D61E4BD" Ref="U?"  Part="2" 
AR Path="/5DE59D0B/5D61E4BD" Ref="U4"  Part="3" 
F 0 "U4" H 8350 3650 50  0000 C CNN
F 1 "74LS32" H 8350 4050 50  0000 C CNN
F 2 "" H 8400 3850 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 8400 3850 50  0001 C CNN
	3    8400 3850
	-1   0    0    1   
$EndComp
Wire Wire Line
	8700 3750 8800 3750
Wire Wire Line
	8800 3750 8800 3500
Wire Wire Line
	8800 3500 9000 3500
Wire Bus Line
	7800 4250 7800 4650
Wire Bus Line
	7800 2850 7800 3550
Text HLabel 9000 3500 2    50   Input ~ 0
-CS-
$EndSCHEMATC
