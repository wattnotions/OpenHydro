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
L Arduino_Uno_R3_From_Scratch-rescue:R R2
U 1 1 55D0D88A
P 2950 2850
F 0 "R2" V 3030 2850 40  0000 C CNN
F 1 "10K" V 2957 2851 40  0000 C CNN
F 2 "~" V 2880 2850 30  0000 C CNN
F 3 "http://images.ihscontent.net/vipimages/VipMasterIC/IC/VISH/VISHS75859/VISHS75859-1.pdf" H 2950 2850 30  0001 C CNN
F 4 "RESISTOR, METAL GLAZE/THICK FILM, 0.125W, 5%, 200ppm, 10000ohm, SURFACE MOUNT, 0805" H 2950 2850 60  0001 C CNN "Characteristics"
F 5 "10K Comparator Voltage Divider Resistor" H 2950 2850 60  0001 C CNN "Description"
F 6 "Vishay" H 2950 2850 60  0001 C CNN "MFN"
F 7 "CRCW080510K0JNEA" H 2950 2850 60  0001 C CNN "MFP"
F 8 "SMD_0805" H 2950 2850 60  0001 C CNN "Package ID"
F 9 "ANY" H 2950 2850 60  0001 C CNN "Source"
F 10 "N" H 2950 2850 60  0001 C CNN "Critical"
F 11 "Voltage_Mgmt" H 2950 2850 60  0001 C CNN "Subsystem"
F 12 "~" H 2950 2850 60  0001 C CNN "Notes"
	1    2950 2850
	-1   0    0    1   
$EndComp
$Comp
L Arduino_Uno_R3_From_Scratch-rescue:Q_PMOS_GSD Q1
U 1 1 55D0D9DF
P 5050 4100
F 0 "Q1" V 4950 4275 60  0000 R CNN
F 1 "FDN340P" V 5300 4300 60  0000 R CNN
F 2 "~" H 5050 4100 60  0000 C CNN
F 3 "https://www.fairchildsemi.com/datasheets/FD/FDN340P.pdf" H 5050 4100 60  0001 C CNN
F 4 "2000 mA, 20 V, P-CHANNEL, Si, SMALL SIGNAL, MOSFET, SUPERSOT-3" H 5050 4100 60  0001 C CNN "Characteristics"
F 5 "USBVCC MOSFET" H 5050 4100 60  0001 C CNN "Description"
F 6 "Fairchild Semiconductor" H 5050 4100 60  0001 C CNN "MFN"
F 7 "FDN340P" H 5050 4100 60  0001 C CNN "MFP"
F 8 "SOT23" H 5050 4100 60  0001 C CNN "Package ID"
F 9 "ANY" H 5050 4100 60  0001 C CNN "Source"
F 10 "N" H 5050 4100 60  0001 C CNN "Critical"
F 11 "Voltage_Mgmt" H 5050 4100 60  0001 C CNN "Subsystem"
F 12 "~" H 5050 4100 60  0001 C CNN "Notes"
	1    5050 4100
	0    -1   1    0   
$EndComp
$Comp
L Arduino_Uno_R3_From_Scratch-rescue:LM358 U2
U 1 1 55D11D89
P 4050 3350
F 0 "U2" H 4000 3550 60  0000 L CNN
F 1 "LMV358IDGKR" H 4000 3100 60  0000 L CNN
F 2 "~" H 4050 3350 60  0000 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lmv358.pdf" H 4050 3350 60  0001 C CNN
F 4 "DUAL OP-AMP, 7000uV OFFSET-MAX, 1MHz BAND WIDTH" H 4050 3350 60  0001 C CNN "Characteristics"
F 5 "Comparator Op-amp" H 4050 3350 60  0001 C CNN "Description"
F 6 "Texas Instruments" H 4050 3350 60  0001 C CNN "MFN"
F 7 "LMV358IDGKR" H 4050 3350 60  0001 C CNN "MFP"
F 8 "VSSOP8" H 4050 3350 60  0001 C CNN "Package ID"
F 9 "ANY" H 4050 3350 60  0001 C CNN "Source"
F 10 "N" H 4050 3350 60  0001 C CNN "Critical"
F 11 "Voltage_Mgmt" H 4050 3350 60  0001 C CNN "Subsystem"
F 12 "~" H 4050 3350 60  0001 C CNN "Notes"
	1    4050 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 4150 3950 3750
