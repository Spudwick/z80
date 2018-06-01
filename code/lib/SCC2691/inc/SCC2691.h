#define		MR1		0x00
#define		MR2		0x00
#define		SR		0x01
#define		CSR		0x01
#define		CR		0x02
#define		RHR		0x03
#define		THR		0x03
#define		ACR		0x04
#define		ISR		0x05
#define		IMR		0x05
#define		CTU		0x06
#define		CTUR	0x06
#define		CTL		0x07
#define		CTLR	0x07

struct s_SCC2691
{
	char conf_regs[8];
	
	unsigned char _port;
	char _enabled;
	char _chksum;
};
typedef struct s_SCC2691 t_scc2691;

int SCC2691_apply(t_scc2691* config, unsigned char port);
char SCC2691_read(t_scc2691* config);
int SCC2691_write(t_scc2691* config, char data);