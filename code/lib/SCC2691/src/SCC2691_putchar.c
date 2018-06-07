#include "SCC2691.h"

port_t default_port;


//=================================================================================
// PRIVATE FUNCTIONS:
//=================================================================================


//=================================================================================
// PUBLIC FUNCTIONS:
//=================================================================================
SCC2691err_t SCC2691_set_putchar_port(port_t port)
{
	if (SCC2691_isEnabled(port) != SCC2691_STEN) return SCC2691_ERREN;
	
	default_port = port;
	
	return SCC2691_OK;
}

int putchar(int c)
{
	return SCC2691_write(default_port, (uint8_t)c);
}