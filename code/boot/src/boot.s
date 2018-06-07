.area	_BOOT (ABS)
.org	0x0070

_boot_entry_point::

_uart_config::
	ld 	a,#0x20										; 0x20 -> a
	out	(#0x40+#0x02),a								; a -> (0x42)		CR = Reset Rx

	ld	a,#0x30										; 0x30 -> a
	out	(#0x40+#0x02),a								; a -> (0x42)		CR = Reset Tx

	ld	a,#0x10										; 0x10 -> a
	out	(#0x40+#0x02),a								; a -> (0x42)		CR = Reset MR Pointer

	ld	a,#0x07										; B00000111 -> a
	out	(#0x40+#0x00),a								; a -> (0x40)		MR1 = Odd Parity, 8 bits per char

	ld	a,#0x07										; B00000111 -> a
	out	(#0x40+#0x00),a								; a -> (0x40)		MR2 = 1 Stop bit

	ld	a,#0x10										; 0x10 -> a
	out	(#0x40+#0x02),a								; a -> (0x42)		CR = Reset MR Pointer

	ld	a,#0xBB										; B10111011 -> a
	out	(#0x40+#0x01),a								; a -> (0x41)		CSR = 9600 Baud

	ld	a,#0x05										; B00000101 -> a
	out	(#0x40+#0x02),a								; a -> (0x42)		CR = Enable Rx and Tx


_send_id::
; Send 'Z80' id over serial.
	ld	b,#0x7A										; 'Z' -> b
	ld	c,#0x00										; 0x00 -> c
	push	bc										; b -> (sp - 1), c -> (sp - 2)
	call	_uart_write

	ld	b,#0x38										; '8' -> b
	push	bc										; b -> (sp - 1), c -> (sp - 2)
	call	_uart_write

	ld	b,#0x30										; '0' -> b
	push	bc										; b -> (sp - 1), c -> (sp - 2)
	call	_uart_write

; Recieve opcode over serial.
	call	_uart_read
	ld	a,#0xFF										; 0xFF -> a
	and	b											; a & b -> a
	jp	z,_goto_prog

	ld	a,#0x01										; 0x01 -> a
	and	b											; a & b -> a
	jp	z,_get_prog

	jp	_goto_prog


_get_prog::
_get_len::
	call	_uart_read
	ld	e,b											; b -> e
	call	_uart_read
	ld	d,b											; b -> d
_get_start::
	call	_uart_read
	ld	l,b											; b -> l
	call	_uart_read
	ld	h,b											; b -> h
_get_byte::
	call	_uart_read
	ld	(hl),b										; b -> (hl)
	inc	hl
	dec	de
	jp	nz,_get_byte

_goto_prog::
	ld	a,#0x0A										; B00001010 -> a
	out	(#0x40+#0x02),a								; a -> (0x42)		CR = Disable Rx and Tx
	jp	0x8000

_uart_write::
; IN : (sp + 1)
	in	a,(#0x40+#0x01)								; (0x41) -> a		a = SR
	ld	b,#0x04										; B00000100 -> b	b = TxRDY
	and	b											; a & b -> a
	jp	z,_uart_write								; if !(a & TxRDY) jump to _uart_write

	pop	bc											; (sp) -> c, (sp + 1) -> b
	ld	a,b											; b -> a
	out	(#0x40+#0x03),a								; a -> (0x43)

	ret

_uart_read::
; OUT : b
	in	a,(#0x40+#0x01)								; (0x41) -> a		a = SR
	ld	b,#0x01										; B00000001 -> b	b = RxRDY
	and	b											; a & b -> a
	jp	z,_uart_read								; if !(a & RxRDY) jump to _uart_read

	in	a,(#0x40+#0x03)								; (0x43) -> a		a = RHR
	ld	b,a

	ret
