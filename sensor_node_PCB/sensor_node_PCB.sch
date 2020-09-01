EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 3
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
S 625  1825 1600 2800
U 5F4E1E8A
F0 "atmega328p" 50
F1 "atmega328p.sch" 50
F2 "SERIAL_Rx" I R 2225 4250 50 
F3 "SERIAL_Tx" I R 2225 4150 50 
F4 "DTR" I R 2225 4050 50 
$EndSheet
$Sheet
S 650  4925 850  850 
U 5F4E110C
F0 "voltage_management" 50
F1 "voltage_management.sch" 50
$EndSheet
$Comp
L Connector:USB_B_Mini J?
U 1 1 5F4E1AA5
P 6125 1200
F 0 "J?" H 6182 1667 50  0000 C CNN
F 1 "USB_B_Mini" H 6182 1576 50  0000 C CNN
F 2 "" H 6275 1150 50  0001 C CNN
F 3 "~" H 6275 1150 50  0001 C CNN
	1    6125 1200
	1    0    0    -1  
$EndComp
$Comp
L Arduino_Uno_R3_From_Scratch-rescue:R R?
U 1 1 5F4E3CCC
P 6950 1200
F 0 "R?" V 6850 1200 50  0000 C CNN
F 1 "27R" V 6950 1200 50  0000 C CNN
F 2 "" V 6880 1200 30  0000 C CNN
F 3 "" H 6950 1200 30  0000 C CNN
	1    6950 1200
	0    1    1    0   
$EndComp
$Comp
L Arduino_Uno_R3_From_Scratch-rescue:R R?
U 1 1 5F4E5156
P 6950 1300
F 0 "R?" V 7050 1300 50  0000 C CNN
F 1 "27R" V 6950 1300 50  0000 C CNN
F 2 "" V 6880 1300 30  0000 C CNN
F 3 "" H 6950 1300 30  0000 C CNN
	1    6950 1300
	0    1    1    0   
$EndComp
$Comp
L Device:Polyfuse F?
U 1 1 5F4E6403
P 6825 900
F 0 "F?" V 6600 900 50  0000 C CNN
F 1 "Polyfuse" V 6691 900 50  0000 C CNN
F 2 "" H 6875 700 50  0001 L CNN
F 3 "~" H 6825 900 50  0001 C CNN
	1    6825 900 
	0    1    1    0   
$EndComp
Wire Wire Line
	6425 1000 6600 1000
Wire Wire Line
	6600 1000 6600 900 
Wire Wire Line
	6600 900  6675 900 
$Comp
L Arduino_Uno_R3_From_Scratch-rescue:USBVCC #PWR?
U 1 1 5F4E7EA2
P 7325 775
F 0 "#PWR?" H 7325 865 20  0001 C CNN
F 1 "USBVCC" H 7321 913 30  0000 C CNN
F 2 "" H 7325 775 60  0000 C CNN
F 3 "" H 7325 775 60  0000 C CNN
	1    7325 775 
	1    0    0    -1  
$EndComp
Wire Wire Line
	7325 900  7325 775 
Wire Wire Line
	6975 900  7325 900 
Wire Wire Line
	6425 1200 6800 1200
Wire Wire Line
	6425 1300 6800 1300
Wire Wire Line
	7100 1200 7275 1200
Wire Wire Line
	7100 1300 7275 1300
Text Label 7275 1200 0    50   ~ 0
USB_D+
Text Label 7275 1300 0    50   ~ 0
USB_D-
$Comp
L Arduino_Uno_R3_From_Scratch-rescue:GND #PWR?
U 1 1 5F4E97D5
P 6075 1750
F 0 "#PWR?" H 6075 1500 50  0001 C CNN
F 1 "GND" H 6080 1577 50  0000 C CNN
F 2 "" H 6075 1750 60  0000 C CNN
F 3 "" H 6075 1750 60  0000 C CNN
	1    6075 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	6025 1600 6025 1700
Wire Wire Line
	6025 1700 6075 1700
Wire Wire Line
	6075 1700 6075 1750
Wire Wire Line
	6125 1600 6125 1700
