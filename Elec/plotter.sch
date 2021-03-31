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
L Connector:Conn_01x04_Male J33
U 1 1 60562C7A
P 5050 5100
F 0 "J33" H 5022 4982 50  0000 R CNN
F 1 "Conn_01x04_Male" H 5022 5073 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 5050 5100 50  0001 C CNN
F 3 "~" H 5050 5100 50  0001 C CNN
	1    5050 5100
	-1   0    0    1   
$EndComp
$Comp
L shield:Arduino_Uno_Shield XA1
U 1 1 605645C3
P 5250 2600
F 0 "XA1" H 5250 3987 60  0000 C CNN
F 1 "Arduino_Uno_Shield" H 5250 3881 60  0000 C CNN
F 2 "plotter:Arduino_Uno_Shield" H 7050 6350 60  0001 C CNN
F 3 "https://store.arduino.cc/arduino-uno-rev3" H 7050 6350 60  0001 C CNN
	1    5250 2600
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x08_Female J32
U 1 1 60568EC9
P 3450 4950
F 0 "J32" H 3478 4926 50  0000 L CNN
F 1 "Conn_01x08_Female" H 3478 4835 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x08_P2.54mm_Vertical" H 3450 4950 50  0001 C CNN
F 3 "~" H 3450 4950 50  0001 C CNN
	1    3450 4950
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x08_Female J31
U 1 1 60569BBE
P 4200 5100
F 0 "J31" H 4092 4475 50  0000 C CNN
F 1 "Conn_01x08_Female" H 4092 4566 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x08_P2.54mm_Vertical" H 4200 5100 50  0001 C CNN
F 3 "~" H 4200 5100 50  0001 C CNN
	1    4200 5100
	-1   0    0    1   
$EndComp
Wire Wire Line
	4850 5200 4400 5200
Wire Wire Line
	4400 5100 4850 5100
Wire Wire Line
	4850 5000 4400 5000
Wire Wire Line
	4400 4900 4850 4900
$Comp
L Connector:Conn_01x02_Female J7
U 1 1 60585833
P 650 1200
F 0 "J7" H 542 875 50  0000 C CNN
F 1 "Conn_01x02_Female" H 542 966 50  0000 C CNN
F 2 "Connector_BarrelJack:BarrelJack_Horizontal" H 650 1200 50  0001 C CNN
F 3 "~" H 650 1200 50  0001 C CNN
	1    650  1200
	-1   0    0    1   
$EndComp
Text Notes 850  700  0    50   ~ 0
9V\n
Wire Wire Line
	850  1200 1000 1200
Text Label 1150 1100 0    50   ~ 0
Vpwr
$Comp
L power:GND #PWR0101
U 1 1 60587DA8
P 1150 1200
F 0 "#PWR0101" H 1150 950 50  0001 C CNN
F 1 "GND" H 1155 1027 50  0000 C CNN
F 2 "" H 1150 1200 50  0001 C CNN
F 3 "" H 1150 1200 50  0001 C CNN
	1    1150 1200
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 605882C2
P 1250 1200
F 0 "#FLG0101" H 1250 1275 50  0001 C CNN
F 1 "PWR_FLAG" V 1250 1328 50  0000 L CNN
F 2 "" H 1250 1200 50  0001 C CNN
F 3 "~" H 1250 1200 50  0001 C CNN
	1    1250 1200
	0    1    1    0   
$EndComp
Wire Wire Line
	1250 1200 1150 1200
Connection ~ 1150 1200
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 60588B12
P 1450 1100
F 0 "#FLG0102" H 1450 1175 50  0001 C CNN
F 1 "PWR_FLAG" V 1450 1228 50  0000 L CNN
F 2 "" H 1450 1100 50  0001 C CNN
F 3 "~" H 1450 1100 50  0001 C CNN
	1    1450 1100
	0    1    1    0   
$EndComp
Wire Wire Line
	850  1100 1050 1100
