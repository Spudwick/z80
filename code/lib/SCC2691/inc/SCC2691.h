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

#define 	CMD_ENRx	0x01
#define 	CMD_DISRx	0x02
#define 	CMD_ENTx	0x04
#define 	CMD_DISTx	0x08
#define 	CMD_ENABLE	(CMD_ENRx & CMD_ENTx)
#define 	CMD_DISABLE	(CMD_DISRx & CMD_DISTx)	
#define 	CMD_RSTMR	0x10
#define 	CMD_RSTRx	0x20
#define 	CMD_RSTTx	0x30

#define 	SR_RxRDY	0x01
#define 	SR_FFULL	0x02
#define 	SR_TxRDY	0x04
#define 	SR_TxEMT	0x08
#define 	SR_EROVR	0x10
#define 	SR_ERPAR	0x20
#define 	SR_ERFRAM	0x40
#define 	SR_ERRECV	0x80