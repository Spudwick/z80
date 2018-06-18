__write_port::
; IN : unsigned char port	port -> (sp - 1)
; IN : unsigned char data	data -> (sp - 2)
	push	ix								; ixh -> (sp - 1) ixl -> (sp - 2)
	ld	ix,#0								; 0 -> ix
	add	ix,sp								; ix + sp -> ix

	ld	c,4 (ix)							; (ix + 4) -> c		<port -> c>
	ld	b,5 (ix)							; (ix + 5) -> b		<data -> b>

	out	(c),b								; b -> (c)		<data -> (port)>

	pop	ix
	ret


__read_port::
; IN : unsigned char port	port -> (sp - 1)
	push	ix								; ixh -> (sp - 1) ixl -> (sp - 2)
	ld	ix,#0								; 0 -> ix
	add	ix,sp								; ix + sp -> ix

	ld	c,4 (ix)							; (ix + 4) -> c		<port -> c>

	in	b,(c)								; (c) -> a		<(port) -> b>
	ld	l,b									; b -> l

	pop	ix
	ret
; OUT : unsigned char data	data -> l
