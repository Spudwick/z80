#pragma preproc_asm +

unsigned char addition (unsigned char num);

void main(void)
{
	unsigned char val = addition(0x10);
	addition(val);
}

unsigned char addition (unsigned char num)
{
	unsigned char add = 10;
	
	return num + add;
}