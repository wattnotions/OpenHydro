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
L Sensor:BME280 U?
U 1 1 5F4C0C85
P 8800 2350
F 0 "U?" H 8371 2396 50  0000 R CNN
F 1 "BME280" H 8371 2305 50  0000 R CNN
F 2 "Package_LGA:Bosch_LGA-8_2.5x2.5mm_P0.65mm_ClockwisePinNumbering" H 10300 1900 50  0001 C CNN
F 3 "https://ae-bst.resource.bosch.com/media/_tech/media/datasheets/BST-BME280-DS002.pdf" H 8800 2150 50  0001 C CNN
	1    8800 2350
	1    0    0    -1  
$EndComp
$Sheet
S 1750 3950 1600 2800
U 5F4E1E8A
F0 "atmega328p" 50
F1 "atmega328p.sch" 50
$EndSheet
$Sheet
S 1300 800  850  850 
U 5F4E110C
F0 "voltage_management" 50
F1 "voltage_management.sch" 50
$EndSheet
$Sheet
S 1300 2050 850  1050
U 5F4E2C52
F0 "voltage_regulator" 50
F1 "voltage_regulator.sch" 50
$EndSheet
$Comp
L Connector:USB_B_Mini J?
U 1 1 5F4E1AA5
P 3775 1200
F 0 "J?" H 3832 1667 50  0000 C CNN
F 1 "USB_B_Mini" H 3832 1576 50  0000 C CNN
F 2 "" H 3925 1150 50  0001 C CNN
F 3 "~" H 3925 1150 50  0001 C CNN
	1    3775 1200
	1    0    0    -1  
$EndComp
$Comp
L Arduino_Uno_R3_From_Scratch-rescue:R R?
U 1 1 5F4E3CCC
P 4600 1200
F 0 "R?" V 4500 1200 50  0000 C CNN
F 1 "27R" V 4600 1200 50  0000 C CNN
F 2 "" V 4530 1200 30  0000 C CNN
F 3 "" H 4600 1200 30  0000 C CNN
	1    4600 1200
	0    1    1    0   
$EndComp
$Comp
L Arduino_Uno_R3_From_Scratch-rescue:R R?
U 1 1 5F4E5156
P 4600 1300
F 0 "R?" V 4700 1300 50  0000 C CNN
F 1 "27R" V 4600 1300 50  0000 C CNN
F 2 "" V 4530 1300 30  0000 C CNN
F 3 "" H 4600 1300 30  0000 C CNN
	1    4600 1300
	0    1    1    0   
$EndComp
$Comp
L Device:Polyfuse F?
U 1 1 5F4E6403
P 4475 900
F 0 "F?" V 4250 900 50  0000 C CNN
F 1 "Polyfuse" V 4341 900 50  0000 C CNN
F 2 "" H 4525 700 50  0001 L CNN
F 3 "~" H 4475 900 50  0001 C CNN
	1    4475 900 
	0    1    1    0   
$EndComp
Wire Wire Line
	4075 1000 4250 1000
Wire Wire Line
	4250 1000 4250 900 
Wire Wire Line
	4250 900  4325 900 
$Comp
L Arduino_Uno_R3_From_Scratch-rescue:USBVCC #PWR?
U 1 1 5F4E7EA2
P 4975 775
F 0 "#PWR?" H 4975 865 20  0001 C CNN
F 1 "USBVCC" H 4971 913 30  0000 C CNN
F 2 "" H 4975 775 60  0000 C CNN
F 3 "" H 4975 775 60  0000 C CNN
	1    4975 775 
	1    0    0    -1  
$EndComp
Wire Wire Line
	4975 900  4975 775 
Wire Wire Line
	4625 900  4975 900 
Wire Wire Line
	4075 1200 4450 1200
Wire Wire Line
	4075 1300 4450 1300
Wire Wire Line
	4750 1200 4925 1200
Wire Wire Line
	4750 1300 4925 1300
Text Label 4925 1200 0    50   ~ 0
USB_D+
Text Label 4925 1300 0    50   ~ 0
USB_D-
$Comp
L Arduino_Uno_R3_From_Scratch-rescue:GND #PWR?
U 1 1 5F4E97D5
P 3725 1750
F 0 "#PWR?" H 3725 1500 50  0001 C CNN
F 1 "GND" H 3730 1577 50  0000 C CNN
F 2 "" H 3725 1750 60  0000 C CNN
F 3 "" H 3725 1750 60  0000 C CNN
	1    3725 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3675 1600 3675 1700
Wire Wire Line
	3675 1700 3725 1700
Wire Wire Line
	3725 1700 3725 1750
Wire Wire Line
	3775 1600 3775 1700
Wire Wire Line
	3775 1700 3725 1700
Connection ~ 3725 1700
$Comp
L Connector:Screw_Terminal_01x04 J?
U 1 1 5F4EDCB8
P 4750 3450
F 0 "J?" H 4668 3025 50  0000 C CNN
F 1 "INPUT CONNECTOR" H 4500 3125 50  0000 C CNN
F 2 "" H 4750 3450 50  0001 C CNN
F 3 "~" H 4750 3450 50  0001 C CNN
	1    4750 3450
	-1   0    0    1   
$EndComp
$Comp
L Connector:Screw_Terminal_01x04 J?
U 1 1 5F4EE65B
P 6350 3450
F 0 "J?" H 6268 3025 50  0000 C CNN
F 1 "OUTPUT_CONNECTOR" H 5975 3125 50  0000 C CNN
F 2 "" H 6350 3450 50  0001 C CNN
F 3 "~" H 6350 3450 50  0001 C CNN
	1    6350 3450
	1    0    0    1   
$EndComp
Text Label 5025 3450 0    50   ~ 0
MODBUS_B+
Text Label 5025 3350 0    50   ~ 0
MODBUS_A-
Text Label 5025 3550 0    50   ~ 0
GND
Text Label 6075 3350 2    50   ~ 0
MODBUS_A-
Text Label 6075 3450 2    50   ~ 0
MODBUS_B+
Text Label 6075 3550 2    50   ~ 0
GND
Wire Notes Line
	4600 2950 6475 2950
Wire Notes Line
	6475 2950 6475 3675
Wire Notes Line
	6475 3675 4600 3675
Wire Notes Line
	4600 3675 4600 2950
Wire Wire Line
	4950 3350 5025 3350
Wire Wire Line
	4950 3450 5025 3450
Wire Wire Line
	4950 3550 5025 3550
Wire Wire Line
	6075 3350 6150 3350
Wire Wire Line
	6075 3450 6150 3450
Wire Wire Line
	6075 3550 6150 3550
Text GLabel 5500 3200 1    50   Input ~ 0
12V_BUS
Wire Wire Line
	4950 3250 5500 3250
Wire Wire Line
	5500 3250 5500 3200
Connection ~ 5500 3250
Wire Wire Line
	5500 3250 6150 3250
$EndSCHEMATC
