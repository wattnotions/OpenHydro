#include <Controllino.h>  /* Usage of CONTROLLINO library allows you to use CONTROLLINO_xx aliases in your sketch. */
#include "ModbusRtu.h"    /* Usage of ModBusRtu library allows you to implement the Modbus RTU protocol in your sketch. */
#include <SPI.h>
#include <Ethernet.h>
#include <PubSubClient.h>

#include <stdio.h>
#include <string.h>

#define MasterModbusAdd  0
#define SlaveModbusAdd  1

// This MACRO defines number of the comport that is used for RS 485 interface.
#define RS485Serial     3

Modbus ControllinoModbusMaster(MasterModbusAdd, RS485Serial, 0);


uint16_t ModbusSlaveRegisters[8];

// This is an structe which contains a query to an slave device
modbus_t ModbusQuery[2];

uint8_t myState; // machine state
uint8_t currentQuery; // pointer to message query

unsigned long WaitingTime;

//mqtt init stuff
byte mac[]    = {  0xDE, 0xED, 0xBA, 0xFE, 0xFE, 0xED };
IPAddress ip(192, 168, 0, 45);
IPAddress server(64, 227, 46, 82);

//mqtt callback func
void callback(char* topic, byte* payload, unsigned int length) {
  Serial.print("Message arrived [");
  Serial.print(topic);
  Serial.print("] ");
  for (int i=0;i<length;i++) {
    Serial.print((char)payload[i]);
  }
  Serial.println();
}

EthernetClient ethClient;
PubSubClient client(ethClient);


//mqtt reconnect func
void reconnect() {
  // Loop until we're reconnected
  while (!client.connected()) {
    Serial.print("Attempting MQTT connection...");
    // Attempt to connect
    if (client.connect("Arduino_mqtt", "GROWROOM", "")) {
      Serial.println("connected");
      // Once connected, publish an announcement...
      client.publish("v1/devices/me/telemetry", "{\"temperatureB\": 45, \"humidity\": 88}");
      // ... and resubscribe
      client.subscribe("inTopic");
    } else {
      Serial.print("failed, rc=");
      Serial.print(client.state());
      Serial.println(" try again in 5 seconds");// Update these with values suitable for your network.

      // Wait 5 seconds before retrying
      delay(5000);
    }
  }
}



void setup() {
   // initialize serial communication at 9600 bits per second:
  Serial.begin(9600);
  Serial.println("-----------------------------------------");
  Serial.println("CONTROLLINO Modbus RTU Master Test Sketch");
  Serial.println("-----------------------------------------");
  Serial.println("");
  // ModbusQuery 0: read registers
  ModbusQuery[0].u8id = SlaveModbusAdd; // slave address
  ModbusQuery[0].u8fct = 3; // function code (this one is registers read)
  ModbusQuery[0].u16RegAdd = 0; // start address in slave
  ModbusQuery[0].u16CoilsNo = 4; // number of elements (coils or registers) to read
  ModbusQuery[0].au16reg = ModbusSlaveRegisters; // pointer to a memory array in the CONTROLLINO

  // ModbusQuery 1: write a single register
  ModbusQuery[1].u8id = SlaveModbusAdd; // slave address
  ModbusQuery[1].u8fct = 6; // function code (this one is write a single register)
  ModbusQuery[1].u16RegAdd = 4; // start address in slave
  ModbusQuery[1].u16CoilsNo = 1; // number of elements (coils or registers) to write
  ModbusQuery[1].au16reg = ModbusSlaveRegisters+4; // pointer to a memory array in the CONTROLLINO
  ModbusSlaveRegisters[4] = 1; // initial value for the relays 
	
  ControllinoModbusMaster.begin( 19200 ); // baud-rate at 19200
  ControllinoModbusMaster.setTimeOut( 5000 ); // if there is no answer in 5000 ms, roll over
  
  WaitingTime = millis() + 1000;
  myState = 0;
  currentQuery = 0; 

  //mqtt / ethernet setup
  client.setServer(server, 1883);
  client.setCallback(callback);

  Ethernet.begin(mac, ip);
  // Allow the hardware to sort itself out
  delay(1500);
}


int temp, pres, hum;

char *str;

void loop() {
  
    ControllinoModbusMaster.query( ModbusQuery[0] ); // send query (only once) 0 is read 1 is write
    ControllinoModbusMaster.poll(); // check incoming messages

    

     temp = (ModbusSlaveRegisters[0]);
     hum =  (ModbusSlaveRegisters[2]);

    char tstr[10];
    char str1[30];
    char str2[30];
    
    sprintf(tstr, "%d", temp);

    
     

     char mqtt_body[] = "{\"temperatureB\": ";
     strcat(mqtt_body, tstr);
     str = strcat(mqtt_body, "}");

     Serial.print(str);

     
     
       
      

    

   
    if (client.connect("Arduino_mqtt", "GROWROOM", "")) {
      Serial.println("connected");
      // Once connected, publish an announcement...
      client.publish("v1/devices/me/telemetry", str);
      // ... and resubscribe
      client.subscribe("inTopic");
    
    
  
    } 


    

}


void print_modbus_registers(){
   // registers read was proceed
          Serial.println("---------- READ RESPONSE RECEIVED ----");
          Serial.print("Slave ");
          Serial.print(SlaveModbusAdd, DEC); 
          Serial.print(" Reg 0 : ");
          Serial.print(ModbusSlaveRegisters[0],DEC);
          Serial.print(" , Reg 1: ");
          Serial.print(ModbusSlaveRegisters[1],DEC);
          Serial.print(" , Reg2 : ");
          Serial.print(ModbusSlaveRegisters[2], DEC);
          Serial.print(" , Reg3 : ");
          Serial.println(ModbusSlaveRegisters[3], DEC);
          Serial.println("-------------------------------------");
          Serial.println("");
}
