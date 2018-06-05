#include "SCC2691.h"

unsigned int default_port;

int SCC2691_set_putchar_port(unsigned char port)
{
	if (!ports[port].enabled) return -1;
	
	default_port = port;
	
	return 0;
}

int putchar(int c)
{
	return SCC2691_write(default_port, c);
}