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

//senseair s8 defs
SoftwareSerial K_30_Serial(4,5);   

byte readCO2[] = {0xFE, 0X44, 0X00, 0X08, 0X02, 0X9F, 0X25};  //Command packet to read Co2 (see app note)
byte response[] = {0,0,0,0,0,0,0};  //create an array to store the response

//multiplier for value. default is 1. set to 3 for K-30 3% and 10 for K-33 ICB
int valMultiplier = 1;


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

  //set up s8 serial
  K_30_Serial.begin(9600); 
  
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
  getSensorValues();

  

}


//gets sensor values and puts them into modbus array
//this array is then polled and sent via modbus
void getSensorValues() {

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

    sendRequest(readCO2);
    unsigned long valCO2 = getValue(response);
    ModbusSReg[3] = hum;
    Serial.println(valCO2);

    Serial.println();
}

void sendRequest(byte packet[])
{
  while(!K_30_Serial.available())  //keep sending request until we start to get a response
  {
    K_30_Serial.write(readCO2,7);
    delay(50);
  }
  
  int timeout=0;  //set a timeoute counter
  while(K_30_Serial.available() < 7 ) //Wait to get a 7 byte response
  {
    timeout++;  
    if(timeout > 10)    //if it takes to long there was probably an error
      {
        while(K_30_Serial.available())  //flush whatever we have
          K_30_Serial.read();
          
          break;                        //exit and try again
      }
      delay(50);
  }
  
  for (int i=0; i < 7; i++)
  {
    response[i] = K_30_Serial.read();
  }  
}

unsigned long getValue(byte packet[])
{
    int high = packet[3];                        //high byte for value is 4th byte in packet in the packet
    int low = packet[4];                         //low byte for value is 5th byte in the packet

  
    unsigned long val = high*256 + low;                //Combine high byte and low byte with this formula to get value
    return val* valMultiplier;
}
