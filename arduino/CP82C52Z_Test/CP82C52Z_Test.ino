
#define SETTLE_TIME   10

#define _RD_  33
#define _WR_  32
#define _CS_  35
#define RST   34

#define TBRE  42
#define DR    43

#define _RTS_ 53
#define _DTR_ 52
#define _CTS_ 50
#define _DSR_ 51

char data_bus[] = {
  23,     // D0
  22,     // D1
  25,     // ...
  24,
  40,
  26,
  29,
  28
};

char addr_bus[] = {
  31,     // A0
  30      // A1
};


#define ARY_LEN(ary)  (sizeof(ary) / sizeof(ary[0]))


char bus_direction(char* bus, char len, int dir)
{
  for(int i=0; i<len; i++)
  {    
    pinMode(bus[i], dir);
    digitalWrite(bus[i], LOW);
  }

  delay(SETTLE_TIME);
}

void write_bus(char* bus, char len, char data)
{
  for(int i=0; i<len; i++)
  {    
    digitalWrite(bus[i], ( ((data >> i) & 0x01) ? HIGH : LOW ) );
  }

  delay(SETTLE_TIME);
}

char read_bus(char* bus, char len)
{
  char ret = 0;
  
  for(int i=0; i<len; i++)
  {      
    ret |= (digitalRead(bus[i]) << i);
  }

  return ret;
}

char CP825C52_reg_read(char addr)
{
  char ret = 0;
  
  digitalWrite(_RD_, HIGH);
  digitalWrite(_WR_, HIGH);
  digitalWrite(_CS_, HIGH);
  
  write_bus(addr_bus, ARY_LEN(addr_bus), addr);
  bus_direction(data_bus, ARY_LEN(data_bus), INPUT);

  digitalWrite(_CS_, LOW);
  delay(100);
  digitalWrite(_RD_, LOW);
  delay(SETTLE_TIME*10);

  ret = read_bus(data_bus, ARY_LEN(data_bus));

  digitalWrite(_RD_, HIGH);
  delay(100);
  digitalWrite(_CS_, HIGH);
  delay(SETTLE_TIME);

  return ret;
}

void CP825C52_reg_write(char addr, char val)
{
  digitalWrite(_RD_, HIGH);
  digitalWrite(_WR_, HIGH);
  digitalWrite(_CS_, HIGH);

  write_bus(addr_bus, ARY_LEN(addr_bus), addr);
  
  bus_direction(data_bus, ARY_LEN(data_bus), OUTPUT);
  write_bus(data_bus, ARY_LEN(data_bus), val);

  digitalWrite(_CS_, LOW);
  delay(100);
  digitalWrite(_WR_, LOW);
  delay(SETTLE_TIME*10);

  digitalWrite(_WR_, HIGH);
  delay(100);
  digitalWrite(_CS_, HIGH);
  delay(SETTLE_TIME);

  bus_direction(data_bus, ARY_LEN(data_bus), INPUT);
}

void CP825C52_reset(void)
{
  digitalWrite(RST, HIGH);
  delay(SETTLE_TIME);
  digitalWrite(RST, LOW);
}


void setup()
{
  Serial.begin(9600);

  bus_direction(data_bus, ARY_LEN(data_bus), INPUT);
  bus_direction(addr_bus, ARY_LEN(addr_bus), OUTPUT);

  pinMode(_RD_, OUTPUT);
  digitalWrite(_RD_, HIGH);

  pinMode(_WR_, OUTPUT);
  digitalWrite(_WR_, HIGH);

  pinMode(_CS_, OUTPUT);
  digitalWrite(_CS_, HIGH);

  pinMode(RST, OUTPUT);
  digitalWrite(RST, LOW);

  pinMode(TBRE, INPUT);
  digitalWrite(TBRE, LOW);

  pinMode(DR, INPUT);
  digitalWrite(DR, LOW);

  pinMode(_RTS_, INPUT);
  digitalWrite(_RTS_, LOW);

  pinMode(_DTR_, INPUT);
  digitalWrite(_DTR_, LOW);

  pinMode(_CTS_, OUTPUT);
  digitalWrite(_CTS_, HIGH);

  pinMode(_DSR_, OUTPUT);
  digitalWrite(_DSR_, HIGH);

  CP825C52_reset();
}

void loop()
{
  // Setup Configuration.
  //CP825C52_reg_write(B01, B00111100);
  //CP825C52_reg_write(B11, B10000101);
  //CP825C52_reg_write(B10, B00011010);

  //CP825C52_reg_write(B00, B01110111);

  delay(100);

  Serial.print("MSR Register Test:\n");
  
  Serial.print(CP825C52_reg_read(B11),BIN);
  Serial.print("\n");

  digitalWrite(_CTS_, LOW);
  Serial.print(CP825C52_reg_read(B11),BIN);
  Serial.print("\n");

  digitalWrite(_CTS_, LOW);
  digitalWrite(_DSR_, LOW);
  Serial.print(CP825C52_reg_read(B11),BIN);
  Serial.print("\n");

  digitalWrite(_CTS_, HIGH);
  digitalWrite(_DSR_, LOW);
  Serial.print(CP825C52_reg_read(B11),BIN);
  Serial.print("\n\n");

  Serial.print("USR Register Test:\n");
  Serial.print(CP825C52_reg_read(B01),BIN);
  Serial.print("\n");

  for(;;);
}