Wire Wire Line
	6125 1700 6075 1700
Connection ~ 6075 1700
$Comp
L Connector:Screw_Terminal_01x04 J?
U 1 1 5F4EDCB8
P 8925 1225
F 0 "J?" H 8843 800 50  0000 C CNN
F 1 "INPUT CONNECTOR" H 8675 900 50  0000 C CNN
F 2 "" H 8925 1225 50  0001 C CNN
F 3 "~" H 8925 1225 50  0001 C CNN
	1    8925 1225
	-1   0    0    1   
$EndComp
$Comp
L Connector:Screw_Terminal_01x04 J?
U 1 1 5F4EE65B
P 10525 1225
F 0 "J?" H 10443 800 50  0000 C CNN
F 1 "OUTPUT_CONNECTOR" H 10150 900 50  0000 C CNN
F 2 "" H 10525 1225 50  0001 C CNN
F 3 "~" H 10525 1225 50  0001 C CNN
	1    10525 1225
	1    0    0    1   
$EndComp
Text Label 9200 1225 0    50   ~ 0
MODBUS_B+
Text Label 9200 1125 0    50   ~ 0
MODBUS_A-
Text Label 9200 1325 0    50   ~ 0
GND
Text Label 10250 1125 2    50   ~ 0
MODBUS_A-
Text Label 10250 1225 2    50   ~ 0
MODBUS_B+
Text Label 10250 1325 2    50   ~ 0
GND
Wire Notes Line
	8775 725  10650 725 
Wire Notes Line
	10650 725  10650 1450
Wire Notes Line
	10650 1450 8775 1450
Wire Notes Line
	8775 1450 8775 725 
Wire Wire Line
	9125 1125 9200 1125
Wire Wire Line
	9125 1225 9200 1225
Wire Wire Line
	9125 1325 9200 1325
Wire Wire Line
	10250 1125 10325 1125
Wire Wire Line
	10250 1225 10325 1225
Wire Wire Line
	10250 1325 10325 1325
Text GLabel 9675 975  1    50   Input ~ 0
12V_BUS
Wire Wire Line
	9125 1025 9675 1025
Wire Wire Line
	9675 1025 9675 975 
Connection ~ 9675 1025
Wire Wire Line
	9675 1025 10325 1025
$Comp
L Interface_UART:ADM2484E U?
U 1 1 5F4FCE90
P 9300 4875
F 0 "U?" H 9300 5642 50  0000 C CNN
F 1 "ADM2484E" H 9300 5551 50  0000 C CNN
F 2 "Package_SO:SOIC-16W_7.5x10.3mm_P1.27mm" H 9300 4175 50  0001 C CNN
F 3 "https://www.analog.com/media/en/technical-documentation/data-sheets/ADM2484E.pdf" H 8550 4925 50  0001 C CNN
	1    9300 4875
	1    0    0    -1  
$EndComp
$Comp
L Arduino_Uno_R3_From_Scratch-rescue:D D?
U 1 1 5F514196
P 3450 6550
AR Path="/5F4E2C52/5F514196" Ref="D?"  Part="1" 
AR Path="/5F514196" Ref="D?"  Part="1" 
F 0 "D?" H 3450 6650 40  0000 C CNN
F 1 "DIODE" H 3450 6450 40  0000 C CNN
F 2 "~" H 3450 6550 60  0000 C CNN
F 3 "http://www.onsemi.com/pub_link/Collateral/MRA4003T3-D.PDF" H 3450 6550 60  0001 C CNN
F 4 "1A, 1000V, SILICON, SIGNAL DIODE, ROHS COMPLIANT, COMPACT, PLASTIC, CASE 403D-02, SMA, 2 PIN" H 3450 6550 60  0001 C CNN "Characteristics"
F 5 "Reverse Voltage Protection Diode" H 3450 6550 60  0001 C CNN "Description"
F 6 "ON Semi" H 3450 6550 60  0001 C CNN "MFN"
F 7 "MRA4007T3G" H 3450 6550 60  0001 C CNN "MFP"
F 8 "R-PDSO-J2" H 3450 6550 60  0001 C CNN "Package ID"
F 9 "ANY" H 3450 6550 60  0001 C CNN "Source"
F 10 "N" H 3450 6550 60  0001 C CNN "Critical"
F 11 "Voltage_Reg" H 3450 6550 60  0001 C CNN "Subsystem"
F 12 "~" H 3450 6550 60  0001 C CNN "Notes"
	1    3450 6550
	-1   0    0    1   
