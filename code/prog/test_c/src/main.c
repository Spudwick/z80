#pragma preproc_asm +

#include "z80core.h"

unsigned char addition (unsigned char num);

void main(void)
{
	unsigned char val = addition(0x10);
	addition(val);

	_write_byte(0x5000, val);
	
	__asm
	nop
	__endasm;
}

unsigned char addition (unsigned char num)
{
	unsigned char add = _read_byte(0x5000);
	
	return num + add;
}