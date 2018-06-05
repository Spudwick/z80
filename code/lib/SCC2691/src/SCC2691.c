#include "SCC2691.h"
#include "z80core.h"

//=================================================================================
// PRIVATE FUNCTIONS:
//=================================================================================


//=================================================================================
// PUBLIC FUNCTIONS:
//=================================================================================
int SCC2691_config(unsigned int port, unsigned char MR1, unsigned char MR2, unsigned char CSR)
{
	if (ports[port].enabled) return -1;
	
	// Perform SCC2691 Configuration...
	
	ports[port].configReg[REG_MR1] = MR1;
	ports[port].configReg[REG_MR2] = MR2;
	ports[port].configReg[REG_CSR] = CSR;
	
	ports[port].enabled = 1;
	
	return 0;
}

int SCC2691_enable(unsigned int port)
{
	if (ports[port].enabled)	return -1;
	
	// Dissable SCC2691...
	
	ports[port].enabled = 1;
	
	return 0;
} 

int SCC2691_disable(unsigned int port)
{
	if (!ports[port].enabled)	return -1;
	
	// Dissable SCC2691...
	
	ports[port].enabled = 0;
	
	return 0;
}

int SCC2691_isEnabled(unsigned int port)
{
	if (ports[port].enabled)	return 1;
	else						return 0;
}

int SCC2691_write(unsigned int port, char data)
{
	if (!ports[port].enabled)	return -1;
	
	_write_port(GET_REG_ADDR(port, REG_THR), data);
	
	return 0;
}

int SCC2691_read(unsigned int port, char* data)
{	
	if (!ports[port].enabled)	return -1;
	
	*data = _read_port(GET_REG_ADDR(port, REG_RHR));
	
	return 0;
}