$EndComp
$Comp
L Arduino_Uno_R3_From_Scratch-rescue:CP C?
U 1 1 5F5141A5
P 4025 6950
AR Path="/5F4E2C52/5F5141A5" Ref="C?"  Part="1" 
AR Path="/5F5141A5" Ref="C?"  Part="1" 
F 0 "C?" H 4075 7050 40  0000 L CNN
F 1 "47uF" H 4075 6850 40  0000 L CNN
F 2 "~" H 4125 6800 30  0000 C CNN
F 3 "http://images.ihscontent.net/vipimages/VipMasterIC/IC/BEYS/BEYSS04513/BEYSS04513-1.pdf" H 4025 6950 300 0001 C CNN
F 4 "CAPACITOR, ALUMINUM ELECTROLYTIC, NON SOLID, POLARIZED, 50 V, 47 uF, SURFACE MOUNT, 3131, CHIP, ROHS COMPLIANT" H 4025 6950 60  0001 C CNN "Characteristics"
F 5 "47uF Low ESR LDO Input Cap" H 4025 6950 60  0001 C CNN "Description"
F 6 "Vishay" H 4025 6950 60  0001 C CNN "MFN"
F 7 "MAL215371479E3" H 4025 6950 60  0001 C CNN "MFP"
F 8 "SMD 5.0 x 5.0 x 5.3" H 4025 6950 60  0001 C CNN "Package ID"
F 9 "ANY" H 4025 6950 60  0001 C CNN "Source"
F 10 "N" H 4025 6950 60  0001 C CNN "Critical"
F 11 "Voltage_Reg" H 4025 6950 60  0001 C CNN "Subsystem"
F 12 "ESR must fall between 0.33Ω and 22Ω" H 4025 6950 60  0001 C CNN "Notes"
	1    4025 6950
	1    0    0    -1  
$EndComp
$Comp
L Arduino_Uno_R3_From_Scratch-rescue:C C?
U 1 1 5F5141B4
P 5775 6950
AR Path="/5F4E2C52/5F5141B4" Ref="C?"  Part="1" 
AR Path="/5F5141B4" Ref="C?"  Part="1" 
F 0 "C?" H 5825 7050 40  0000 L CNN
F 1 "0.1 uF" H 5825 6850 40  0000 L CNN
F 2 "~" H 5813 6800 30  0000 C CNN
F 3 "http://images.ihscontent.net/vipimages/VipMasterIC/IC/KEME/KEMES10043/KEMES10043-1.pdf" H 5775 6950 60  0001 C CNN
F 4 "CAPACITOR, CERAMIC, MULTILAYER, 100 V, X7R, 0.1 uF, SURFACE MOUNT, 0805, CHIP, ROHS COMPLIANT" H 5775 6950 60  0001 C CNN "Characteristics"
F 5 "LDO Bypass Cap" H 5775 6950 60  0001 C CNN "Description"
F 6 "Kemet" H 5775 6950 60  0001 C CNN "MFN"
F 7 "C0805C104K1RACAUTO" H 5775 6950 60  0001 C CNN "MFP"
F 8 "SMD_0805" H 5775 6950 60  0001 C CNN "Package ID"
F 9 "ANY" H 5775 6950 60  0001 C CNN "Source"
F 10 "N" H 5775 6950 60  0001 C CNN "Critical"
F 11 "Voltage_Reg" H 5775 6950 60  0001 C CNN "Subsystem"
F 12 "~" H 5775 6950 60  0001 C CNN "Notes"
	1    5775 6950
	1    0    0    -1  
