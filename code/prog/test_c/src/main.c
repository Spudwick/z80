#pragma preproc_asm +

unsigned char addition (unsigned char num)
{
	return num + 1;
}

void main(void)
{
	unsigned char val = addition(0x10);
	addition(val);

	__asm
	nop
	__endasm;
}
