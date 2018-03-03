                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.5.0 #9253 (Mar 24 2016) (Linux)
                              4 ; This file was generated Sat Mar  3 13:58:39 2018
                              5 ;--------------------------------------------------------
                              6 	.module main
                              7 	.optsdcc -mz80
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _main
                             13 	.globl _addition
                             14 ;--------------------------------------------------------
                             15 ; special function registers
                             16 ;--------------------------------------------------------
                             17 ;--------------------------------------------------------
                             18 ; ram data
                             19 ;--------------------------------------------------------
                             20 	.area _DATA
                             21 ;--------------------------------------------------------
                             22 ; ram data
                             23 ;--------------------------------------------------------
                             24 	.area _INITIALIZED
                             25 ;--------------------------------------------------------
                             26 ; absolute external ram data
                             27 ;--------------------------------------------------------
                             28 	.area _DABS (ABS)
                             29 ;--------------------------------------------------------
                             30 ; global & static initialisations
                             31 ;--------------------------------------------------------
                             32 	.area _HOME
                             33 	.area _GSINIT
                             34 	.area _GSFINAL
                             35 	.area _GSINIT
                             36 ;--------------------------------------------------------
                             37 ; Home
                             38 ;--------------------------------------------------------
                             39 	.area _HOME
                             40 	.area _HOME
                             41 ;--------------------------------------------------------
                             42 ; code
                             43 ;--------------------------------------------------------
                             44 	.area _CODE
                             45 ;/home/tom/Documents/z80/code/prog/test/src/main.c:3: unsigned char addition (unsigned char num)
                             46 ;	---------------------------------
                             47 ; Function addition
                             48 ; ---------------------------------
   8000                      49 _addition::
                             50 ;/home/tom/Documents/z80/code/prog/test/src/main.c:5: return num + 1;
   8000 FD 21 02 00   [14]   51 	ld	iy,#2
   8004 FD 39         [15]   52 	add	iy,sp
   8006 FD 6E 00      [19]   53 	ld	l,0 (iy)
   8009 2C            [ 4]   54 	inc	l
   800A C9            [10]   55 	ret
                             56 ;/home/tom/Documents/z80/code/prog/test/src/main.c:8: void main(void)
                             57 ;	---------------------------------
                             58 ; Function main
                             59 ; ---------------------------------
   800B                      60 _main::
                             61 ;/home/tom/Documents/z80/code/prog/test/src/main.c:10: unsigned char val = addition(0x10);
   800B 3E 10         [ 7]   62 	ld	a,#0x10
   800D F5            [11]   63 	push	af
   800E 33            [ 6]   64 	inc	sp
   800F CD 00 80      [17]   65 	call	_addition
   8012 33            [ 6]   66 	inc	sp
   8013 65            [ 4]   67 	ld	h,l
                             68 ;/home/tom/Documents/z80/code/prog/test/src/main.c:11: addition(val);
   8014 E5            [11]   69 	push	hl
   8015 33            [ 6]   70 	inc	sp
   8016 CD 00 80      [17]   71 	call	_addition
   8019 33            [ 6]   72 	inc	sp
                             73 ;/home/tom/Documents/z80/code/prog/test/src/main.c:15: __endasm;
   801A 00            [ 4]   74 	nop
   801B C9            [10]   75 	ret
                             76 	.area _CODE
                             77 	.area _INITIALIZER
                             78 	.area _CABS (ABS)
