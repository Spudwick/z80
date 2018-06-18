#pragma preproc_asm +

volatile char val;

void main(void)
{		
	__asm
	jp		_val
	__endasm;
}
