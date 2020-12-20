EESchema Schematic File Version 4
EELAYER 30 0
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
Text HLabel 7825 4925 2    40   Input ~ 0
SERIAL_Rx
Text HLabel 7825 5025 2    40   Input ~ 0
SERIAL_Tx
Text HLabel 1675 2050 0    40   Input ~ 0
DTR
$Comp
L Arduino_Uno_R3_From_Scratch-rescue:R R12
U 1 1 55E8B3B8
P 1975 2500
F 0 "R12" V 2055 2500 40  0000 C CNN
F 1 "1K" V 1982 2501 40  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 1905 2500 30  0001 C CNN
F 3 "http://images.ihscontent.net/vipimages/VipMasterIC/IC/VISH/VISHS75859/VISHS75859-1.pdf" H 1975 2500 30  0001 C CNN
F 4 "METAL GLAZE/THICK FILM, 0.125W, 5%, 200ppm, 1000ohm, SURFACE MOUNT, 0805," H 1975 2500 60  0001 C CNN "Characteristics"
F 5 "ATMEGA328P DTR Pull Down Resistor" H 1975 2500 60  0001 C CNN "Description"
F 6 "Vishay" H 1975 2500 60  0001 C CNN "MFN"
F 7 "CRCW08051K00JNEA" H 1975 2500 60  0001 C CNN "MFP"
F 8 "SMD_0805" H 1975 2500 60  0001 C CNN "Package ID"
F 9 "ANY" H 1975 2500 60  0001 C CNN "Source"
F 10 "N" H 1975 2500 60  0001 C CNN "Critical"
F 11 "328P_Sub" H 1975 2500 60  0001 C CNN "Subsystem"
F 12 "~" H 1975 2500 60  0001 C CNN "Notes"
	1    1975 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	1675 2050 1975 2050
Wire Wire Line
	1975 2050 1975 2350
Connection ~ 1975 2050
Wire Wire Line
	3275 2050 3625 2050
$Comp
L Arduino_Uno_R3_From_Scratch-rescue:CONN_02X03 ICSP2
U 1 1 55E8CAAE
P 4225 1400
F 0 "ICSP2" H 4225 1650 50  0000 C CNN
F 1 "M20-9980346" H 4225 1200 40  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x03_P2.54mm_Vertical_SMD" H 4225 1400 60  0001 C CNN
F 3 "http://cdn.harwin.com/pdfs/M20-998.pdf" H 4225 1400 60  0001 C CNN
F 4 "6 CONTACT(S), MALE, STRAIGHT TWO PART BOARD CONNECTOR" H 4225 1400 60  0001 C CNN "Characteristics"
F 5 "ATMEGA328P ICSP Header" H 4225 1400 60  0001 C CNN "Description"
F 6 "Harwin" H 4225 1400 60  0001 C CNN "MFN"
F 7 "M20-9980346" H 4225 1400 60  0001 C CNN "MFP"
F 8 "PTH" H 4225 1400 60  0001 C CNN "Package ID"
F 9 "ANY" H 4225 1400 60  0001 C CNN "Source"
F 10 "N" H 4225 1400 60  0001 C CNN "Critical"
F 11 "328P_Sub" H 4225 1400 60  0001 C CNN "Subsystem"
F 12 "~" H 4225 1400 60  0001 C CNN "Notes"
	1    4225 1400
	1    0    0    -1  
