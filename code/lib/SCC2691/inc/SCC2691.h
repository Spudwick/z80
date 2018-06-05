#include	"_SCC2691.h"

#define 	GET_PORT_ADDR(PORT)			SCC2691_PORTS_BASE_ADDR + (PORT << 5)
#define 	GET_REG_ADDR(PORT, REG)		GET_PORT_ADDR(PORT) + REG

#define 	REG_MR1		0x00
#define 	REG_MR2		0x00
#define 	REG_SR		0x01
#define 	REG_CSR		0x01
#define 	REG_CR		0x02
#define 	REG_RHR		0x03
#define 	REG_THR		0x03
#define 	REG_ACR		0x05
#define 	REG_ISR		0x06
#define 	REG_IMR		0x06
#define 	REG_CTU		0x07
#define 	REG_CTUR	0x07
#define 	REG_CTL		0x08
#define		REG_CTLR	0x08

struct s_port
{
	unsigned char id;
	unsigned char addr;
	
	unsigned char configReg[REG_CTLR];
	unsigned char enabled;
};
struct s_port ports[SCC2691_PORTS];

