#define SCC2691_PORTS				2
#define SCC2691_PORTS_BASE_ADDR		0x00

int SCC2691_config(unsigned int port, unsigned char MR1, unsigned char MR2, unsigned char CSR);
int SCC2691_enable(unsigned int port);
int SCC2691_disable(unsigned int port);
int SCC2691_isEnabled(unsigned int port);

int SCC2691_write(unsigned int port, char data);
int SCC2691_read(unsigned int port, char* data);

int SCC2691_set_putchar_port(unsigned char port);
int putchar(int c);