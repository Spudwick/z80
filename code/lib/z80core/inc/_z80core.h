typedef uint16_t addr_t;
typedef uint8_t port_t;
typedef uint8_t data_t;

typedef enum z80err_e {
	Z80_OK
} z80err_t;

void _write_byte(addr_t addr, data_t data);
data_t _read_byte(addr_t addr);

void _write_port(port_t port, data_t data);
data_t _read_port(port_t port);

void _trap(void);