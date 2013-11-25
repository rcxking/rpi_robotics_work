/*
 * Here's the commented version of the code.
 *
 * I2C Protocol: http://www.takktile.com/tutorial:takktile-i2c
 * I'll be here this Friday - 11/22/13.
 * 
 * Bryant :D
 * Also:
 * (\_/)
 * (0.0)
 * (>.<)
 * This is bunny.  He's taking over this explanation.
 */
 
// Arduino addressing is using 7bit
// All the addresses were calculated in 8bit
// And were right shifted when actually used

/* 
 * What this means is that Arduino's Wire Library uses 7 bits.
 * The 8th bit is used to identify if data is being written or
 * read from the device.  The other 7 bits are the binary address
 * of the device (the "name" of the device).  Because we don't
 * give 2 craps about the 8th bit, we drop it by shifting the 8 bit
 * address 1 unit to the right (Arduino code is: >>).  For example, if the address of the sensor was
 * 01111000, shifting it right 1 bit is: 00111100.  This also effectively limits the address to 
 * decimal 0 to 127 (because using powers of 2, you can only have 7 bits, and if all are 1,
 * that becomes: (1 + 2 + 4 + 8 + 16 + 32 + 64 = 127) or 2^7 - 1 = 128 - 1 = 127.
 */

// Wire.h is the Arduino I2C library to talk to the sensors
#include <Wire.h>

#define NUM_SENSORS 10*5 /*
						  * reserve addresses for 10 strips with 5 sensors on each <- They're allocating 
						  * up to 50 sensors for the Arduino.
						  */
						
#define PRECISION 0

#define FREESCALE_ADDRESS 0xC0


/*
 * Here's a chart for the powers of 2 up to 8 bits.  You'll need this to understand Hexadecimal/Octal/Binary:
 *
 * Powers of 2 (2^x):  128    64     32    16    8   4    2    1
 *
 * According to the takktile website, "The upper 4bits are used to identify the strip number, and the lower 4bits are reserved for commands."
 * We're ignoring the upper 4 bits (in this case, it's the first 4 bits - all 0's) because we're not using the native microcontroller
 * on the strip and are going through Arduino instead.  This means that the lower 4 bits are what we care about.
 */

#define SENSOR_ALL_ON 0x0C  // Hexadecimal 0C becomes 12 decimal = 00001100 = 1100
#define SENSOR_ALL_OFF 0x0D // Hexadecimal 0D becomes 13 decimal = 00001101 = 1101

float a0[NUM_SENSORS];
float b1[NUM_SENSORS];
float b2[NUM_SENSORS];
float c12[NUM_SENSORS];

byte addressArray[NUM_SENSORS]; // This array holds addresses for each of the sensors (in this case, 50)
byte addressLength;

// Array to hold the current pressure value for each sensor:
float pressureHistory[NUM_SENSORS];

// Optional flags to show the addresses, pressure, and/or temperature
boolean flagHistoryExists=false;
boolean flagShowAddress=false;
boolean flagShowPressure=true;
boolean flagShowTemperature=false;

// This function begins communication through the I2C Protocol:
void initialize() {
    // s 0C
	/*
	 * To begin, we first need to turn on all sensors.
	 * 0x0C is the value assigned to SENSOR_ALL_ON.  According to that page I linked
	 * on the top, in the section labeled "Enabling/Disabling all Sensors", 0x0C triggers
	 * all sensors in one shot.  Remember that we need to bit shift by 1 right to 
	 * compensate Arduino only using 7 / 8 bits.
	 */
  Wire.beginTransmission(SENSOR_ALL_ON>>1);
  Wire.endTransmission();
  
  // s C0 12 01
  /*
   * The commands 0xC0 0x12 are to enable data conversion.  0x01 means
   * read the pressure value from the sensor (lowest 4 bytes).
   */
  Wire.beginTransmission(0xC0>>1);
  Wire.write(0x12);
  Wire.write(0x01);
  Wire.endTransmission();
  
  // s 0D
  // This command is where we tell the sensors that we want your data NOW!
  Wire.requestFrom(SENSOR_ALL_ON>>1, 1);
  
  /*
   * Because the Arduino can't talk too quickly through I2C, this 5 millisecond delay
   * allows the sensors to get ready to transmit data.
   */
  delay(5);
}

void readCoeffs(byte addressSensor, byte num) {
  
  // Select sensor
  Wire.beginTransmission(addressSensor>>1);
  Wire.endTransmission();
  
  // Request coefficients
  Wire.beginTransmission(FREESCALE_ADDRESS>>1);
  Wire.write(0x04);
  Wire.endTransmission();
  Wire.requestFrom(FREESCALE_ADDRESS>>1, 8);
  int16_t a0coeff = (( (uint16_t) Wire.read() << 8) | Wire.read());
  int16_t b1coeff = (( (uint16_t) Wire.read() << 8) | Wire.read());
  int16_t b2coeff = (( (uint16_t) Wire.read() << 8) | Wire.read());
  int16_t c12coeff = (( (uint16_t) (Wire.read() << 8) | Wire.read())) >> 2;
  // Turn sensor off
  Wire.requestFrom(addressSensor>>1, 1);
  
  a0[num] = (float)a0coeff / 8;
  b1[num] = (float)b1coeff / 8192;
  b2[num] = (float)b2coeff / 16384;
  c12[num] = (float)c12coeff;
  c12[num] /= 4194304.0;
}