$EndComp
$Comp
L Arduino_Uno_R3_From_Scratch-rescue:CP C?
U 1 1 5F5141C4
P 5375 6950
AR Path="/5F4E2C52/5F5141C4" Ref="C?"  Part="1" 
AR Path="/5F5141C4" Ref="C?"  Part="1" 
F 0 "C?" H 5425 7050 40  0000 L CNN
F 1 "47uF" H 5425 6850 40  0000 L CNN
F 2 "~" H 5475 6800 30  0000 C CNN
F 3 "http://images.ihscontent.net/vipimages/VipMasterIC/IC/BEYS/BEYSS04513/BEYSS04513-1.pdf" H 5375 6950 300 0001 C CNN
F 4 "CAPACITOR, ALUMINUM ELECTROLYTIC, NON SOLID, POLARIZED, 50 V, 47 uF, SURFACE MOUNT, 3131, CHIP, ROHS COMPLIANT" H 5375 6950 60  0001 C CNN "Characteristics"
F 5 "47uF Low ESR LDO Output Cap" H 5375 6950 60  0001 C CNN "Description"
F 6 "Vishay" H 5375 6950 60  0001 C CNN "MFN"
F 7 "MAL215371479E3" H 5375 6950 60  0001 C CNN "MFP"
F 8 "SMD 5.0 x 5.0 x 5.3" H 5375 6950 60  0001 C CNN "Package ID"
F 9 "ANY" H 5375 6950 60  0001 C CNN "Source"
F 10 "N" H 5375 6950 60  0001 C CNN "Critical"
F 11 "Voltage_Reg" H 5375 6950 60  0001 C CNN "Subsystem"
F 12 "ESR must fall between 0.33Ω and 22Ω" H 5375 6950 60  0001 C CNN "Notes"
	1    5375 6950
	1    0    0    -1  
$EndComp
$Comp
L Arduino_Uno_R3_From_Scratch-rescue:R R?
U 1 1 5F5141D3
P 6550 6400
AR Path="/5F4E2C52/5F5141D3" Ref="R?"  Part="1" 
AR Path="/5F5141D3" Ref="R?"  Part="1" 
F 0 "R?" V 6630 6400 40  0000 C CNN
F 1 "510" V 6557 6401 40  0000 C CNN
F 2 "~" V 6480 6400 30  0000 C CNN
F 3 "http://www.yageo.com/pdf/Pu-RC0805_51_PbFree_L_2.pdf" H 6550 6400 30  0001 C CNN
F 4 "RESISTOR, METAL GLAZE/THICK FILM, 0.125W, 1%, 100ppm, 510ohm, SURFACE MOUNT, 0805" H 6550 6400 60  0001 C CNN "Characteristics"
F 5 "Power On LED Resistor" H 6550 6400 60  0001 C CNN "Description"
F 6 "Yageo" H 6550 6400 60  0001 C CNN "MFN"
F 7 "RC0805FR-07510RL" H 6550 6400 60  0001 C CNN "MFP"
F 8 "SMD_0805" H 6550 6400 60  0001 C CNN "Package ID"
F 9 "ANY" H 6550 6400 60  0001 C CNN "Source"
F 10 "N" H 6550 6400 60  0001 C CNN "Critical"
F 11 "Voltage_Reg" H 6550 6400 60  0001 C CNN "Subsystem"
F 12 "~" H 6550 6400 60  0001 C CNN "Notes"
	1    6550 6400
	-1   0    0    1   
$EndComp
$Comp
L Arduino_Uno_R3_From_Scratch-rescue:LED D?
U 1 1 5F5141E2
P 6550 6900
AR Path="/5F4E2C52/5F5141E2" Ref="D?"  Part="1" 
AR Path="/5F5141E2" Ref="D?"  Part="1" 
F 0 "D?" H 6550 7000 50  0000 C CNN
F 1 "LED" H 6550 6800 50  0000 C CNN
F 2 "~" H 6550 6900 60  0000 C CNN
F 3 "http://www.osram-os.com/Graphics/XPic9/00078860_0.pdf" H 6550 6900 60  0001 C CNN
F 4 "LED CHIPLED 570NM GREEN" H 6550 6900 60  0001 C CNN "Characteristics"
F 5 "Power On Green LED" H 6550 6900 60  0001 C CNN "Description"
F 6 "OSRAM Opto" H 6550 6900 60  0001 C CNN "MFN"
F 7 "LG R971-KN-1" H 6550 6900 60  0001 C CNN "MFP"
F 8 "SMD_0805" H 6550 6900 60  0001 C CNN "Package ID"
F 9 "ANY" H 6550 6900 60  0001 C CNN "Source"
F 10 "N" H 6550 6900 60  0001 C CNN "Critical"
F 11 "Voltage_Reg" H 6550 6900 60  0001 C CNN "Subsystem"
F 12 "~" H 6550 6900 60  0001 C CNN "Notes"
	1    6550 6900
	0    -1   -1   0   
