#include "SCC2691.h"

struct port_s
{
	uint8_t id;
	port_t addr;
	
	uint8_t configReg[REG_CTLR];
	SCC2691stat_t state;
};
struct port_s ports[SCC2691_PORTS];


//=================================================================================
// PRIVATE FUNCTIONS:
//=================================================================================


//=================================================================================
// PUBLIC FUNCTIONS:
//=================================================================================
SCC2691err_t SCC2691_config(port_t port, uint8_t mr1, uint8_t mr2, uint8_t baud)
{
	if (ports[port].state == SCC2691_STEN) return SCC2691_ERREN;

	_write_port(GET_REG_ADDR(port, REG_CR), CMD_RSTRx);
	_write_port(GET_REG_ADDR(port, REG_CR), CMD_RSTTx);
	
	_write_port(GET_REG_ADDR(port, REG_CR), CMD_RSTMR);
	_write_port(GET_REG_ADDR(port, REG_MR1), mr1);
	_write_port(GET_REG_ADDR(port, REG_MR2), mr2);
	_write_port(GET_REG_ADDR(port, REG_CR), CMD_RSTMR);
	ports[port].configReg[REG_MR1] = mr1;
	ports[port].configReg[REG_MR2] = mr2;
	
	_write_port(GET_REG_ADDR(port, REG_CSR), baud);
	ports[port].configReg[REG_CSR] = baud;
	
	_write_port(GET_REG_ADDR(port, REG_CR), CMD_ENRx|CMD_ENTx);
	ports[port].state = SCC2691_STEN;
	
	return SCC2691_OK;
}

SCC2691err_t SCC2691_enable(port_t port)
{
	if (ports[port].state != SCC2691_STEN)
	{
		_write_port(GET_REG_ADDR(port, REG_CR), CMD_ENRx|CMD_ENTx);
		ports[port].state = SCC2691_STEN;
	}		
	
	return SCC2691_OK;
} 

SCC2691err_t SCC2691_disable(port_t port)
{
	if (ports[port].state != SCC2691_STDIS)
	{
		ports[port].state = SCC2691_STDIS;
		_write_port(GET_REG_ADDR(port, REG_CR), CMD_DISRx|CMD_DISTx);	
	}
	
	return SCC2691_OK;
}

SCC2691stat_t SCC2691_isEnabled(port_t port)
{
	return ports[port].state;
}