$EndComp
$Comp
L Arduino_Uno_R3_From_Scratch-rescue:D D7
U 1 1 55E8CABC
P 5725 1750
F 0 "D7" H 5725 1850 40  0000 C CNN
F 1 "1N4148W-7-F" H 5725 1650 40  0000 C CNN
F 2 "Diode_SMD:D_SOD-123" H 5725 1750 60  0001 C CNN
F 3 "http://www.diodes.com/_files/datasheets/ds30086.pdf" H 5725 1750 60  0001 C CNN
F 4 "DIODE GEN PURP 100V 300MA SOD123" H 5725 1750 60  0001 C CNN "Characteristics"
F 5 "ATMEGA328P ICSP Reset Voltage Spike Protection" H 5725 1750 60  0001 C CNN "Description"
F 6 "Diodes Inc" H 5725 1750 60  0001 C CNN "MFN"
F 7 "1N4148W-7-F" H 5725 1750 60  0001 C CNN "MFP"
F 8 "SOD123" H 5725 1750 60  0001 C CNN "Package ID"
F 9 "ANY" H 5725 1750 60  0001 C CNN "Source"
F 10 "N" H 5725 1750 60  0001 C CNN "Critical"
F 11 "328P_Sub" H 5725 1750 60  0001 C CNN "Subsystem"
F 12 "~" H 5725 1750 60  0001 C CNN "Notes"
	1    5725 1750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5325 1200 5325 1300
Wire Wire Line
	5725 1900 5725 2050
Wire Wire Line
	5325 1900 5325 2050
Connection ~ 5725 2050
Connection ~ 5325 1300
Wire Wire Line
	4475 1300 5325 1300
Wire Wire Line
	4775 1500 4775 1650
Wire Wire Line
	4475 1500 4775 1500
Wire Wire Line
	3625 1500 3975 1500
Connection ~ 5325 2050
Wire Wire Line
	3625 1400 3975 1400
Wire Wire Line
	3625 1300 3975 1300
Wire Wire Line
	5725 1300 5725 1600
Text GLabel 3625 1400 0    40   Input ~ 0
328P_ICSP_SCK
Text GLabel 3625 1300 0    40   Input ~ 0
328P_ICSP_MISO
Text GLabel 4725 1400 2    40   Input ~ 0
328P_ICSP_MOSI
Wire Wire Line
	4475 1400 4725 1400
Connection ~ 3625 2050
Wire Wire Line
	2625 2050 2975 2050
Wire Wire Line
	1975 2650 1975 2975
Wire Wire Line
	3625 1500 3625 2050
$Comp
L Arduino_Uno_R3_From_Scratch-rescue:5V_LDO #PWR041
U 1 1 55E95BB4
P 5325 1200
F 0 "#PWR041" H 5325 1290 20  0001 C CNN
F 1 "5V_LDO" H 5325 1320 30  0000 C CNN
F 2 "~" H 5325 1200 60  0000 C CNN
F 3 "~" H 5325 1200 60  0000 C CNN
	1    5325 1200
	1    0    0    -1  
$EndComp
$Comp
L Arduino_Uno_R3_From_Scratch-rescue:R R13
U 1 1 55EAC911
P 3125 2050
F 0 "R13" V 3205 2050 40  0000 C CNN
F 1 "0" V 3132 2051 40  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 3055 2050 30  0001 C CNN
F 3 "http://industrial.panasonic.com/www-cgi/jvcr13pz.cgi?E+PZ+3+AOA0001+ERJ6GEY0R00V+7+WW" H 3125 2050 30  0001 C CNN
F 4 "RES SMD 0.0 OHM JUMPER 1/8W 0805" H 3125 2050 60  0001 C CNN "Characteristics"
F 5 "ATMEGA328P DTR 0R Link" H 3125 2050 60  0001 C CNN "Description"
F 6 "Panasonic" H 3125 2050 60  0001 C CNN "MFN"
F 7 "ERJ-6GEY0R00V" H 3125 2050 60  0001 C CNN "MFP"
F 8 "SMD_0805" H 3125 2050 60  0001 C CNN "Package ID"
F 9 "ANY" H 3125 2050 60  0001 C CNN "Source"
F 10 "N" H 3125 2050 60  0001 C CNN "Critical"
F 11 "328P_Sub" H 3125 2050 60  0001 C CNN "Subsystem"
F 12 "~" H 3125 2050 60  0001 C CNN "Notes"
	1    3125 2050
	0    -1   -1   0   
