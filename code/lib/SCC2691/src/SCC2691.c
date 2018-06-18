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
SCC2691err_t SCC2691_config(uint8_t port, uint8_t mr1, uint8_t mr2, uint8_t baud)
{
	if (port >= SCC2691_PORTS) 				return SCC2691_ERRPRT;					// If the port doesn't exist, return a Port Error.
	if (ports[port].state == SCC2691_STEN) 	return SCC2691_ERREN;					// If the port to be configured is already in use return an Enable Error.

	ports[port].addr = GET_PORT_ADDR(port);											// Record the bus address of the UART port.
	
	_write_port(GET_REG_ADDR(port, REG_CR), CMD_RSTRx);								// Reset the SCC2691 Reciever.
	_write_port(GET_REG_ADDR(port, REG_CR), CMD_RSTTx);								// Reset the SCC2691 Transmitter.
	
	_write_port(GET_REG_ADDR(port, REG_CR), CMD_RSTMR);								// Reset the SCC2691 MR Pointer.
	_write_port(GET_REG_ADDR(port, REG_MR1), mr1);									// Configure the SCC2691 MR1 Register.
	_write_port(GET_REG_ADDR(port, REG_MR2), mr2);									// Configure the SCC2691 MR2 Register.
	_write_port(GET_REG_ADDR(port, REG_CR), CMD_RSTMR);								// Reset the SCC2691 MR Pointer.
	ports[port].configReg[REG_MR1] = mr1;											// Record the MR1 configuration.
	ports[port].configReg[REG_MR2] = mr2;											// Record the MR2 configuration.
	
	_write_port(GET_REG_ADDR(port, REG_CSR), baud);									// Configure the SCC2691 CSR Register.
	ports[port].configReg[REG_CSR] = baud;											// Record the CSR configuration.
	
	_write_port(GET_REG_ADDR(port, REG_CR), CMD_ENRx|CMD_ENTx);						// Enable the SCC2691 Reciever and Transmitter.
	ports[port].state = SCC2691_STEN;												// Record the Enable state.
	
	return SCC2691_OK;
}

SCC2691err_t SCC2691_enable(uint8_t port)
{
	if (port >= SCC2691_PORTS) return SCC2691_ERRPRT;								// If the port doesn't exist, return a Port Error.
	
	if (ports[port].state != SCC2691_STEN)											// Only do something if port is dissabled.
	{
		_write_port(GET_REG_ADDR(port, REG_CR), CMD_ENRx|CMD_ENTx);					// Enable the SCC2691 Reciever and Transmitter. 
		ports[port].state = SCC2691_STEN;											// Record the Enable state.
	}		
	
	return SCC2691_OK;
} 

SCC2691err_t SCC2691_disable(uint8_t port)
{
	if (port >= SCC2691_PORTS) return SCC2691_ERRPRT;								// If the port doesn't exist, return a Port Error.
	
	if (ports[port].state != SCC2691_STDIS)											// Only do something if port is enabled.
	{
		_write_port(GET_REG_ADDR(port, REG_CR), CMD_DISRx|CMD_DISTx);				// Dissable the SCC2691 Reciever and Transmitter.
		ports[port].state = SCC2691_STDIS;											// Record the Enable state.
	}
	
	return SCC2691_OK;
}

SCC2691stat_t SCC2691_isEnabled(uint8_t port)
{
	if (port >= SCC2691_PORTS) return SCC2691_STDIS;								// If the port doesn't exists, default to dissabled.
	
	return ports[port].state;
}