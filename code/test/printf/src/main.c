#include	"stdio.h"
#include	"z80core.h"

void main (void)
{
	printf("Hello");
	
	_trap();
}