$EndComp
$Comp
L Arduino_Uno_R3_From_Scratch-rescue:Vin #PWR?
U 1 1 5F5141E8
P 3825 6100
AR Path="/5F5141E8" Ref="#PWR?"  Part="1" 
AR Path="/55CCFEA2/5F5141E8" Ref="#PWR?"  Part="1" 
AR Path="/5F4E2C52/5F5141E8" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3825 6190 20  0001 C CNN
F 1 "VIN" H 3825 6220 30  0000 C CNN
F 2 "~" H 3825 6100 60  0000 C CNN
F 3 "~" H 3825 6100 60  0000 C CNN
	1    3825 6100
	1    0    0    -1  
$EndComp
$Comp
L Arduino_Uno_R3_From_Scratch-rescue:5V_LDO #PWR?
U 1 1 5F5141EE
P 5225 6100
AR Path="/5F4E2C52/5F5141EE" Ref="#PWR?"  Part="1" 
AR Path="/5F5141EE" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5225 6190 20  0001 C CNN
F 1 "5V_LDO" H 5225 6220 30  0000 C CNN
F 2 "~" H 5225 6100 60  0000 C CNN
F 3 "~" H 5225 6100 60  0000 C CNN
	1    5225 6100
	1    0    0    -1  
$EndComp
$Comp
L Arduino_Uno_R3_From_Scratch-rescue:5V_LDO #PWR?
U 1 1 5F5141F4
P 6550 6100
AR Path="/5F4E2C52/5F5141F4" Ref="#PWR?"  Part="1" 
AR Path="/5F5141F4" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6550 6190 20  0001 C CNN
F 1 "5V_LDO" H 6550 6220 30  0000 C CNN
F 2 "~" H 6550 6100 60  0000 C CNN
F 3 "~" H 6550 6100 60  0000 C CNN
	1    6550 6100
	1    0    0    -1  
$EndComp
$Comp
L Arduino_Uno_R3_From_Scratch-rescue:GND #PWR?
U 1 1 5F5141FD
P 4025 7300
AR Path="/5F4E2C52/5F5141FD" Ref="#PWR?"  Part="1" 
AR Path="/5F5141FD" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4025 7050 50  0001 C CNN
F 1 "GND" H 4025 7150 50  0001 C CNN
F 2 "" H 4025 7300 60  0000 C CNN
F 3 "" H 4025 7300 60  0000 C CNN
F 4 "ANY" H 4025 7300 60  0001 C CNN "Source"
F 5 "N" H 4025 7300 60  0001 C CNN "Critical"
F 6 "~" H 4025 7300 60  0001 C CNN "Notes"
	1    4025 7300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4025 6550 4025 6800
Wire Wire Line
	4025 7100 4025 7300
Wire Notes Line
	2475 5650 2475 6200
Connection ~ 4025 6550
Wire Wire Line
	5775 6550 5775 6800
Wire Wire Line
	5375 7100 5375 7300
Wire Wire Line
	5775 7100 5775 7300
Wire Wire Line
	4675 7300 4675 6850
Wire Wire Line
	5375 6550 5375 6800
Connection ~ 5375 6550
Wire Wire Line
	5225 6100 5225 6550
Connection ~ 5225 6550
Wire Wire Line
	3825 6100 3825 6550
Connection ~ 3825 6550
Wire Wire Line
	6550 6100 6550 6250
