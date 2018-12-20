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

char _pass;
char bootloader(void)
{	
	char* ptr_VERSTR = &_STR_VER;
	int i;

// Configure UART: --------------------------------------------------------------------
	__asm
	ld	a,#0x20
	out	(#0x42),a			; 0x20 -> PORT 0x42
	
	ld	a,#0x30
	out	(#0x42),a			; 0x30 -> PORT 0x42
	
	ld	a,#0x10
	out	(#0x42),a			; 0x10 -> PORT 0x42
	
	ld	a,#0x07
	out	(#0x40),a			; 0x07 -> PORT 0x40
	
	ld	a,#0x07
	out	(#0x40),a			; 0x07 -> PORT 0x40
	
	ld	a,#0x10
	out	(#0x42),a			; 0x10 -> PORT 0x42
	
	ld	a,#0xBB
	out	(#0x41),a			; 0xBB -> PORT 0x41
	
	ld	a,#0x10
	out	(#0x42),a			; 0x10 -> PORT 0x42
	__endasm;
// ------------------------------------------------------------------------------------

// Send Version String over UART: -----------------------------------------------------
	for(i = 0; *(char*)((&_STR_VER) + i) != '\0'; i++)
	{
		_pass = *(char*)(&_STR_VER) + i;
		
		__asm
		ld	a,(__pass)
		out	(#0xFF),a
		__endasm;
	}
// ------------------------------------------------------------------------------------
	
	return 0x00;
}
