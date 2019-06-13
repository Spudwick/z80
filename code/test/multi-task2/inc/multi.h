
#define TSK_MAX     10

typedef struct s_tskreq {
    char (*entry)(void);
    int stack_size;
} t_tskreq;

void exit(char);
char tskmain(void);