
#include <Controllino.h>  /* Usage of CONTROLLINO library allows you to use CONTROLLINO_xx aliases in your sketch. */
#include "ModbusRtu.h"    /* Usage of ModBusRtu library allows you to implement the Modbus RTU protocol in your sketch. */
#include <SPI.h>
#include <Ethernet.h>
#include <PubSubClient.h>
#include <ArduinoJson.h>

#include <stdio.h>
#include <string.h>

#define MasterModbusAdd  0
#define SlaveModbusAdd  1

// This MACRO defines number of the comport that is used for RS 485 interface.
#define RS485Serial     3

//max and min values for varios setpoints, temp, fan speed etc. received from thingsboard
#define MAX_TEMP 60
#define MIN_TEMP 0

#define MAX_FAN 255
#define MIN_FAN 0

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
String RPC_num, rpc_response;
byte buffer[35];


EthernetClient ethClient;
PubSubClient client(ethClient);


//parameters received from thingsboard
float Temp_SP, InFan_SP, OutFan_SP;

// variables to store latest modbus sensor values from first sensor node (Node A)
float TempA, PresA, HumA;









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
  ModbusQuery[0].u16CoilsNo = 5; // number of elements (coils or registers) to read
  ModbusQuery[0].au16reg = ModbusSlaveRegisters; // pointer to a memory array in the CONTROLLINO

  // ModbusQuery 1: write a single register
  ModbusQuery[1].u8id = SlaveModbusAdd; // slave address
  ModbusQuery[1].u8fct = 6; // function code (this one is write a single register)
  ModbusQuery[1].u16RegAdd = 6; // start address in slave
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

  pinMode(CONTROLLINO_R0, OUTPUT);
  pinMode(CONTROLLINO_D9, OUTPUT);
  pinMode(CONTROLLINO_D10, OUTPUT);
  pinMode(CONTROLLINO_D11, OUTPUT);
  
  digitalWrite(CONTROLLINO_R0, HIGH);
}

//modbus values storage


int i,addr,change_addr;
int slave_select = 1;

char *tptr, *pptr, *hptr, *cptr;

void loop() {

    if (!client.connected()) {
      reconnect();
    }
    client.loop();

    
    
    

    //non blocking delay - sends mqtt every few seconds
    i++;
    if (i==20000){
      i=0;
      updateSetpoints(Temp_SP, InFan_SP, OutFan_SP);
      for (int h=0; h<4; h++){
        mqtt_pub(h);
      }
      Serial.print("SLAVE_ADDR = ");
      Serial.println(ModbusSlaveRegisters[4]);

      change_addr = !change_addr;
      Serial.print(change_addr);
      if(change_addr==1){addr=1;} 
      else{addr=7;}
      set_slave_address(addr);
      slave_select++;
      if (slave_select > 2) slave_select=1;
      Serial.println(slave_select);
      ControllinoModbusMaster.query( ModbusQuery[0] ); // send query (only once) 0 is read 1 is write
      ControllinoModbusMaster.query( ModbusQuery[0] ); // send query (only once) 0 is read 1 is write
      ControllinoModbusMaster.query( ModbusQuery[0] ); // send query (only once) 0 is read 1 is write
       ControllinoModbusMaster.poll(); // check incoming messages
    }
    
    ControllinoModbusMaster.poll(); // check incoming messages

    
}

//this function gets a sensor reading from the the modbus slave register on this device (periodically updated)
//it then formats the int value to a string and appends it to another string needed for mqtt/thingsboard
void mqtt_pub(int memaddr){  // 0 temp, 1 pres, 2 humidity, 3 c02
  char str_temp[10];
  char tstr[10];
  char mqtt_body[100];
  float temp = float( (ModbusSlaveRegisters[memaddr]) );

  if (ModbusSlaveRegisters[4]==7){  //this code is terrible
    if (memaddr == 0) {strcpy(mqtt_body,"{\"temperature1\": "); temp = temp /100; TempA = temp;}
    if (memaddr == 1) {strcpy(mqtt_body,"{\"pressure1\": "); PresA = temp;}
    if (memaddr == 2) {strcpy(mqtt_body,"{\"humidity1\": "); temp = temp/100; HumA = temp;}
    if (memaddr == 3) {strcpy(mqtt_body,"{\"c02_1\": ");}
  }

   if (ModbusSlaveRegisters[4]==5){  //this code is terrible
    if (memaddr == 0) {strcpy(mqtt_body,"{\"temperature2\": "); temp = temp /100; TempA = temp;}
    if (memaddr == 1) {strcpy(mqtt_body,"{\"pressure2\": "); PresA = temp;}
    if (memaddr == 2) {strcpy(mqtt_body,"{\"humidity2\": "); temp = temp/100; HumA = temp;}
    if (memaddr == 3) {strcpy(mqtt_body,"{\"c02_2\": ");}
  }

  

  dtostrf(temp, 4, 2, str_temp);
  sprintf(tstr, "%s", str_temp);
  strcat(mqtt_body, tstr);
  tptr = strcat(mqtt_body, "}");
  Serial.println(tptr);
  
 

  client.publish("v1/devices/me/telemetry", tptr);

}



