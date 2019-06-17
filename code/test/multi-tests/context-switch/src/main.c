
#include "entry.h"

typedef struct s_tskcontext {
    unsigned char F;                // +0
    unsigned char A;                // +1
    unsigned char C;                // +2
    unsigned char B;                // +3
    unsigned char E;                // +4
    unsigned char D;                // +5
    unsigned char L;                // +6
    unsigned char H;                // +7

    unsigned int IX;                // +8, +9
    unsigned int IY;                // +10, +11
    unsigned int SP;                // +12, +13 - Stack Pointer.
    unsigned int PC;                // +14, +15 - Program Counter.
} t_tskcontext;

t_tskcontext contable[10];


#define CONTEXT_SWITCH(tsk_id)      \
    __asm__("exx");                 \
    __asm__("ex af,af'");           \
    __asm__("ld hl,#0");            \
    __asm__("add hl,sp");           \
    _context_switch(tsk_id);


void main(void)
{
    CONTEXT_SWITCH(5);
}