$Comp
L power:GND #PWR0102
U 1 1 6058A60D
P 4550 5450
F 0 "#PWR0102" H 4550 5200 50  0001 C CNN
F 1 "GND" H 4555 5277 50  0000 C CNN
F 2 "" H 4550 5450 50  0001 C CNN
F 3 "" H 4550 5450 50  0001 C CNN
	1    4550 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 5450 4550 5400
Wire Wire Line
	4550 5400 4400 5400
$Comp
L power:GND #PWR0103
U 1 1 6058AF41
P 5500 4800
F 0 "#PWR0103" H 5500 4550 50  0001 C CNN
F 1 "GND" H 5505 4627 50  0000 C CNN
F 2 "" H 5500 4800 50  0001 C CNN
F 3 "" H 5500 4800 50  0001 C CNN
	1    5500 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 4800 4400 4800
Text Label 4400 4700 0    50   ~ 0
Vpwr
$Comp
L power:+5V #PWR0104
U 1 1 6058D511
P 3450 3500
F 0 "#PWR0104" H 3450 3350 50  0001 C CNN
F 1 "+5V" H 3465 3673 50  0000 C CNN
F 2 "" H 3450 3500 50  0001 C CNN
F 3 "" H 3450 3500 50  0001 C CNN
	1    3450 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 3550 3450 3550
Wire Wire Line
	3450 3550 3450 3500
$Comp
L power:+5V #PWR0105
U 1 1 6058E3A6
P 5300 5300
F 0 "#PWR0105" H 5300 5150 50  0001 C CNN
F 1 "+5V" H 5315 5473 50  0000 C CNN
F 2 "" H 5300 5300 50  0001 C CNN
F 3 "" H 5300 5300 50  0001 C CNN
	1    5300 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 5300 4400 5300
Wire Wire Line
	3250 5150 3250 5050
$Comp
L Connector:Conn_01x04_Male J43
U 1 1 6059935D
P 5050 6700
F 0 "J43" H 5022 6582 50  0000 R CNN
F 1 "Conn_01x04_Male" H 5022 6673 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 5050 6700 50  0001 C CNN
F 3 "~" H 5050 6700 50  0001 C CNN
	1    5050 6700
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x08_Female J42
U 1 1 60599363
P 3450 6550
F 0 "J42" H 3478 6526 50  0000 L CNN
F 1 "Conn_01x08_Female" H 3478 6435 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x08_P2.54mm_Vertical" H 3450 6550 50  0001 C CNN
F 3 "~" H 3450 6550 50  0001 C CNN
	1    3450 6550
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x08_Female J41
U 1 1 60599369
P 4200 6700
F 0 "J41" H 4092 6075 50  0000 C CNN
F 1 "Conn_01x08_Female" H 4092 6166 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x08_P2.54mm_Vertical" H 4200 6700 50  0001 C CNN
F 3 "~" H 4200 6700 50  0001 C CNN
	1    4200 6700
	-1   0    0    1   
$EndComp
Wire Wire Line
	4850 6800 4400 6800
Wire Wire Line
	4400 6700 4850 6700
Wire Wire Line
	4850 6600 4400 6600
Wire Wire Line
	4400 6500 4850 6500
$Comp
L power:GND #PWR0106
U 1 1 60599373
P 4550 7050
F 0 "#PWR0106" H 4550 6800 50  0001 C CNN
F 1 "GND" H 4555 6877 50  0000 C CNN
F 2 "" H 4550 7050 50  0001 C CNN
F 3 "" H 4550 7050 50  0001 C CNN
	1    4550 7050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 7050 4550 7000
Wire Wire Line
	4550 7000 4400 7000
$Comp
L power:GND #PWR0107
U 1 1 6059937B
P 5500 6400
F 0 "#PWR0107" H 5500 6150 50  0001 C CNN
F 1 "GND" H 5505 6227 50  0000 C CNN
F 2 "" H 5500 6400 50  0001 C CNN
F 3 "" H 5500 6400 50  0001 C CNN
	1    5500 6400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 6400 4400 6400
