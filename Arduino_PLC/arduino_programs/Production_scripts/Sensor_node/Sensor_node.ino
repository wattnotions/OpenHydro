/**
 *  Modbus slave example 3:
 *  The purpose of this example is to link a data array
 *  from the Arduino to an external device through RS485.
 *
 *  Recommended Modbus Master: QModbus
 *  http://qmodbus.sourceforge.net/
 */

#include <ModbusRtu.h>

#include <Wire.h>
#include <SPI.h>
#include <Adafruit_Sensor.h>
#include <Adafruit_BME280.h>

#include <SoftwareSerial.h>

SoftwareSerial mySerial(2, 3); // RX, TX

// assign the Arduino pin that must be connected to RE-DE RS485 transceiver
#define TXEN	8 

//bme280 defs
#define BME_SCK 13
#define BME_MISO 12
#define BME_MOSI 11
#define BME_CS 10
#define SEALEVELPRESSURE_HPA (1013.25)

Adafruit_BME280 bme; // I2C
unsigned long delayTime;

// data array for modbus network sharing
uint16_t ModbusSReg[8] = {1112,232,344,4,5,6,7,8};   //modbus slave registers



/**
 *  Modbus object declaration
 *  u8id : node id = 0 for master, = 1..247 for slave
 *  port : serial port
 *  u8txenpin : 0 for RS-232 and USB-FTDI 
 *               or any pin number > 1 for RS-485
 */
Modbus slave(1,mySerial,TXEN); // this is slave @1 and RS-485

void setup() {
  Serial.begin( 19200 ); // baud-rate at 19200

  //set up Modbus / rs485
  mySerial.begin(19200);
  pinMode(TXEN, OUTPUT);
  slave.start();

  //set up bme280
  unsigned status;
  status = bme.begin(0x76);  
  
  if (!status) {
      Serial.println("Could not find a valid BME280 sensor, check wiring, address, sensor ID!");
      Serial.print("SensorID was: 0x"); Serial.println(bme.sensorID(),16);
      Serial.print("        ID of 0xFF probably means a bad address, a BMP 180 or BMP 085\n");
      Serial.print("   ID of 0x56-0x58 represents a BMP 280,\n");
      Serial.print("        ID of 0x60 represents a BME 280.\n");
      Serial.print("        ID of 0x61 represents a BME 680.\n");
     
  }
  
  
}

int num_bytes=0;
void loop() {
  slave.poll( ModbusSReg, 8 );
  printValues();

}

void printValues() {

    static int temp, pres, hum;
    Serial.print("Temperature = ");
    temp = int(bme.readTemperature()*100);
    ModbusSReg[0] = temp;
    Serial.print(temp);
    Serial.println(" *C");

    Serial.print("Pressure = ");
    pres = int(bme.readPressure() / 100.0F);
    ModbusSReg[1] = pres;
    Serial.print(pres);
    Serial.println(" hPa");

    Serial.print("Humidity = ");
    hum = int(bme.readHumidity()*100);
    ModbusSReg[2] = hum;
    Serial.print(hum);
    Serial.println(" %");

    Serial.println();
}