Wire Wire Line
	3950 2750 4200 2750
Wire Wire Line
	3950 2500 3950 2750
Connection ~ 3950 2750
$Comp
L Arduino_Uno_R3_From_Scratch-rescue:GND #PWR010
U 1 1 55D120C2
P 4700 2950
F 0 "#PWR010" H 4700 2950 30  0001 C CNN
F 1 "GND" H 4700 2880 30  0001 C CNN
F 2 "~" H 4700 2950 60  0000 C CNN
F 3 "~" H 4700 2950 60  0000 C CNN
F 4 "ANY" H 4700 2950 60  0001 C CNN "Source"
F 5 "N" H 4700 2950 60  0001 C CNN "Critical"
F 6 "~" H 4700 2950 60  0001 C CNN "Notes"
	1    4700 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 2750 4700 2950
Wire Wire Line
	4500 2750 4700 2750
Wire Wire Line
	2950 3000 2950 3250
$Comp
L Arduino_Uno_R3_From_Scratch-rescue:GND-RESCUE-Arduino_Uno_R3_From_Scratch #PWR011
U 1 1 55D120DC
P 2950 4200
F 0 "#PWR011" H 2950 4200 30  0001 C CNN
F 1 "GND" H 2950 4130 30  0001 C CNN
F 2 "~" H 2950 4200 60  0000 C CNN
F 3 "~" H 2950 4200 60  0000 C CNN
	1    2950 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 3800 2950 4200
Wire Wire Line
	2950 2500 2950 2700
Wire Wire Line
	3550 3250 2950 3250
Connection ~ 2950 3250
Wire Wire Line
	4550 3350 5050 3350
Wire Wire Line
	5050 3350 5050 3900
$Comp
L Arduino_Uno_R3_From_Scratch-rescue:USBVCC #PWR012
U 1 1 55D126CE
P 4650 4050
F 0 "#PWR012" H 4650 4140 20  0001 C CNN
F 1 "USBVCC" H 4650 4140 30  0000 C CNN
F 2 "~" H 4650 4050 60  0000 C CNN
F 3 "~" H 4650 4050 60  0000 C CNN
	1    4650 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 4200 4650 4200
Wire Wire Line
	4650 4200 4650 4050
Wire Notes Line
	2650 2500 2650 2150
Wire Notes Line
	2650 2150 8000 2150
Wire Notes Line
	8000 2150 8000 2450
Wire Wire Line
	5400 3700 5400 4200
Text Notes 4450 2100 0    60   ~ 0
USBVCC / VIN Comparator
$Comp
L Arduino_Uno_R3_From_Scratch-rescue:C C5
U 1 1 55D74BB5
P 5650 4600
F 0 "C5" H 5650 4700 40  0000 L CNN
F 1 "1uF" H 5656 4515 40  0000 L CNN
F 2 "~" H 5688 4450 30  0000 C CNN
F 3 "http://www.kemet.com/docfinder?Partnumber=C0805C105K8RACAUTO" H 5650 4600 60  0001 C CNN
F 4 "CAPACITOR, CERAMIC, MULTILAYER, 10 V, X7R, 1 uF, SURFACE MOUNT, 0805" H 5650 4600 60  0001 C CNN "Characteristics"
F 5 "3V3 LDO Input Cap" H 5650 4600 60  0001 C CNN "Description"
F 6 "Kemet" H 5650 4600 60  0001 C CNN "MFN"
F 7 "C0805C105K8RACAUTO " H 5650 4600 60  0001 C CNN "MFP"
F 8 "SMD_0805" H 5650 4600 60  0001 C CNN "Package ID"
F 9 "ANY" H 5650 4600 60  0001 C CNN "Source"
F 10 "N" H 5650 4600 60  0001 C CNN "Critical"
F 11 "Voltage_Mgmt" H 5650 4600 60  0001 C CNN "Subsystem"
F 12 "~" H 5650 4600 60  0001 C CNN "Notes"
	1    5650 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 4200 5650 4450
Wire Wire Line
	5650 4750 5650 5325
