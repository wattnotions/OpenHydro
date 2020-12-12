/**
 *  Modbus slave example 3:
 *  The purpose of this example is to link a data array
 *  from the Arduino to an external device through RS485.
 *
 *  Recommended Modbus Master: QModbus
 *  http://qmodbus.sourceforge.net/
 */

#include <ModbusRtu.h>

#include <SoftwareSerial.h>

SoftwareSerial mySerial(2, 3); // RX, TX

// assign the Arduino pin that must be connected to RE-DE RS485 transceiver
#define TXEN	8 

// data array for modbus network sharing
uint16_t ModbusSlaveRegisters[8] = {1,2,3,4,5,6,7,8};



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
  mySerial.begin(19200);
  pinMode(TXEN, OUTPUT);
  
//  slave.start();
}

int num_bytes=0;
void loop() {
  Serial.println(slave.poll( ModbusSlaveRegisters, 16 ));

  Serial.print ("LAst error ");
  Serial.println(slave.getLastError());
  

  for(int i=0; i<8; i++){
    Serial.print(ModbusSlaveRegisters[i]);
    Serial.print(" ,");
  }
  Serial.println();

  Serial.print("in count = ");
  Serial.println(slave.getInCnt());

  Serial.print("out count = ");
  Serial.println(slave.getOutCnt());


  
  
  
  
  
}