Text Label 4400 6300 0    50   ~ 0
Vpwr
$Comp
L power:+5V #PWR0108
U 1 1 60599383
P 5300 6900
F 0 "#PWR0108" H 5300 6750 50  0001 C CNN
F 1 "+5V" H 5315 7073 50  0000 C CNN
F 2 "" H 5300 6900 50  0001 C CNN
F 3 "" H 5300 6900 50  0001 C CNN
	1    5300 6900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 6900 4400 6900
Wire Wire Line
	3250 6750 3250 6650
$Comp
L Connector:Conn_01x03_Male J3
U 1 1 605B00FF
P 8300 2650
F 0 "J3" H 8272 2582 50  0000 R CNN
F 1 "Conn_01x03_Male" H 8272 2673 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 8300 2650 50  0001 C CNN
F 3 "~" H 8300 2650 50  0001 C CNN
	1    8300 2650
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0109
U 1 1 605B25F1
P 7850 2750
F 0 "#PWR0109" H 7850 2500 50  0001 C CNN
F 1 "GND" H 7855 2577 50  0000 C CNN
F 2 "" H 7850 2750 50  0001 C CNN
F 3 "" H 7850 2750 50  0001 C CNN
	1    7850 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	8100 2750 7850 2750
$Comp
L power:+5V #PWR0110
U 1 1 605B30D9
P 7750 2650
F 0 "#PWR0110" H 7750 2500 50  0001 C CNN
F 1 "+5V" H 7765 2823 50  0000 C CNN
F 2 "" H 7750 2650 50  0001 C CNN
F 3 "" H 7750 2650 50  0001 C CNN
	1    7750 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	7750 2650 8100 2650
$Comp
L Connector:Conn_01x03_Male J2
U 1 1 605B7360
P 8250 2050
F 0 "J2" H 8222 1982 50  0000 R CNN
F 1 "Conn_01x03_Male" H 8222 2073 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 8250 2050 50  0001 C CNN
F 3 "~" H 8250 2050 50  0001 C CNN
	1    8250 2050
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0111
U 1 1 605B7366
P 7800 2150
F 0 "#PWR0111" H 7800 1900 50  0001 C CNN
F 1 "GND" H 7805 1977 50  0000 C CNN
F 2 "" H 7800 2150 50  0001 C CNN
F 3 "" H 7800 2150 50  0001 C CNN
	1    7800 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	8050 2150 7800 2150
$Comp
L power:+5V #PWR0112
U 1 1 605B736D
P 7700 2050
F 0 "#PWR0112" H 7700 1900 50  0001 C CNN
F 1 "+5V" H 7715 2223 50  0000 C CNN
F 2 "" H 7700 2050 50  0001 C CNN
F 3 "" H 7700 2050 50  0001 C CNN
	1    7700 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	7700 2050 8050 2050
$Comp
L Connector:Conn_01x03_Male J1
U 1 1 605B8134
P 8200 1400
F 0 "J1" H 8172 1332 50  0000 R CNN
F 1 "Conn_01x03_Male" H 8172 1423 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 8200 1400 50  0001 C CNN
F 3 "~" H 8200 1400 50  0001 C CNN
	1    8200 1400
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0113
U 1 1 605B813A
P 7750 1500
F 0 "#PWR0113" H 7750 1250 50  0001 C CNN
F 1 "GND" H 7755 1327 50  0000 C CNN
F 2 "" H 7750 1500 50  0001 C CNN
F 3 "" H 7750 1500 50  0001 C CNN
	1    7750 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	8000 1500 7750 1500
$Comp
L power:+5V #PWR0114
U 1 1 605B8141
P 7650 1400
F 0 "#PWR0114" H 7650 1250 50  0001 C CNN
F 1 "+5V" H 7665 1573 50  0000 C CNN
F 2 "" H 7650 1400 50  0001 C CNN
F 3 "" H 7650 1400 50  0001 C CNN
	1    7650 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	7650 1400 8000 1400