$Comp
L Arduino_Uno_R3_From_Scratch-rescue:R R3
U 1 1 55D76313
P 2950 3650
F 0 "R3" V 3030 3650 40  0000 C CNN
F 1 "10K" V 2957 3651 40  0000 C CNN
F 2 "~" V 2880 3650 30  0000 C CNN
F 3 "http://images.ihscontent.net/vipimages/VipMasterIC/IC/VISH/VISHS75859/VISHS75859-1.pdf" H 2950 3650 30  0001 C CNN
F 4 "RESISTOR, METAL GLAZE/THICK FILM, 0.125W, 5%, 200ppm, 10000ohm, SURFACE MOUNT, 0805" H 2950 3650 60  0001 C CNN "Characteristics"
F 5 "10K Comparator Voltage Divider Resistor" H 2950 3650 60  0001 C CNN "Description"
F 6 "Vishay" H 2950 3650 60  0001 C CNN "MFN"
F 7 "CRCW080510K0JNEA" H 2950 3650 60  0001 C CNN "MFP"
F 8 "SMD_0805" H 2950 3650 60  0001 C CNN "Package ID"
F 9 "ANY" H 2950 3650 60  0001 C CNN "Source"
F 10 "N" H 2950 3650 60  0001 C CNN "Critical"
F 11 "Voltage_Mgmt" H 2950 3650 60  0001 C CNN "Subsystem"
F 12 "~" H 2950 3650 60  0001 C CNN "Notes"
	1    2950 3650
	-1   0    0    1   
$EndComp
$Comp
L Arduino_Uno_R3_From_Scratch-rescue:C C4
U 1 1 55D763EF
P 4350 2750
F 0 "C4" H 4400 2850 40  0000 L CNN
F 1 "0.1 uF" H 4400 2650 40  0000 L CNN
F 2 "~" H 4388 2600 30  0000 C CNN
F 3 "http://images.ihscontent.net/vipimages/VipMasterIC/IC/KEME/KEMES10043/KEMES10043-1.pdf" H 4350 2750 60  0001 C CNN
F 4 "CAPACITOR, CERAMIC, MULTILAYER, 100 V, X7R, 0.1 uF, SURFACE MOUNT, 0805, CHIP, ROHS COMPLIANT" H 4350 2750 60  0001 C CNN "Characteristics"
F 5 "LDO Bypass Cap" H 4350 2750 60  0001 C CNN "Description"
F 6 "Kemet" H 4350 2750 60  0001 C CNN "MFN"
F 7 "C0805C104K1RACAUTO" H 4350 2750 60  0001 C CNN "MFP"
F 8 "SMD_0805" H 4350 2750 60  0001 C CNN "Package ID"
F 9 "ANY" H 4350 2750 60  0001 C CNN "Source"
F 10 "N" H 4350 2750 60  0001 C CNN "Critical"
F 11 "Voltage_Mgmt" H 4350 2750 60  0001 C CNN "Subsystem"
F 12 "~" H 4350 2750 60  0001 C CNN "Notes"
	1    4350 2750
	0    1    1    0   
$EndComp
$Comp
L Arduino_Uno_R3_From_Scratch-rescue:5V_LDO #PWR014
U 1 1 55E957AE
P 5400 3700
F 0 "#PWR014" H 5400 3790 20  0001 C CNN
F 1 "5V_LDO" H 5400 3820 30  0000 C CNN
F 2 "~" H 5400 3700 60  0000 C CNN
F 3 "~" H 5400 3700 60  0000 C CNN
	1    5400 3700
	1    0    0    -1  
$EndComp
$Comp
L Arduino_Uno_R3_From_Scratch-rescue:5V_LDO #PWR015
U 1 1 55E957BD
P 3950 2500
F 0 "#PWR015" H 3950 2590 20  0001 C CNN
F 1 "5V_LDO" H 3950 2620 30  0000 C CNN
F 2 "~" H 3950 2500 60  0000 C CNN
F 3 "~" H 3950 2500 60  0000 C CNN
	1    3950 2500
	1    0    0    -1  
