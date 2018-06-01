#include "SCC2691.h"

#include <stdio.h>
#include "z80core.h"

//=================================================================================
// PRIVATE FUNCTIONS:
//=================================================================================

// int calc_sum(t_scc2691* config); -----------------------------------------------
// 		Calculates a checksum off passed configuration.
// --------------------------------------------------------------------------------
// Takes:
// 		- t_scc2691* config				>> SCC2691 Configuration struct.
// Returns:
//		- int sum						>> Calculated checksum.
// --------------------------------------------------------------------------------
int calc_sum(t_scc2691* config)
{
	int i;
	int sum;
	for(i = 0; i <= CTLR; i++)
	{
		sum += config->conf_regs[i];
	}
	sum += config->_port;
	sum += config->_enabled;
	
	return sum;
}


//=================================================================================
// PUBLIC FUNCTIONS:
//=================================================================================

// void SCC2691_apply(t_scc2691* config); -----------------------------------------
// 		Applys the passed configuration.
// --------------------------------------------------------------------------------
// Takes:
// 		- t_scc2691* config				>> SCC2691 Configuration struct.
// Returns:
//		- int status					>> Status value. 0 = Ok, 1 = Error. 
// --------------------------------------------------------------------------------
int SCC2691_apply(t_scc2691* config, unsigned char port)
{
	printf("Test");
	
	config->chksum = calc_sum(config);
}

char SCC2691_read(t_scc2691* config, char data)
{
	if (calc_sum(config) != config->chksum) return -1;
	
	return _read_port(config->port + THR);
}

int SCC2691_write(t_scc2691* config, char data)
{
	if (calc_sum(config) != config->chksum) return -1;
	
	_write_port(config->port + RHR, data);
	return 0;
}