/*
 * Test of generating 0-10V analog signal using PWM 
 * from pin D11 fed into low pass filter
 * R = 3.8k C = 1uF
 * Output from LP filter connected to pin A0
*/





#include <Controllino.h> 

void setup() {
  // put your setup code here, to run once:

  pinMode(CONTROLLINO_D11, OUTPUT);
  pinMode(CONTROLLINO_A0, INPUT);
  
  

  Serial.begin(9600);

}


float volts;
int analog_val;
void loop() {
  // put your main code here, to run repeatedly:

  
  for(int i=0; i<30 ; i++){
    read_and_print(i);
    delay(500);
  }

  for(int i=30; i>0 ; i--){
    read_and_print(i);
    delay(500);
  }
  

  
  
 

}

void read_and_print(int i){
  analogWrite(CONTROLLINO_D11, i);
  analog_val = ( analogRead(CONTROLLINO_A0)) ;
  volts      = (float(analog_val) / 68);
  Serial.print(volts);
  Serial.print(",");
  Serial.println(i);
}
