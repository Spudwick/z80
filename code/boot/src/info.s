.area	_INFO (ABS)
.org	0x0018

; VERSION INFORMATION
__VER_TBL::
__VER_STR::
	.asciz	"Z80_BOOT"			; Version Info Str
__VER_MAJ::
	.db		0x01				; Major Version Number
__VER_MIN::
	.db		0x01				; Minor Version Number
	
; MEMORY MAP TABLE
__MEMMAP_TBL::
	.dw 	0x7FFF				; Stack Top
	.dw 	0x0000				; EEPROM Start
	.dw 	8192				; EEPROM Size
	.dw		0x4000				; RAM Start
	.dw		16384				; RAM Size
	.dw		0x8000				; Prog Mem Start
	.dw		32768				; Prog Mem Size
__MEMMAP_TBL_END::
