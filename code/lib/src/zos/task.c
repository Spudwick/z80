
#include "types.h"
#include "cpu-context.h"


#define TSK_MAX		10


typedef struct task_s {
	struct cpu_context_s	context;
	void*					entry;
	uint8_t					id;
	uint8_t					flags;
} task_t;

task_t tsk_tbl[TSK_MAX];


void init_tsks(void)
{
	uint8_t i;

	// Clear the task table.
	for(i=0; i<sizeof(tsk_tbl); i++)
		*((char *)tsk_tbl) = 0x00;
}

char add_tsk(void* entry)
{
	uint8_t idx;
	task_t *ptr;

	for(idx=0, ptr=&(tsk_tbl[0]); idx<TSK_MAX; idx++, ptr++)
		if(ptr->id == 0x00)
			break;
	else
		return 0;
	
	ptr->id = idx;
	ptr->entry = entry;

	return idx;
}
