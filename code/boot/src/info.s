.area	_INFO (ABS)
.org	0x0010

; MEMORY MAP TABLE
.dw 	0x7FFF		; Stack Top			<0x0010>
.dw 	0x0000		; EEPROM Start		<0x0012>
.dw 	8192		; EEPROM Size		<0x0014>
.dw		0x4000		; RAM Start			<0x0016>
.dw		16384		; RAM Size			<0x0018>
.dw		0x8000		; Prog Mem Start	<0x001A>
.dw		32768		; Prog Mem Size		<0x001C>

.db	'Z','8','0','-','V','1','.','0',0x00
