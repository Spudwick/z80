#pragma preproc_asm +

#include	"stdio.h"
#include	"z80core.h"

void main (void)
{
	__asm
		nop
	__endasm;
	
	printf("Hello");
	
	_trap();
}