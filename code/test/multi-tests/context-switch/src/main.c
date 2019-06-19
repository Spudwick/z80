
#include "task.h"

#define TSK_MAX         10

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

typedef struct s_tskdef {
    char (*entry)(void);            // +0
    t_tskcontext* context;          // +2
    unsigned int flags;             // +4
} t_tskdef;

t_tskcontext contable[TSK_MAX];
//t_tskdef tsktable[TSK_MAX];

#define CONTEXT_SAVE(tsk_id)        \
    _context_save(tsk_id);

#define CONTEXT_LOAD(tsk_id)        \
    _context_load(tsk_id);          \
    __asm__("ld sp,hl");            \
    __asm__("exx");


void main(void)
{
    int tsk_id = 1;

//  CONTEXT_SAVE(0);

    for( ;; )
    {
        __asm
            nop
            nop
            nop
            nop
            nop
        __endasm;

        CONTEXT_SAVE(tsk_id);

        tsk_id += 1;
    }
}