Wire Wire Line
	6550 7300 6550 7100
$Comp
L Arduino_Uno_R3_From_Scratch-rescue:LD1117S50TR U?
U 1 1 5F51421D
P 4675 6600
AR Path="/5F4E2C52/5F51421D" Ref="U?"  Part="1" 
AR Path="/5F51421D" Ref="U?"  Part="1" 
F 0 "U?" H 4875 6350 60  0000 C CNN
F 1 "LD1117S50TR" H 4675 6850 60  0000 C CNN
F 2 "" H 4675 6600 60  0000 C CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/CD00000544.pdf" H 4675 6600 60  0001 C CNN
F 4 "5 V FIXED POSITIVE LDO REGULATOR, 1.2 V DROPOUT, PDSO3, ROHS COMPLIANT, SOT-223, 4 PIN" H 4675 6600 60  0001 C CNN "Characteristics"
F 5 "5V Fixed LDO" H 4675 6600 60  0001 C CNN "Description"
F 6 "STMicroelectronics" H 4675 6600 60  0001 C CNN "MFN"
F 7 "LD1117S50TR" H 4675 6600 60  0001 C CNN "MFP"
F 8 "SOT-223" H 4675 6600 60  0001 C CNN "Package ID"
F 9 "Any" H 4675 6600 60  0001 C CNN "Source"
F 10 "N" H 4675 6600 60  0001 C CNN "Critical"
F 11 "Voltage_Reg" H 4675 6600 60  0001 C CNN "Subsystem"
F 12 "~" H 4675 6600 60  0001 C CNN "Notes"
	1    4675 6600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 6550 6550 6700
$Comp
L Arduino_Uno_R3_From_Scratch-rescue:GND #PWR?
U 1 1 5F514227
P 4675 7300
AR Path="/5F4E2C52/5F514227" Ref="#PWR?"  Part="1" 
AR Path="/5F514227" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4675 7050 50  0001 C CNN
F 1 "GND" H 4675 7150 50  0001 C CNN
F 2 "" H 4675 7300 60  0000 C CNN
F 3 "" H 4675 7300 60  0000 C CNN
F 4 "ANY" H 4675 7300 60  0001 C CNN "Source"
F 5 "N" H 4675 7300 60  0001 C CNN "Critical"
F 6 "~" H 4675 7300 60  0001 C CNN "Notes"
	1    4675 7300
	1    0    0    -1  
$EndComp
$Comp
L Arduino_Uno_R3_From_Scratch-rescue:GND #PWR?
U 1 1 5F514230
P 5375 7300
AR Path="/5F4E2C52/5F514230" Ref="#PWR?"  Part="1" 
AR Path="/5F514230" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5375 7050 50  0001 C CNN
F 1 "GND" H 5375 7150 50  0001 C CNN
F 2 "" H 5375 7300 60  0000 C CNN
F 3 "" H 5375 7300 60  0000 C CNN
F 4 "ANY" H 5375 7300 60  0001 C CNN "Source"
F 5 "N" H 5375 7300 60  0001 C CNN "Critical"
F 6 "~" H 5375 7300 60  0001 C CNN "Notes"
	1    5375 7300
	1    0    0    -1  
$EndComp
$Comp
L Arduino_Uno_R3_From_Scratch-rescue:GND #PWR?
U 1 1 5F514239
P 5775 7300
AR Path="/5F4E2C52/5F514239" Ref="#PWR?"  Part="1" 
AR Path="/5F514239" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5775 7050 50  0001 C CNN
F 1 "GND" H 5775 7150 50  0001 C CNN
F 2 "" H 5775 7300 60  0000 C CNN
F 3 "" H 5775 7300 60  0000 C CNN
F 4 "ANY" H 5775 7300 60  0001 C CNN "Source"
F 5 "N" H 5775 7300 60  0001 C CNN "Critical"
F 6 "~" H 5775 7300 60  0001 C CNN "Notes"
	1    5775 7300
	1    0    0    -1  