$EndComp
$Comp
L Arduino_Uno_R3_From_Scratch-rescue:R R16
U 1 1 56159EEE
P 5325 1750
F 0 "R16" V 5405 1750 40  0000 C CNN
F 1 "10K" V 5332 1751 40  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 5255 1750 30  0001 C CNN
F 3 "http://images.ihscontent.net/vipimages/VipMasterIC/IC/VISH/VISHS75859/VISHS75859-1.pdf" H 5325 1750 30  0001 C CNN
F 4 "RESISTOR, METAL GLAZE/THICK FILM, 0.125W, 5%, 200ppm, 10000ohm, SURFACE MOUNT, 0805" H 5325 1750 60  0001 C CNN "Characteristics"
F 5 "ATMEGA328P 10K ICSP Pull Up" H 5325 1750 60  0001 C CNN "Description"
F 6 "Vishay" H 5325 1750 60  0001 C CNN "MFN"
F 7 "CRCW080510K0JNEA" H 5325 1750 60  0001 C CNN "MFP"
F 8 "SMD_0805" H 5325 1750 60  0001 C CNN "Package ID"
F 9 "ANY" H 5325 1750 60  0001 C CNN "Source"
F 10 "N" H 5325 1750 60  0001 C CNN "Critical"
F 11 "328P_Sub" H 5325 1750 60  0001 C CNN "Subsystem"
F 12 "~" H 5325 1750 60  0001 C CNN "Notes"
	1    5325 1750
	-1   0    0    1   
$EndComp
$Comp
L Arduino_Uno_R3_From_Scratch-rescue:C C11
U 1 1 5615AE65
P 2475 2050
F 0 "C11" H 2525 2150 40  0000 L CNN
F 1 "0.1 uF" H 2525 1950 40  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 2513 1900 30  0000 C CNN
F 3 "http://images.ihscontent.net/vipimages/VipMasterIC/IC/KEME/KEMES10043/KEMES10043-1.pdf" H 2475 2050 60  0001 C CNN
F 4 "CAPACITOR, CERAMIC, MULTILAYER, 100 V, X7R, 0.1 uF, SURFACE MOUNT, 0805, CHIP, ROHS COMPLIANT" H 2475 2050 60  0001 C CNN "Characteristics"
F 5 "ATMEGA328P Reset Cap" H 2475 2050 60  0001 C CNN "Description"
F 6 "Kemet" H 2475 2050 60  0001 C CNN "MFN"
F 7 "C0805C104K1RACAUTO" H 2475 2050 60  0001 C CNN "MFP"
F 8 "SMD_0805" H 2475 2050 60  0001 C CNN "Package ID"
F 9 "ANY" H 2475 2050 60  0001 C CNN "Source"
F 10 "N" H 2475 2050 60  0001 C CNN "Critical"
F 11 "328P_Sub" H 2475 2050 60  0001 C CNN "Subsystem"
F 12 "~" H 2475 2050 60  0001 C CNN "Notes"
	1    2475 2050
	0    -1   -1   0   
$EndComp
$Comp
L Arduino_Uno_R3_From_Scratch-rescue:GND #PWR046
U 1 1 56207AE4
P 1975 2975
F 0 "#PWR046" H 1975 2975 30  0001 C CNN
F 1 "GND" H 1975 2905 30  0001 C CNN
F 2 "~" H 1975 2975 60  0000 C CNN
F 3 "~" H 1975 2975 60  0000 C CNN
F 4 "ANY" H 1975 2975 60  0001 C CNN "Source"
F 5 "N" H 1975 2975 60  0001 C CNN "Critical"
F 6 "~" H 1975 2975 60  0001 C CNN "Notes"
	1    1975 2975
	1    0    0    -1  
$EndComp
$Comp
L Arduino_Uno_R3_From_Scratch-rescue:GND #PWR047
U 1 1 56208C49
P 4775 1650
F 0 "#PWR047" H 4775 1650 30  0001 C CNN
F 1 "GND" H 4775 1580 30  0001 C CNN
F 2 "~" H 4775 1650 60  0000 C CNN
F 3 "~" H 4775 1650 60  0000 C CNN
F 4 "ANY" H 4775 1650 60  0001 C CNN "Source"
F 5 "N" H 4775 1650 60  0001 C CNN "Critical"
F 6 "~" H 4775 1650 60  0001 C CNN "Notes"
	1    4775 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1975 2050 2325 2050
