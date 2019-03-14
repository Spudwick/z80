#include	"stdint.h"
#include	"z80core.h"

#define 	MR1_PAR		0x00		// With parity.
#define 	MR1_FPAR	0x08		// Force parity.
#define 	MR1_NOPAR	0x10		// No parity.
#define 	MR1_EPAR	0x00		// Even parity.
#define 	MR1_OPAR	0x04		// Odd parity.
#define 	MR1_8BITS	0x03		// 8 Bits per character.
#define 	MR1_RTSCN	0x80		// Receiver controls MPO. Negated when Rx FIFO is full (4 unread characters).

#define 	MR2_1STOP	0x07
#define 	MR2_CTSCN	0x10		// Transmitter only send when MPI is asserted.

#define 	BAUD_9600	0xBB

typedef enum SCC2691err_e {
	SCC2691_ERRDAT	= -3,
	SCC2691_ERRPRT	= -2,
	SCC2691_ERREN 	= -1,
	SCC2691_OK 		= 0
} SCC2691err_t;

typedef enum SCC2691stat_e {
	SCC2691_STDIS	= 0,
	SCC2691_STEN
} SCC2691stat_t;

SCC2691err_t SCC2691_config(uint8_t port, uint8_t mr1, uint8_t mr2, uint8_t csr);
SCC2691err_t SCC2691_enable(uint8_t port);
SCC2691err_t SCC2691_disable(uint8_t port);
SCC2691stat_t SCC2691_isEnabled(uint8_t port);

SCC2691err_t SCC2691_print(uint8_t port, data_t* data);
SCC2691err_t SCC2691_write(uint8_t port, data_t data);
SCC2691err_t SCC2691_read(uint8_t port, data_t* data);

SCC2691err_t SCC2691_set_putchar_port(uint8_t port);
int putchar(int c);