$EndComp
$Comp
L Arduino_Uno_R3_From_Scratch-rescue:Vin #PWR020
U 1 1 55E957DB
P 2950 2500
AR Path="/55E957DB" Ref="#PWR020"  Part="1" 
AR Path="/55D0D7E6/55E957DB" Ref="#PWR016"  Part="1" 
AR Path="/5F4E110C/55E957DB" Ref="#PWR016"  Part="1" 
F 0 "#PWR016" H 2950 2590 20  0001 C CNN
F 1 "VIN" H 2950 2620 30  0000 C CNN
F 2 "~" H 2950 2500 60  0000 C CNN
F 3 "~" H 2950 2500 60  0000 C CNN
	1    2950 2500
	1    0    0    -1  
$EndComp
$Comp
L Arduino_Uno_R3_From_Scratch-rescue:GND #PWR018
U 1 1 561FE56D
P 5650 5325
F 0 "#PWR018" H 5650 5325 30  0001 C CNN
F 1 "GND" H 5650 5255 30  0001 C CNN
F 2 "~" H 5650 5325 60  0000 C CNN
F 3 "~" H 5650 5325 60  0000 C CNN
F 4 "ANY" H 5650 5325 60  0001 C CNN "Source"
F 5 "N" H 5650 5325 60  0001 C CNN "Critical"
F 6 "~" H 5650 5325 60  0001 C CNN "Notes"
	1    5650 5325
	1    0    0    -1  
$EndComp
$Comp
L Arduino_Uno_R3_From_Scratch-rescue:GND #PWR021
U 1 1 562082E4
P 3950 4150
F 0 "#PWR021" H 3950 4150 30  0001 C CNN
F 1 "GND" H 3950 4080 30  0001 C CNN
F 2 "~" H 3950 4150 60  0000 C CNN
F 3 "~" H 3950 4150 60  0000 C CNN
F 4 "ANY" H 3950 4150 60  0001 C CNN "Source"
F 5 "N" H 3950 4150 60  0001 C CNN "Critical"
F 6 "~" H 3950 4150 60  0001 C CNN "Notes"
	1    3950 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 2750 3950 2950
Wire Wire Line
	2950 3250 2950 3500
Wire Wire Line
	5250 4200 5400 4200
Connection ~ 5400 4200
Wire Wire Line
	5400 4200 5650 4200
$Comp
L Arduino_Uno_R3_From_Scratch-rescue:5V_LDO #PWR?
U 1 1 5F4F0202
P 3275 3700
F 0 "#PWR?" H 3275 3790 20  0001 C CNN
F 1 "5V_LDO" H 3271 3838 30  0000 C CNN
F 2 "" H 3275 3700 60  0000 C CNN
F 3 "" H 3275 3700 60  0000 C CNN
	1    3275 3700
	1    0    0    -1  
$EndComp
$Comp
L Arduino_Uno_R3_From_Scratch-rescue:R R?
U 1 1 5F4F0E62
P 3275 3950
F 0 "R?" H 3345 3996 50  0000 L CNN
F 1 "10k" H 3345 3905 50  0000 L CNN
F 2 "" V 3205 3950 30  0000 C CNN
F 3 "" H 3275 3950 30  0000 C CNN
	1    3275 3950
	1    0    0    -1  
$EndComp
$Comp
L Arduino_Uno_R3_From_Scratch-rescue:R R?
U 1 1 5F4F1648
P 3275 4375
F 0 "R?" H 3345 4421 50  0000 L CNN
F 1 "10k" H 3345 4330 50  0000 L CNN
F 2 "" V 3205 4375 30  0000 C CNN
F 3 "" H 3275 4375 30  0000 C CNN
	1    3275 4375
	1    0    0    -1  
$EndComp
$Comp
L Arduino_Uno_R3_From_Scratch-rescue:GND-RESCUE-Arduino_Uno_R3_From_Scratch #PWR?
U 1 1 5F4F1C0A
P 3275 4650
F 0 "#PWR?" H 3275 4650 30  0001 C CNN
F 1 "GND" H 3275 4580 30  0001 C CNN
F 2 "~" H 3275 4650 60  0000 C CNN
F 3 "~" H 3275 4650 60  0000 C CNN
	1    3275 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3275 3700 3275 3800
Wire Wire Line
	3275 4100 3275 4150
Wire Wire Line
	3275 4525 3275 4650
Wire Wire Line
	3275 4150 3550 4150
Wire Wire Line
	3550 4150 3550 3450
Connection ~ 3275 4150
Wire Wire Line
	3275 4150 3275 4225
$EndSCHEMATC
