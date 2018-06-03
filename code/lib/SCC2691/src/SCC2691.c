#include "SCC2691.h"
#include "z80core.h"

struct s_port
{
	unsigned char id;
	unsigned char addr;
	
	t_scc2691* config;
	unsigned char enabled;
};
struct s_port ports[SCC2691_PORTS];


//=================================================================================
// PRIVATE FUNCTIONS:
//=================================================================================
int SCC2691_config(unsigned int port, int MR1)
{
	
	
	return 1;
}


//=================================================================================
// PUBLIC FUNCTIONS:
//=================================================================================
int putchar(int c)
{
	return c;
}