$Comp
L Connector:Conn_01x03_Male J4
U 1 1 605B8D93
P 9900 1450
F 0 "J4" H 9872 1382 50  0000 R CNN
F 1 "Conn_01x03_Male" H 9872 1473 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 9900 1450 50  0001 C CNN
F 3 "~" H 9900 1450 50  0001 C CNN
	1    9900 1450
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0115
U 1 1 605B8D99
P 9450 1550
F 0 "#PWR0115" H 9450 1300 50  0001 C CNN
F 1 "GND" H 9455 1377 50  0000 C CNN
F 2 "" H 9450 1550 50  0001 C CNN
F 3 "" H 9450 1550 50  0001 C CNN
	1    9450 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	9700 1550 9450 1550
$Comp
L power:+5V #PWR0116
U 1 1 605B8DA0
P 9350 1450
F 0 "#PWR0116" H 9350 1300 50  0001 C CNN
F 1 "+5V" H 9365 1623 50  0000 C CNN
F 2 "" H 9350 1450 50  0001 C CNN
F 3 "" H 9350 1450 50  0001 C CNN
	1    9350 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	9350 1450 9700 1450
$Comp
L Connector:Conn_01x03_Male J5
U 1 1 605B9D29
P 9900 2150
F 0 "J5" H 9872 2082 50  0000 R CNN
F 1 "Conn_01x03_Male" H 9872 2173 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 9900 2150 50  0001 C CNN
F 3 "~" H 9900 2150 50  0001 C CNN
	1    9900 2150
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0117
U 1 1 605B9D2F
P 9450 2250
F 0 "#PWR0117" H 9450 2000 50  0001 C CNN
F 1 "GND" H 9455 2077 50  0000 C CNN
F 2 "" H 9450 2250 50  0001 C CNN
F 3 "" H 9450 2250 50  0001 C CNN
	1    9450 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	9700 2250 9450 2250
$Comp
L power:+5V #PWR0118
U 1 1 605B9D36
P 9350 2150
F 0 "#PWR0118" H 9350 2000 50  0001 C CNN
F 1 "+5V" H 9365 2323 50  0000 C CNN
F 2 "" H 9350 2150 50  0001 C CNN
F 3 "" H 9350 2150 50  0001 C CNN
	1    9350 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	9350 2150 9700 2150
$Comp
L Connector:Conn_01x03_Male J6
U 1 1 605BAE8C
P 9900 2850
F 0 "J6" H 9872 2782 50  0000 R CNN
F 1 "Conn_01x03_Male" H 9872 2873 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 9900 2850 50  0001 C CNN
F 3 "~" H 9900 2850 50  0001 C CNN
	1    9900 2850
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0119
U 1 1 605BAE92
P 9450 2950
F 0 "#PWR0119" H 9450 2700 50  0001 C CNN
F 1 "GND" H 9455 2777 50  0000 C CNN
F 2 "" H 9450 2950 50  0001 C CNN
F 3 "" H 9450 2950 50  0001 C CNN
	1    9450 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	9700 2950 9450 2950
$Comp
L power:+5V #PWR0120
U 1 1 605BAE99
P 9350 2850
F 0 "#PWR0120" H 9350 2700 50  0001 C CNN
F 1 "+5V" H 9365 3023 50  0000 C CNN
F 2 "" H 9350 2850 50  0001 C CNN
F 3 "" H 9350 2850 50  0001 C CNN
	1    9350 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	9350 2850 9700 2850
Text Label 7800 1300 0    50   ~ 0
pwm1
Wire Wire Line
	7800 1300 8000 1300
Text Label 7850 1950 0    50   ~ 0
pwm2
Wire Wire Line
	7850 1950 8050 1950
