EESchema Schematic File Version 4
LIBS:full-schematic-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 3
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
L 74xx:74LS04 U?
U 7 1 5DEB49FB
P 1850 1800
AR Path="/5DEB49FB" Ref="U?"  Part="7" 
AR Path="/5DEAD379/5DEB49FB" Ref="U2"  Part="7" 
F 0 "U2" H 1950 2150 50  0000 C CNN
F 1 "74LS04" H 2000 1450 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 1850 1800 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS04" H 1850 1800 50  0001 C CNN
	7    1850 1800
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5DEB4A01
P 1850 1300
AR Path="/5DEB4A01" Ref="#PWR?"  Part="1" 
AR Path="/5DEAD379/5DEB4A01" Ref="#PWR024"  Part="1" 
F 0 "#PWR024" H 1850 1150 50  0001 C CNN
F 1 "+5V" H 1865 1473 50  0000 C CNN
F 2 "" H 1850 1300 50  0001 C CNN
F 3 "" H 1850 1300 50  0001 C CNN
	1    1850 1300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DEB4A07
P 1850 2300
AR Path="/5DEB4A07" Ref="#PWR?"  Part="1" 
AR Path="/5DEAD379/5DEB4A07" Ref="#PWR025"  Part="1" 
F 0 "#PWR025" H 1850 2050 50  0001 C CNN
F 1 "GND" H 1855 2127 50  0000 C CNN
F 2 "" H 1850 2300 50  0001 C CNN
F 3 "" H 1850 2300 50  0001 C CNN
	1    1850 2300
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74LS32 U?
U 5 1 5DECAA88
P 3000 1800
AR Path="/5D5CBDC9/5DECAA88" Ref="U?"  Part="5" 
AR Path="/5DEAD379/5DECAA88" Ref="U4"  Part="5" 
F 0 "U4" H 2800 2150 50  0000 C CNN
F 1 "74LS32" H 3200 2150 50  0000 C CNN
F 2 "" H 3000 1800 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74LS32" H 3000 1800 50  0001 C CNN
	5    3000 1800
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5DECAA8E
P 3000 1300
AR Path="/5DECAA8E" Ref="#PWR?"  Part="1" 
AR Path="/5D5CBDC9/5DECAA8E" Ref="#PWR?"  Part="1" 
AR Path="/5DEAD379/5DECAA8E" Ref="#PWR026"  Part="1" 
F 0 "#PWR026" H 3000 1150 50  0001 C CNN
F 1 "+5V" H 3015 1473 50  0000 C CNN
F 2 "" H 3000 1300 50  0001 C CNN
F 3 "" H 3000 1300 50  0001 C CNN
	1    3000 1300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DECAA94
P 3000 2300
AR Path="/5DECAA94" Ref="#PWR?"  Part="1" 
AR Path="/5D5CBDC9/5DECAA94" Ref="#PWR?"  Part="1" 
AR Path="/5DEAD379/5DECAA94" Ref="#PWR027"  Part="1" 
F 0 "#PWR027" H 3000 2050 50  0001 C CNN
F 1 "GND" H 3005 2127 50  0000 C CNN
F 2 "" H 3000 2300 50  0001 C CNN
F 3 "" H 3000 2300 50  0001 C CNN
	1    3000 2300
	1    0    0    -1  
$EndComp
$EndSCHEMATC
