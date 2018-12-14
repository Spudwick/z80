#include	"SCC2691.h"
#include 	"SCC2691_regs.h"

//=================================================================================
// PRIVATE FUNCTIONS:
//=================================================================================
SCC2691err_t is_dataAvailable(uint8_t port)
{
	if (_read_port(GET_REG_ADDR(port, REG_SR) & SR_RxRDY))
		return SCC2691_OK;
	else
		return SCC2691_ERRDAT;
}


//=================================================================================
// PUBLIC FUNCTIONS:
//=================================================================================
SCC2691err_t SCC2691_write(uint8_t port, data_t data)
{
	if (port >= SCC2691_PORTS) 						return SCC2691_ERRPRT;					// If the port doesn't exist, return a Port Error.
	if (SCC2691_isEnabled(port) != SCC2691_STEN)	return SCC2691_ERREN;					// If the port is dissabled, return an Enable Error.
	
	_write_port(GET_REG_ADDR(port, REG_THR), data);											// Write data to SCC2691 THR register.
	
	return SCC2691_OK;
}

SCC2691err_t SCC2691_read(uint8_t port, data_t* data)
{
	if (port >= SCC2691_PORTS) 						return SCC2691_ERRPRT;					// If the port doesn't exist, return a Port Error.
	if (SCC2691_isEnabled(port) != SCC2691_STEN)	return SCC2691_ERREN;					// If the port is dissabled, return an Enable Error.
	if (is_dataAvailable(port) != SCC2691_OK)		return SCC2691_ERRDAT;					// If there's no data available, return a Data Error.
	
	*data = _read_port(GET_REG_ADDR(port, REG_RHR));										// Read data from SCC2691 RHR register.
	
	return SCC2691_OK;
}