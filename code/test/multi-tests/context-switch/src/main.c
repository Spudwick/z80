
#include "task.h"


#define TSK_MAX         10


#define SWAP_REGS()             \
    __asm__("exx");             \
    __asm__("ex af,af'");

#define CONTEXT_SAVE(tsk_id)        \
    _context_save(tsk_id)


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
    char tsk_id;                    // +0
    char (*entry)(void);            // +1
    t_tskcontext context;           // +3
    unsigned int flags;             // +19
} t_tskdef;


t_tskdef tsktable[TSK_MAX];
t_tskdef *tskcurrent,*tsknext;


/*char tskman_init(void)
{
    for(int i=0;i<TSK_MAX;i++)
    {
        tsktable[i].flags = 0;
        tsktable[i].tsk_id = i;
        tskcurrent = &tsktable[0];
        tsknext = &tsktable[0];
    }

    return 0;
}*/


void main(void)
{
    char tsk_id = 1;
    char tsk_id2 = 3;

    tsk_id2 = tsk_id2 + 2;
    tskcurrent = &tsktable[0];

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

        CONTEXT_SAVE(4);

        CONTEXT_SAVE(tsk_id2);

        tsk_id += 1;
    }

    tsk_id2 = 5;
}