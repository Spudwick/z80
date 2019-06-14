
#include "multi.h"

typedef struct s_tskstack {
    char* top;                      // Pointer to top of task stack.
    unsigned int size;              // Allocated size of task stack.
} t_tskstack;

typedef struct s_tskcontext {
    unsigned int A;
    unsigned int F;
    unsigned int B;
    unsigned int C;
    unsigned int D;
    unsigned int E;
    unsigned int H;
    unsigned int L;

    unsigned int IX;
    unsigned int IY;
    unsigned int SP;                // Stack Pointer.
    unsigned int PC;                // Program Counter.
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
}