//print sensor values coming in over modbus for address 0-4
//these registers are on this device but are periodically updated
// needs modbus polling code etc to work
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



//connect or reconnect MQTT
void reconnect() {
  // Loop until we're reconnected
  while (!client.connected()) {
    Serial.print("Attempting MQTT connection...");
    // Attempt to connect
    if (client.connect("Arduino_mqtt", "GROWROOM", "")) {
      Serial.println("connected");
      client.subscribe("v1/devices/me/rpc/request/+");
    } else {
      Serial.print("failed, rc=");
      Serial.print(client.state());
      Serial.println(" try again in 5 seconds");// Update these with values suitable for your network.

      // Wait 5 seconds before retrying
      delay(5000);
    }
  }
}

StaticJsonDocument<200> doc;
JsonArray array = doc.to<JsonArray>();
//mqtt callback if a subscribed topic pushes some data
void callback(char* topic, byte* payload, unsigned int length) {
  Serial.print("Message arrived [");
  char inData[80];
  
  
  Serial.print(topic);
  Serial.print("] ");
  
  for (int i=0;i<length;i++) {
    Serial.print((char)payload[i]);
  }
  Serial.println();

  DeserializationError err=deserializeJson(doc, payload);

  if(err) {
    Serial.print(F("deserializeJson() failed with code "));
    Serial.println(err.c_str());
    }

  //parse Json and update local variables
  const char* method = doc["method"];
  float params = doc["params"]; // 
  thingsbUpdate(method, params);

  char* response = "";
  char str_val[10];
  
  if ( (strcmp(method, "getTemp_SP")) == 0 )  dtostrf(Temp_SP, 4, 2, str_val); response = str_val;
  if ( (strcmp(method, "getInFan_SP")) == 0 )  dtostrf(InFan_SP, 4, 2, str_val); response = str_val;
  if ( (strcmp(method, "getOutFan_SP")) == 0 )  dtostrf(OutFan_SP, 4, 2, str_val); response = str_val;
  

  //respond to rpc msg with rpc num for thingsboard to verify msg received
  RPC_num = getValue(topic,'/',5);
  rpc_response = String("v1/devices/me/rpc/response/");
  rpc_response += RPC_num;
  rpc_response.toCharArray(buffer, 35);
  Serial.print(rpc_response);
  Serial.print("    ");
  Serial.println(response);
  client.publish( buffer , response);
}

//check received mqtt msg and update local SP variables if we get a match
void thingsbUpdate(char* method, float param){
  if ( (strcmp(method, "Temp_SP")) == 0 ) Temp_SP = param;
  if ( (strcmp(method, "InFan_SP")) == 0 )InFan_SP = param;
  if ( (strcmp(method, "OutFan_SP")) == 0 ) OutFan_SP = param;
  
  
}

//update the local variables that hold the system setpoints
void updateSetpoints(float Temp_SP, float InFan_SP, float OutFan_SP){
  int tempVal = map(int(Temp_SP), 0, 100, 0, MAX_TEMP);
  if( (tempVal < MAX_TEMP) & (tempVal > MIN_TEMP) ) {
    analogWrite(CONTROLLINO_D9, int(tempVal));
    Serial.println("TEMP UPDATED");
  }

  int infanVal = map(int(InFan_SP), 0, 100, 0, 255);
  analogWrite(CONTROLLINO_D11, int(infanVal));
  Serial.println(infanVal);

  int outfanVal = map(int(OutFan_SP), 0, 100, 0, 255);
  analogWrite(CONTROLLINO_D10, int(outfanVal));

  
  
}

//extract integer from string 
String getValue(String data, char separator, int index)
{
  int found = 0;
  int strIndex[] = {0, -1};
  int maxIndex = data.length()-1;

  for(int i=0; i<=maxIndex && found<=index; i++){
    if(data.charAt(i)==separator || i==maxIndex){
        found++;
        strIndex[0] = strIndex[1]+1;
        strIndex[1] = (i == maxIndex) ? i+1 : i;
    }
  }

  return found>index ? data.substring(strIndex[0], strIndex[1]) : "";
}

void set_slave_address(int address){
  ModbusQuery[0].u8id = address; // slave address for reads
  ModbusQuery[1].u8id = address; // slave address for writes
}