Wire Wire Line
	5325 1300 5325 1600
Wire Wire Line
	5325 1300 5725 1300
Wire Wire Line
	5325 2050 5725 2050
$Comp
L Arduino_Uno_R3_From_Scratch-rescue:Crystal Y1
U 1 1 5F569D4C
P 8750 3900
F 0 "Y1" V 8704 4031 50  0000 L CNN
F 1 "Crystal" V 8795 4031 50  0000 L CNN
F 2 "Crystal:Crystal_SMD_5032-2Pin_5.0x3.2mm" H 8750 3900 60  0001 C CNN
F 3 "" H 8750 3900 60  0000 C CNN
	1    8750 3900
	0    1    1    0   
$EndComp
$Comp
L MCU_Microchip_ATmega:ATmega328P-AU U5
U 1 1 5F6ABACB
P 7150 4425
F 0 "U5" H 7400 2800 50  0000 C CNN
F 1 "ATmega328P-AU" H 7575 2925 50  0000 C CNN
F 2 "Package_QFP:TQFP-32_7x7mm_P0.8mm" H 7150 4425 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/ATmega328_P%20AVR%20MCU%20with%20picoPower%20Technology%20Data%20Sheet%2040001984A.pdf" H 7150 4425 50  0001 C CNN
	1    7150 4425
	1    0    0    -1  
$EndComp
$Comp
L Arduino_Uno_R3_From_Scratch-rescue:C C8
U 1 1 5F6C2143
P 8900 3600
F 0 "C8" V 8648 3600 50  0000 C CNN
F 1 "18pF" V 8739 3600 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 8938 3450 30  0001 C CNN
F 3 "" H 8900 3600 60  0000 C CNN
	1    8900 3600
	0    1    1    0   
$EndComp
$Comp
L Arduino_Uno_R3_From_Scratch-rescue:C C9
U 1 1 5F6C2B63
P 8900 4225
F 0 "C9" V 8825 4350 50  0000 C CNN
F 1 "18pF" V 8739 4225 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 8938 4075 30  0001 C CNN
F 3 "" H 8900 4225 60  0000 C CNN
	1    8900 4225
	0    1    1    0   
$EndComp
Wire Wire Line
	8550 3825 8550 3750
Wire Wire Line
	8550 3750 8750 3750
Wire Wire Line
	8550 3925 8550 4050
Wire Wire Line
	8550 4050 8750 4050
Wire Wire Line
	8750 3750 8750 3600
Connection ~ 8750 3750
Wire Wire Line
	8750 4050 8750 4225
Connection ~ 8750 4050
$Comp
L Arduino_Uno_R3_From_Scratch-rescue:GND #PWR0139
U 1 1 5F6CFD3D
P 9375 3925
F 0 "#PWR0139" H 9375 3925 30  0001 C CNN
F 1 "GND" H 9375 3855 30  0001 C CNN
F 2 "~" H 9375 3925 60  0000 C CNN
F 3 "~" H 9375 3925 60  0000 C CNN
F 4 "ANY" H 9375 3925 60  0001 C CNN "Source"
F 5 "N" H 9375 3925 60  0001 C CNN "Critical"
F 6 "~" H 9375 3925 60  0001 C CNN "Notes"
	1    9375 3925
	1    0    0    -1  
$EndComp
Wire Wire Line
	9050 4225 9200 4225
Wire Wire Line
	9200 4225 9200 3900
Wire Wire Line
	9200 3600 9050 3600
Wire Wire Line
	9200 3900 9375 3900
Wire Wire Line
	9375 3900 9375 3925
Connection ~ 9200 3900
Wire Wire Line
	9200 3900 9200 3600
