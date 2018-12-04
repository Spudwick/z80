#pragma preproc_asm +

#include "test.h"

extern void trap(void);
char bootloader(void);

extern char _STR_VER;

void boot_entry(void) __naked
{
	if (bootloader() != 0x00)
		trap();
	else
	{
		__asm
		jp		0x8000
		__endasm;
	}
	
}

unsigned char _port;
char _data;

void write_port(unsigned char port, char data)
{
	_port = port;
	_data = data;
	
	__asm
	ld	a,(__port)									; (_port) -> a
	ld	c,a											; a -> c
	ld	a,(__data)									; (_data) -> a
	
	out (c),a										; a -> (c)
	__endasm;
}

char read_port(unsigned char port)
{
	_port = port;
	
	__asm	
	in	a,(__port)									; (_port) -> a
	
	ld	(__data),a									; a -> (_data)
	__endasm;
	
	return _data;
}

char bootloader(void)
{	
	char* ptr_VERSTR = &_STR_VER;
	int i;
	
	// Configure UART:
	write_port(0x42, 0x20);
	write_port(0x42, 0x30);
	write_port(0x42, 0x10);
	write_port(0x40, 0x07);
	write_port(0x40, 0x07);
	write_port(0x42, 0x10);
	write_port(0x41, 0xBB);
	write_port(0x42, 0x05);
	
	for(i = 0; *(char*)((&_STR_VER) + i) != '\0'; i++)
	{
		write_port(0xFF, *(char*)((&_STR_VER) + i));
	}
	
	return 0x00;
}
