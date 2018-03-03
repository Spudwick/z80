;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Mar 24 2016) (Linux)
; This file was generated Sat Mar  3 13:58:39 2018
;--------------------------------------------------------
	.module main
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _addition
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area _DABS (ABS)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area _HOME
	.area _GSINIT
	.area _GSFINAL
	.area _GSINIT
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area _HOME
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE
;/home/tom/Documents/z80/code/prog/test/src/main.c:3: unsigned char addition (unsigned char num)
;	---------------------------------
; Function addition
; ---------------------------------
_addition::
;/home/tom/Documents/z80/code/prog/test/src/main.c:5: return num + 1;
	ld	iy,#2
	add	iy,sp
	ld	l,0 (iy)
	inc	l
	ret
;/home/tom/Documents/z80/code/prog/test/src/main.c:8: void main(void)
;	---------------------------------
; Function main
; ---------------------------------
_main::
;/home/tom/Documents/z80/code/prog/test/src/main.c:10: unsigned char val = addition(0x10);
	ld	a,#0x10
	push	af
	inc	sp
	call	_addition
	inc	sp
	ld	h,l
;/home/tom/Documents/z80/code/prog/test/src/main.c:11: addition(val);
	push	hl
	inc	sp
	call	_addition
	inc	sp
;/home/tom/Documents/z80/code/prog/test/src/main.c:15: __endasm;
	nop
	ret
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
