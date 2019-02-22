#pragma preproc_asm +

#define TIMEOUT 1000

enum BOOT_OPCODES {
	OP_TIMEOUT = 1,
	OP_REPEAT,
	OP_PROG,
};

extern void trap(void);
char bootloader(void);
char boot_program(void);

extern char _VER_STR;
extern char _MEMMAP_TBL;
extern char _MEMMAP_TBL_END;

void boot_entry(void) __naked
{
	int* map_tbl_st = &_MEMMAP_TBL;
	int* map_tbl_end = &_MEMMAP_TBL_END;
	int map_tbl_size = (int)map_tbl_end - (int)map_tbl_st;
	
	void* prog_st = (void*)map_tbl_st[5];
	
	if (bootloader() != 0x00)
		trap();
	else
	{
		__asm
		jp		0x8000
		__endasm;
	}
	
}

char volatile _pass;
char bootloader(void)
{	
	char* ptr_VERSTR = &_VER_STR;
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
_SND_VER:
	for(i = 0; *(char*)((&_VER_STR) + i) != '\0'; i++)
	{
		_pass = *(char*)(&_VER_STR) + i;
		
		__asm
		ld	a,(__pass)
		out	(#0x43),a		; Version string -> PORT 0x43 (THR)
		__endasm;
	}
// ------------------------------------------------------------------------------------
	
// Wait for Op-Code from UART, or timeout: --------------------------------------------
	_pass = OP_TIMEOUT;
	for(i = 0; i < TIMEOUT; i++)
	{
		__asm
		in	a,(#0x41)
		ld	(__pass),a			; PORT 0x41 (CSR) -> _pass
		__endasm;

		if(_pass & 0x01)
		{
			__asm
			in	a,(#0x43)
			ld	(__pass),a		; PORT 0x43 (RHR) -> _pass
			__endasm;
			break;
		}
		else
			_pass = 0;
	}
// ------------------------------------------------------------------------------------

// Process Op-Code: -------------------------------------------------------------------
	switch(_pass)
	{
		case OP_TIMEOUT:			// Timeout.
			return OP_TIMEOUT;
		
		case OP_REPEAT:				// Repeat Version Send.
			goto _SND_VER;
		
		case OP_PROG:				// Program.
			if(boot_program() != 0)
				return OP_PROG;
			break;
	}
// ------------------------------------------------------------------------------------

	return 0;
}

char boot_program(void)
{
	
	
	return 0;
}
