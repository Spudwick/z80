.area	_CODE

_this ::
	ld	b,#0xff
	jp	_here

_here ::
	ld	a,#0x20
	jp	_this