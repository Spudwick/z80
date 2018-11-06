.area	_INFO (ABS)
.org	0x0018

; MEMORY MAP TABLE
__TBL_MEMMAP::
	.dw 	0x7FFF		; Stack Top			<0x0018>
	.dw 	0x0000		; EEPROM Start		<0x001A>
	.dw 	8192		; EEPROM Size		<0x001C>
	.dw		0x4000		; RAM Start			<0x001E>
	.dw		16384		; RAM Size			<0x0020>
	.dw		0x8000		; Prog Mem Start	<0x0022>
	.dw		32768		; Prog Mem Size		<0x0024>

; VERSION STRING
__STR_VER::
	.asciz	"Z80_V1.1"	; Version Info Str	<0x0026>
