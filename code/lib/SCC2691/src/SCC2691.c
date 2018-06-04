#include "SCC2691.h"
#include "z80core.h"

#define GET_PORT_ADDR(PORT)			SCC2691_PORTS_BASE_ADDR + (PORT << 5)
#define GET_REG_ADDR(PORT, REG)		GET_PORT_ADDR(PORT) + REG

#define REG_MR1		0x00
#define REG_MR2		0x00
#define REG_SR		0x01
#define REG_CSR		0x01
#define REG_CR		0x02
#define REG_RHR		0x03
#define REG_THR		0x03
#define REG_ACR		0x05
#define REG_ISR		0x06
#define REG_IMR		0x06
#define REG_CTU		0x07
#define REG_CTUR	0x07
#define REG_CTL		0x08
#define REG_CTLR	0x08

struct s_port
{
	unsigned char id;
	unsigned char addr;
	
	unsigned char configReg[REG_CTLR];
	unsigned char enabled;
};
struct s_port ports[SCC2691_PORTS];


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