#pragma preproc_asm +

#include	<stdlib.h>

unsigned char addition (unsigned char num);

void main(void)
{
	unsigned char val = addition(0x10);	
	char *st;

	addition(val);	
	
	st = malloc(20);
}

unsigned char addition (unsigned char num)
{
	unsigned char add = 10;
	
	return num + add;
}