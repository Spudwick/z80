#include	"z80core.h"
#include	"SCC2691.h"

int SCC2691_write(unsigned int port, char data)
{
	if (!SCC2691_isEnabled(port))	return -1;
	
	_write_port(GET_REG_ADDR(port, REG_THR), data);
	
	return 0;
}

int SCC2691_read(unsigned int port, char* data)
{	
	if (!SCC2691_isEnabled(port))	return -1;
	
	*data = _read_port(GET_REG_ADDR(port, REG_RHR));
	
	return 0;
}