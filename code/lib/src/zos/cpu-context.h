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


#endif