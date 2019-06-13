
struct s_tskcontext {
    char sp;
    char pc;
};

struct s_tskstack {
    char* top;
    int size;
};

struct s_tskdef {
    char tsk_id;
    char (*entry)();
    struct s_tskstack stack;
    struct s_tskcontext context;
    char flags;
    char valid;
};

#define TSK_MAX     10
struct s_tskdef tsklist[TSK_MAX];

#define TSK_RUNNING 0x1




// Initialisation of task manager, definition of main task and starting of task loop.
#define START_TSKMAN(main_tsk)      \
    init_tskman();                  \
    ADD_TASK(main_tsk);             \
    __asm__("jp _tskmain")
char init_tskman(void);
void tskmain(void);

// Mechanism for defining new tasks. 
#define ADD_TASK(entry) add_task(entry)
char add_task(char (*entry)());

// Loads task context and starts/resumes processing of task.
#define RUN_TASK(tsk_id) run_task(tsk_id)
char run_task(char tsk_id);

// Saves task context and returns to task loop.
#define TASK_YIELD()                \
    __asm__ ("ld hl,#0x0");         \
    __asm                           \
        add hl,sp                   \
        ; sp now in hl              \
        jp _task_yield              \
    __endasm;
void task_yield(void) __naked;

void exit(char code);

char maintask(void);





char init_tskman(void)
{
    for(int i = 0; i < TSK_MAX; i++)
        tsklist[i].valid = 0;

    return 1;
}

void tskmain(void)
{
    for(;;)
    {
        RUN_TASK(0);
    }
}

char add_task(char (*entry)())
{
    char i;

    for(i = 0; i < TSK_MAX; i++)
    {
        if( !( tsklist[i].valid ) )
            break;
    }

    tsklist[i].tsk_id = i;
    tsklist[i].valid = 1;
    tsklist[i].entry = entry;
    tsklist[i].flags = 0x0;

    return tsklist[i].tsk_id;
}

char run_task(char tsk_id)
{
    tsklist[tsk_id].flags |= TSK_RUNNING;
    char ret = (tsklist[tsk_id].entry)();
    tsklist[tsk_id].flags &= ~TSK_RUNNING;

    return ret;
}

void task_yield(void) __naked
{
    __asm
        nop
        nop
        nop
        nop
        nop
        nop
    __endasm;

    __asm__("jp _tskmain");
}


void exit(char code)
{
    code = code;

    __asm
        halt
    __endasm;
}

char maintask(void)
{
    return 5;
}

void main(void)
{
    START_TSKMAN(maintask);

    return;
}