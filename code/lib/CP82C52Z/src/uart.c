
#include "uart.h"

#define PORT_BASE				0x1000
#define GET_PORTBASE(port)		PORT_BASE + port
#define GET_ADDR(port, reg)		GET_PORTBASE(port) + reg


