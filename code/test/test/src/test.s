.area	_PROG(ABS)


.org	0x8100

_this ::
	ld	b,#0xff
	jp	_here


.org	0x8500

_here ::
	ld	a,#0x20
	jp	_this