$EndComp
$Comp
L Arduino_Uno_R3_From_Scratch-rescue:GND #PWR?
U 1 1 5F514242
P 6550 7300
AR Path="/5F4E2C52/5F514242" Ref="#PWR?"  Part="1" 
AR Path="/5F514242" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6550 7050 50  0001 C CNN
F 1 "GND" H 6550 7150 50  0001 C CNN
F 2 "" H 6550 7300 60  0000 C CNN
F 3 "" H 6550 7300 60  0000 C CNN
F 4 "ANY" H 6550 7300 60  0001 C CNN "Source"
F 5 "N" H 6550 7300 60  0001 C CNN "Critical"
F 6 "~" H 6550 7300 60  0001 C CNN "Notes"
	1    6550 7300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5075 6550 5225 6550
Wire Wire Line
	3600 6550 3825 6550
Wire Wire Line
	4025 6550 4275 6550
Wire Wire Line
	5375 6550 5775 6550
Wire Wire Line
	5225 6550 5375 6550
Wire Wire Line
	3825 6550 4025 6550
Wire Wire Line
	2775 6550 3300 6550
Text GLabel 2775 6550 0    50   Input ~ 0
12V_BUS
$Comp
L Interface_USB:FT231XS U?
U 1 1 5F4E39B1
P 5375 3900
F 0 "U?" H 5375 4981 50  0000 C CNN
F 1 "FT231XS" H 5375 4890 50  0000 C CNN
F 2 "Package_SO:SSOP-20_3.9x8.7mm_P0.635mm" H 6375 3100 50  0001 C CNN
F 3 "https://www.ftdichip.com/Support/Documents/DataSheets/ICs/DS_FT231X.pdf" H 5375 3900 50  0001 C CNN
	1    5375 3900
	1    0    0    -1  
$EndComp
Text Label 4600 3700 2    50   ~ 0
USB_D+
Text Label 4600 3600 2    50   ~ 0
USB_D-
Wire Wire Line
	4600 3600 4675 3600
Wire Wire Line
	4600 3700 4675 3700
Wire Wire Line
	5275 3000 5475 3000
Wire Wire Line
	5475 3000 5750 3000
Wire Wire Line
	5750 3000 5750 2800
Connection ~ 5475 3000
$Comp
L Arduino_Uno_R3_From_Scratch-rescue:5V_LDO #PWR?
U 1 1 5F4ED2A9
P 5750 2800
F 0 "#PWR?" H 5750 2890 20  0001 C CNN
F 1 "5V_LDO" H 5746 2938 30  0000 C CNN
F 2 "" H 5750 2800 60  0000 C CNN
F 3 "" H 5750 2800 60  0000 C CNN
	1    5750 2800
	1    0    0    -1  
$EndComp
Text Label 2300 4150 0    50   ~ 0
ard_tx
Wire Wire Line
	2225 4150 2300 4150
Text Label 2300 4250 0    50   ~ 0
ard_rx
Wire Wire Line
	2225 4250 2300 4250
Text Label 6175 3400 0    50   ~ 0
ard_tx
Text Label 6175 3300 0    50   ~ 0
ard_rx
Wire Wire Line
	6075 3300 6175 3300
Wire Wire Line
	6075 3400 6175 3400
Text Label 2300 4050 0    50   ~ 0
ard_DTR
Wire Wire Line
	2200 4050 2300 4050
Text Label 6175 3700 0    50   ~ 0
ard_DTR
Wire Wire Line
	6075 3700 6175 3700
$Comp
L Arduino_Uno_R3_From_Scratch-rescue:GND #PWR?
U 1 1 5F50BD57
P 5375 4925
F 0 "#PWR?" H 5375 4675 50  0001 C CNN
F 1 "GND" H 5380 4752 50  0000 C CNN
F 2 "" H 5375 4925 60  0000 C CNN
F 3 "" H 5375 4925 60  0000 C CNN
	1    5375 4925
	1    0    0    -1  
$EndComp
Wire Wire Line
	5275 4800 5275 4925
Wire Wire Line
	5275 4925 5375 4925
Wire Wire Line
	5475 4800 5475 4925
Wire Wire Line
	5475 4925 5375 4925
Connection ~ 5375 4925
$EndSCHEMATC
