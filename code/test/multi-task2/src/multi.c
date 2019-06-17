
#include "multi.h"

typedef struct s_tskstack {
    char* top;                      // Pointer to top of task stack.
    unsigned int size;              // Allocated size of task stack.
} t_tskstack;

// WARNING : Modifying the layout of below requires loading and saving code in task.s to be altered aswell!
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
    char id;                        // Task ID.
    char valid;                     // Valid Flag, used to show if contains valid task information.
    char (*entry)(void);            // Task entry point.
    t_tskstack stack;               // Task stack details.
    t_tskcontext* context;          // Task saved context.
    int flags;                      // Task flags.
} t_tskdef;

t_tskdef tsktable[TSK_MAX];         // Global table for holding task details.
t_tskcontext contable[TSK_MAX];     // Global table of task contexts. Need seperate to task definitions so can be indexed easily in .s files.


void exit(char code)
{
    code = code;

    __asm
        halt                        // Halt CPU. Holds till reset or interrupt.
    __endasm;
}

char tskman_init(void)
{
    for(int i = 0; i < TSK_MAX; i++)
    {
        tsktable[i].valid = 0;                  // Invalidate all entries in table.
        tsktable[i].context = &contable[i];     // Link in the context entries.
    }

    return 1;
}

