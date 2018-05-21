#pragma preproc_asm +

#include "z80core.h"

unsigned char addition (unsigned char num)
{
	return num + 1;
}

void main(void)
{
	unsigned char val = addition(0x10);
	addition(val);

	_write_byte(0x5000, 0xAA);
	
	__asm
	nop
	__endasm;
}