void setup () {
  Wire.begin();
  Serial.begin(115200);
  
  checkAddresses(); // check how many sensors are connected
  
  // for each found sensor, read the coefficients ..
  for(int i=0;i<addressLength;i++) {
    readCoeffs(addressArray[i],i);
  }
}
void readNum(byte addressSensor, float* oTemp, float* oPressure)
{
  // Select sensor
  Wire.beginTransmission(addressSensor>>1);
  Wire.endTransmission();

  // Request P/T data
  Wire.beginTransmission(FREESCALE_ADDRESS>>1);
  Wire.write((byte)0x00);
  Wire.endTransmission();

  Wire.requestFrom(FREESCALE_ADDRESS>>1, 4);
  uint16_t pressure = (( (uint16_t) Wire.read() << 8) | Wire.read()) >> 6;
  uint16_t temp = (( (uint16_t) Wire.read() << 8) | Wire.read()) >> 6;
  
  // Turn sensor off
  Wire.requestFrom(addressSensor>>1, 1);

  float pressureComp = a0[addressSensor] + (b1[addressSensor] + c12[addressSensor] * temp) * pressure + b2[addressSensor] * temp;

  // Calculate temp & pressure
  *oPressure = ((65.0F / 1023.0F) * pressureComp) + 50.05F; // kPa
  *oTemp = ((float) temp - 498.0F) / -5.35F + 25.0F; // C
  
  // Ignore the calibrations for the moment
  *oPressure = pressure;
  //*oTemp = temp;
}

// This function checks to see how many sensors are actually connected.
// Remember that this program can support up to 50 sensors (10 strips of 5)
void checkAddresses()
{
  addressLength=0;
  int temp_add=0;

  // check every strip 
  // Remember that there can be up to 10 strips.  Loop through all the strips:
  for (int strip_n=0;strip_n<10;strip_n++) {

    // check every sensor
	//...And each strip has 5 sensors on it:
    for (int sensor_n=0;sensor_n<5;sensor_n++){

      temp_add=(strip_n<<4)+sensor_n*2; // calculate the address

      // check if the Attiny responds with its address
      Wire.beginTransmission(temp_add>>1); // take into account that its 7bit !
      if (Wire.endTransmission()==0)
      {
        // check if there is a sensor on this line
        Wire.beginTransmission(FREESCALE_ADDRESS>>1);
        if (Wire.endTransmission()==0)
          addressArray[addressLength]=temp_add;
          addressLength++;
      }
    }
  }
}

// Loop function: this will repeat forever:
void loop() {

  float oTemp=0;
  float oPressure=0;
  float p_current=0;
  float p_history=0;
  float delta_up=0;
  float delta_down=0;
  
  initialize();
 
  Serial.print('[');
  for(int i=0;i<addressLength;i++)
  {
    if (i>0){
          Serial.print(',');
    }
    readNum(addressArray[i], &oTemp, &oPressure);

    if (flagHistoryExists){
p_current=oPressure;
p_history=pressureHistory[i];
delta_up=p_current-p_history;
delta_down=p_history-(p_current-1024);
if (delta_up<delta_down){
oPressure=p_history+delta_up;
}else{
oPressure=p_history-delta_down;
        }
    }
    pressureHistory[i]=oPressure;
    
    // ------------------------------
    // Start output to the serial port
    
    Serial.print('[');

    // Print out sensor ID value if the flag was set
    if (flagShowAddress){
      Serial.print(addressArray[i],HEX);
    }

    // Print out Pressure values if the flag was set
    if (flagShowPressure){
      if (flagShowAddress){
        Serial.print(',');
      }
    Serial.print(oPressure,PRECISION);
    }

    // Print out Temperature values if the flag was set
    if (flagShowTemperature){
      if (flagShowPressure){
        Serial.print(',');
      }
    Serial.print(oTemp,PRECISION);
    }
    Serial.print(']');
  }
  Serial.println(']');

    // End output to the serial port
    // ------------------------------
  flagHistoryExists=true;
  
  // Listen to the commands from the serial port
  if (Serial.available()){
    byte inByte = (byte)
    Serial.read();
    if (inByte=='n') { flagShowAddress = !flagShowAddress; }
    if (inByte=='p') { flagShowPressure = !flagShowPressure; }
    if (inByte=='t') { flagShowTemperature = !flagShowTemperature; }
    
  }
}