$Comp
L Arduino_Uno_R3_From_Scratch-rescue:C C7
U 1 1 5F6D7CAF
P 6000 3225
F 0 "C7" H 6050 3325 40  0000 L CNN
F 1 "0.1 uF" H 6050 3125 40  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6038 3075 30  0000 C CNN
F 3 "http://images.ihscontent.net/vipimages/VipMasterIC/IC/KEME/KEMES10043/KEMES10043-1.pdf" H 6000 3225 60  0001 C CNN
F 4 "CAPACITOR, CERAMIC, MULTILAYER, 100 V, X7R, 0.1 uF, SURFACE MOUNT, 0805, CHIP, ROHS COMPLIANT" H 6000 3225 60  0001 C CNN "Characteristics"
F 5 "ATMEGA328P AREF Bypass Cap" H 6000 3225 60  0001 C CNN "Description"
F 6 "Kemet" H 6000 3225 60  0001 C CNN "MFN"
F 7 "C0805C104K1RACAUTO" H 6000 3225 60  0001 C CNN "MFP"
F 8 "SMD_0805" H 6000 3225 60  0001 C CNN "Package ID"
F 9 "ANY" H 6000 3225 60  0001 C CNN "Source"
F 10 "N" H 6000 3225 60  0001 C CNN "Critical"
F 11 "328P_Sub" H 6000 3225 60  0001 C CNN "Subsystem"
F 12 "~" H 6000 3225 60  0001 C CNN "Notes"
	1    6000 3225
	0    1    1    0   
$EndComp
$Comp
L Arduino_Uno_R3_From_Scratch-rescue:GND #PWR0140
U 1 1 5F6DA776
P 5375 3275
F 0 "#PWR0140" H 5375 3275 30  0001 C CNN
F 1 "GND" H 5375 3205 30  0001 C CNN
F 2 "~" H 5375 3275 60  0000 C CNN
F 3 "~" H 5375 3275 60  0000 C CNN
F 4 "ANY" H 5375 3275 60  0001 C CNN "Source"
F 5 "N" H 5375 3275 60  0001 C CNN "Critical"
F 6 "~" H 5375 3275 60  0001 C CNN "Notes"
	1    5375 3275
	1    0    0    -1  
$EndComp
Wire Wire Line
	5375 3275 5375 3225
Wire Wire Line
	5375 3225 5850 3225
Wire Wire Line
	6150 3225 6550 3225
Wire Wire Line
	7150 2925 7150 2850
Wire Wire Line
	7150 2850 7200 2850
Wire Wire Line
	7250 2850 7250 2925
$Comp
L Arduino_Uno_R3_From_Scratch-rescue:5V_LDO #PWR0141
U 1 1 5F6E82FA
P 7200 2800
F 0 "#PWR0141" H 7200 2890 20  0001 C CNN
F 1 "5V_LDO" H 7200 2920 30  0000 C CNN
F 2 "~" H 7200 2800 60  0000 C CNN
F 3 "~" H 7200 2800 60  0000 C CNN
	1    7200 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	7200 2800 7200 2850
Connection ~ 7200 2850
Wire Wire Line
	7200 2850 7250 2850
$Comp
L Arduino_Uno_R3_From_Scratch-rescue:GND #PWR0142
U 1 1 5F6F085B
P 7150 5975
F 0 "#PWR0142" H 7150 5975 30  0001 C CNN
F 1 "GND" H 7150 5905 30  0001 C CNN
F 2 "~" H 7150 5975 60  0000 C CNN
F 3 "~" H 7150 5975 60  0000 C CNN
F 4 "ANY" H 7150 5975 60  0001 C CNN "Source"
F 5 "N" H 7150 5975 60  0001 C CNN "Critical"
F 6 "~" H 7150 5975 60  0001 C CNN "Notes"
	1    7150 5975
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 5925 7150 5975
Text Label 6275 2050 0    50   ~ 0
RESET
Text Label 7825 4725 0    50   ~ 0
RESET
Wire Wire Line
	7750 4725 7825 4725
Text GLabel 7825 3625 2    40   Input ~ 0
328P_ICSP_MISO
Wire Wire Line
	7750 3825 8550 3825
Wire Wire Line
	7750 3925 8550 3925
