#pragma preproc_asm +

#include	<stdlib.h>
#include	<string.h>

#include	"test.h"

void main(void)
{
	int err = 0;
	
	err = test_malloc();
}

int test_malloc(void)
{
	char *test_ptr;
	char test_str[] = "Hello World";
	int i = 0;
	
	test_ptr = malloc(12);
	if(test_ptr == 0) return -1000;
	
	memcpy(test_ptr, test_str, 12);
	for(i = 0; i < 12; i++)
	{
		if(*(test_ptr + i) != test_str[i]) return -(2000 + i);
	}
	
	if(strcmp(test_ptr, test_str) != 0)
		return -3000;
	
	free(test_ptr);
	
	return 0;
}