Text Label 7900 2550 0    50   ~ 0
pwm3
Wire Wire Line
	7900 2550 8100 2550
Text Label 9550 1350 0    50   ~ 0
pwm4
Wire Wire Line
	9550 1350 9700 1350
Text Label 9500 2050 0    50   ~ 0
pwm5
Wire Wire Line
	9500 2050 9700 2050
Text Label 9500 2750 0    50   ~ 0
pwm6
Wire Wire Line
	9500 2750 9700 2750
Text Label 6550 1650 0    50   ~ 0
pwm1
Text Label 6550 1850 0    50   ~ 0
pwm2
Text Label 6550 1950 0    50   ~ 0
pwm3
Text Label 6550 2250 0    50   ~ 0
pwm4
Text Label 6550 2350 0    50   ~ 0
pwm5
Text Label 6550 2450 0    50   ~ 0
pwm6
Text Label 3000 5350 0    50   ~ 0
dir1
Wire Wire Line
	3000 5350 3250 5350
Text Label 3000 5250 0    50   ~ 0
step1
Wire Wire Line
	3000 5250 3250 5250
Text Label 3100 6950 0    50   ~ 0
dir2
Wire Wire Line
	3100 6850 3250 6850
Wire Wire Line
	3100 6950 3250 6950
Text Label 3100 6850 0    50   ~ 0
step2
Text Label 6550 1750 0    50   ~ 0
step1
Text Label 6550 1550 0    50   ~ 0
dir1
Text Label 6550 2550 0    50   ~ 0
step2
Text Label 6550 2650 0    50   ~ 0
dir2
$Comp
L Device:C C2
U 1 1 605DD121
P 2050 1150
F 0 "C2" H 2165 1196 50  0000 L CNN
F 1 "100u" H 2165 1105 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D4.0mm_P2.00mm" H 2088 1000 50  0001 C CNN
F 3 "~" H 2050 1150 50  0001 C CNN
	1    2050 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 1000 1050 1000
Wire Wire Line
	1050 1000 1050 1100
Connection ~ 1050 1100
Wire Wire Line
	1050 1100 1450 1100
Wire Wire Line
	2050 1300 1000 1300
Wire Wire Line
	1000 1300 1000 1200
Connection ~ 1000 1200
Wire Wire Line
	1000 1200 1150 1200
$Comp
L Switch:SW_Push SW1
U 1 1 605E08B1
P 3300 2750
F 0 "SW1" H 3300 3035 50  0000 C CNN
F 1 "SW_Push" H 3300 2944 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm" H 3300 2950 50  0001 C CNN
F 3 "~" H 3300 2950 50  0001 C CNN
	1    3300 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 2750 3500 2750
$Comp
L power:GND #PWR0121
U 1 1 605E42A6
P 2950 2850
F 0 "#PWR0121" H 2950 2600 50  0001 C CNN
F 1 "GND" H 2955 2677 50  0000 C CNN
F 2 "" H 2950 2850 50  0001 C CNN
F 3 "" H 2950 2850 50  0001 C CNN
	1    2950 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 2850 2950 2750
Wire Wire Line
	2950 2750 3100 2750
$Comp
L Device:LED D1
U 1 1 605E6219
P 2650 2550
F 0 "D1" H 2643 2767 50  0000 C CNN
F 1 "LED" H 2643 2676 50  0000 C CNN
F 2 "LED_THT:LED_D4.0mm" H 2650 2550 50  0001 C CNN
F 3 "~" H 2650 2550 50  0001 C CNN
	1    2650 2550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0122
U 1 1 605E6604
P 2500 2550
F 0 "#PWR0122" H 2500 2300 50  0001 C CNN
F 1 "GND" H 2505 2377 50  0000 C CNN
F 2 "" H 2500 2550 50  0001 C CNN
F 3 "" H 2500 2550 50  0001 C CNN
	1    2500 2550
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 605E6CE8
P 2950 2550
F 0 "R1" V 2743 2550 50  0000 C CNN
F 1 "R" V 2834 2550 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2880 2550 50  0001 C CNN
F 3 "~" H 2950 2550 50  0001 C CNN
	1    2950 2550
	0    1    1    0   
