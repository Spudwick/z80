#define SCC2691_PORTS	2

struct s_SCC2691
{
	char MR1;
	char MR2;
	char CSR;
	char CR;
	char ACR;
	char IMR;
	char CTUR;
	char CTLR;
};
typedef struct s_SCC2691 t_scc2691;



int putchar(int c);