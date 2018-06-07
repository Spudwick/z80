#include	"SCC2691.h"

//=================================================================================
// PRIVATE FUNCTIONS:
//=================================================================================
SCC2691err_t is_dataAvailable(port_t port)
{
	if (_read_port(GET_REG_ADDR(port, REG_SR) & SR_RxRDY))
		return SCC2691_OK;
	else
		return SCC2691_NODAT;
}


//=================================================================================
// PUBLIC FUNCTIONS:
//=================================================================================
SCC2691err_t SCC2691_write(port_t port, data_t data)
{
	if (SCC2691_isEnabled(port) != SCC2691_STEN)	return SCC2691_ERREN;
	
	_write_port(GET_REG_ADDR(port, REG_THR), data);
	
	return SCC2691_OK;
}

SCC2691err_t SCC2691_read(port_t port, data_t* data)
{	
	if (SCC2691_isEnabled(port) != SCC2691_STEN)	return SCC2691_ERREN;
	if (is_dataAvailable(port) != SCC2691_OK)		return SCC2691_NODAT;
	
	*data = _read_port(GET_REG_ADDR(port, REG_RHR));
	
	return SCC2691_OK;
}