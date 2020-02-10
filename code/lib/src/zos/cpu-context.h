#ifndef __CPU_CONTEXT_H
#define __CPU_CONTEXT_H

#include "./types.h"


struct cpu_context_s {
    // 8 Bit CPU Register pairs.
    uint16_t    bc;
    uint16_t    de;
    uint16_t    hl;
    uint16_t    af;
    // 16 Bit CPU Registers.
    uint16_t    ix;
    uint16_t    iy;
    // CPU Pointers.
    void        *sp;        // Stack Pointer.
    void        *pc;        // Program Counter.
};


#define SAVE_CONTEXT(PTR)\
    __asm__("exx                        ; Swap registers with shadow registers to preserve until saving.");\
    __asm__("ex      af,af'");\
    __asm__("ld      h,#0");\
    __asm__("ld      l,#0");\
    __asm__("add     hl,sp              ; Obtain current SP.");\
    __asm__("push    hl                 ; Push the current SP to stack.");\
    __asm__("call    __pc_into_hl       ; Call asm stub to load PC+3 into BC pair.");\
    __asm__("ld      bc,#11             ; Ensure PC that is saved points to final nop.");\
    __asm__("add     hl,bc");\
    __asm__("push    bc                 ; Push PC to stack.");\
    _save_context(PTR);                 /*Call into __save_context*/\
    __asm__("pop     af                 ; Pop PC off stack.");\
    __asm__("pop     af                 ; Pop SP off stack.");\
    __asm__("exx                        ; Swap back the current context.");\
    __asm__("nop                        ; Target for saved PC.")


void _save_context(struct cpu_context_s *ptr);

#endif