Wire Wire Line
	7750 3625 7825 3625
Text GLabel 7825 3725 2    40   Input ~ 0
328P_ICSP_SCK
Wire Wire Line
	7750 3725 7825 3725
Text GLabel 7825 3525 2    40   Input ~ 0
328P_ICSP_MOSI
Wire Wire Line
	7750 3525 7825 3525
Wire Wire Line
	7750 4925 7825 4925
Wire Wire Line
	7750 5025 7825 5025
Text HLabel 7825 5125 2    40   Input ~ 0
ARD_DIG2
Text HLabel 7825 5225 2    40   Input ~ 0
ARD_DIG3
Text HLabel 7825 5325 2    40   Input ~ 0
ARD_DIG4
Text HLabel 7825 5425 2    40   Input ~ 0
ARD_DIG5
Wire Wire Line
	7750 5125 7825 5125
Wire Wire Line
	7750 5225 7825 5225
Wire Wire Line
	7750 5325 7825 5325
Wire Wire Line
	7750 5425 7825 5425
Text HLabel 7825 4525 2    40   Input ~ 0
ARD_AN4(SDA)
Text HLabel 7825 4625 2    40   Input ~ 0
ARD_AN5(SCL)
Wire Wire Line
	7750 4525 7825 4525
Wire Wire Line
	7750 4625 7825 4625
Text HLabel 7825 4125 2    40   Input ~ 0
ARD_AN0
Text HLabel 7825 5525 2    40   Input ~ 0
ARD_DIG6
Text HLabel 7825 5625 2    40   Input ~ 0
ARD_DIG7
Text HLabel 7825 3225 2    40   Input ~ 0
ARD_DIG8
Wire Wire Line
	7750 3225 7825 3225
Wire Wire Line
	7750 5525 7825 5525
Wire Wire Line
	7750 5625 7825 5625
Wire Wire Line
	7750 4125 7825 4125
Wire Wire Line
	5725 2050 6275 2050
Text HLabel 7825 3325 2    50   Input ~ 0
ARD_DIG9
Wire Wire Line
	7750 3325 7825 3325
Wire Wire Line
	3625 2050 5325 2050
$Comp
L Device:R_Small R11
U 1 1 5FF88592
P 8075 4325
F 0 "R11" V 7879 4325 50  0000 C CNN
F 1 "500" V 7970 4325 50  0000 C CNN
F 2 "LED_SMD:LED_0603_1608Metric" H 8075 4325 50  0001 C CNN
F 3 "~" H 8075 4325 50  0001 C CNN
	1    8075 4325
	0    1    1    0   
$EndComp
$Comp
L Arduino_Uno_R3_From_Scratch-rescue:LED D3
U 1 1 5FF88C19
P 8475 4325
F 0 "D3" H 8475 4080 50  0000 C CNN
F 1 "LED" H 8475 4171 50  0000 C CNN
F 2 "LED_SMD:LED_0603_1608Metric" H 8475 4325 60  0001 C CNN
F 3 "" H 8475 4325 60  0000 C CNN
	1    8475 4325
	-1   0    0    1   
$EndComp
$Comp
L Arduino_Uno_R3_From_Scratch-rescue:GND #PWR0147
U 1 1 5FF893A9
P 8775 4475
F 0 "#PWR0147" H 8775 4475 30  0001 C CNN
F 1 "GND" H 8775 4405 30  0001 C CNN
F 2 "~" H 8775 4475 60  0000 C CNN
F 3 "~" H 8775 4475 60  0000 C CNN
F 4 "ANY" H 8775 4475 60  0001 C CNN "Source"
F 5 "N" H 8775 4475 60  0001 C CNN "Critical"
F 6 "~" H 8775 4475 60  0001 C CNN "Notes"
	1    8775 4475
	1    0    0    -1  
$EndComp
Wire Wire Line
	7750 4325 7975 4325
Wire Wire Line
	8175 4325 8275 4325
Wire Wire Line
	8675 4325 8775 4325
Wire Wire Line
	8775 4325 8775 4475
$EndSCHEMATC