$EndComp
Wire Wire Line
	3100 2550 3800 2550
Wire Wire Line
	3800 2550 3800 2650
Wire Wire Line
	3800 2650 3950 2650
$Comp
L power:GND #PWR0123
U 1 1 605EA275
P 3750 3200
F 0 "#PWR0123" H 3750 2950 50  0001 C CNN
F 1 "GND" H 3755 3027 50  0000 C CNN
F 2 "" H 3750 3200 50  0001 C CNN
F 3 "" H 3750 3200 50  0001 C CNN
	1    3750 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 3200 3950 3200
Wire Wire Line
	3950 3150 3950 3200
Connection ~ 3950 3200
Wire Wire Line
	3950 3200 3950 3250
Wire Wire Line
	3950 3250 3950 3350
Connection ~ 3950 3250
Text Label 3550 3650 0    50   ~ 0
Vpwr
Wire Wire Line
	3550 3650 3950 3650
$Comp
L Device:C C3
U 1 1 6058E83F
P 2350 1150
F 0 "C3" H 2465 1196 50  0000 L CNN
F 1 "100u" H 2465 1105 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D4.0mm_P2.00mm" H 2388 1000 50  0001 C CNN
F 3 "~" H 2350 1150 50  0001 C CNN
	1    2350 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 1300 2050 1300
Connection ~ 2050 1300
Wire Wire Line
	2050 1000 2350 1000
Connection ~ 2050 1000
NoConn ~ 6550 2850
NoConn ~ 6550 2950
NoConn ~ 6550 3050
NoConn ~ 6550 3150
NoConn ~ 6550 3250
NoConn ~ 6550 3350
NoConn ~ 6550 3550
NoConn ~ 6550 3650
NoConn ~ 3950 3450
NoConn ~ 3950 2850
NoConn ~ 3950 2550
NoConn ~ 3950 2450
NoConn ~ 3950 2350
NoConn ~ 3950 2250
NoConn ~ 3950 1950
NoConn ~ 3950 1850
NoConn ~ 3950 1650
NoConn ~ 3950 1550
NoConn ~ 6550 2150
NoConn ~ 6550 2050
NoConn ~ 3250 4650
NoConn ~ 3250 4750
NoConn ~ 3250 4850
NoConn ~ 3250 4950
NoConn ~ 3250 6250
NoConn ~ 3250 6350
NoConn ~ 3250 6450
NoConn ~ 3250 6550
$Comp
L Device:C C4
U 1 1 605E3A68
P 1350 1900
F 0 "C4" H 1465 1946 50  0000 L CNN
F 1 "100u" H 1465 1855 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D4.0mm_P2.00mm" H 1388 1750 50  0001 C CNN
F 3 "~" H 1350 1900 50  0001 C CNN
	1    1350 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 1300 2350 1300
Connection ~ 2350 1300
Wire Wire Line
	2350 1000 2750 1000
Connection ~ 2350 1000
$Comp
L power:+5V #PWR?
U 1 1 605F472E
P 1350 1750
F 0 "#PWR?" H 1350 1600 50  0001 C CNN
F 1 "+5V" H 1365 1923 50  0000 C CNN
F 2 "" H 1350 1750 50  0001 C CNN
F 3 "" H 1350 1750 50  0001 C CNN
	1    1350 1750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 605F4C89
P 1350 2050
F 0 "#PWR?" H 1350 1800 50  0001 C CNN
F 1 "GND" H 1355 1877 50  0000 C CNN
F 2 "" H 1350 2050 50  0001 C CNN
F 3 "" H 1350 2050 50  0001 C CNN
	1    1350 2050
	1    0    0    -1  
$EndComp
$EndSCHEMATC
