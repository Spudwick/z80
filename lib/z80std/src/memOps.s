__write_byte::
; IN : unsigned int addr	addr[1] -> (sp - 2), addr[0] -> (sp - 1)
; IN : unsigned char data	data -> (sp - 3)
	push	ix			; ixh -> (sp - 1) ixl -> (sp - 2)
	ld	ix,#0			; 0 -> ix
	add	ix,sp			; ix + sp -> ix

	ld	c,4 (ix)		; (ix + 4) -> c		<addr[1] -> c>
	ld	b,5 (ix)		; (ix + 5) -> b		<addr[0] -> b>
	ld	a,6 (ix)		; (ix + 6) -> a		<data -> a>

	ld	(bc),a			; a -> (bc)		<data -> (addr)>

	pop	ix
	ret


__read_byte::
; IN : unsigned int addr
	push	ix			; ixh -> (sp - 1) ixl -> (sp - 2)
	ld	ix,#0			; 0 -> ix
	add	ix,sp			; ix + sp -> ix

	ld	c,4 (ix)		; (ix + 4) -> c		<addr[1] -> c>
	ld	b,5 (ix)		; (ix + 4) -> b		<addr[0] -> b>

	ld	a,(bc)			; (bc) -> a		<(addr) -> a>
	ld	l,a			; a -> l

	pop	ix
	ret
; OUT : unsigned char data	data -> l
