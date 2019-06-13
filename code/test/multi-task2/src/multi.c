
#include "multi.h"

typedef struct s_tskstack {
    char* top;                      // Pointer to top of task stack.
    unsigned int size;              // Allocated size of task stack.
} t_tskstack;

typedef struct s_tskcontext {
    unsigned char A;
    unsigned char F;
    unsigned char B;
    unsigned char C;
    unsigned char D;
    unsigned char E;
    unsigned char H;
    unsigned char L;

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
    t_tskcontext context;           // Task saved context.
    int flags;                      // Task flags.
} t_tskdef;

t_tskdef tsktable[TSK_MAX];         // Global table for holding task details.

void exit(char code)
{
    code = code;

    __asm
        halt                        // Halt CPU. Holds till reset or interrupt.
    __endasm;
}

char tskmain(void)
{
    
    
    return 0;
}
