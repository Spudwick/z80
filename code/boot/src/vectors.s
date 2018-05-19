.area	_RESET (ABS)
.org	0x0000

_rst_vector::
	ld	sp,#0x7fff					; 0x7fff -> sp
	di								; Disable Interrupts
	im	1							; Set Interrupt Mode 1
	jp	_boot_entry_point			; _boot_entry_point -> pc



.area 	_MIVECTOR (ABS)
.org	0x0038

_mi_vector::
	exx								; Save register states
	call	0x8003					; Call MI ISR
	exx								; Restore register states
	reti



.area	_NMIVECTOR (ABS)
.org	0x0066

_nmi_vector::
	exx								; Save register states
	; nmi handling code - CURRENTLY UNUSED
	exx								; Restore register states
	retn