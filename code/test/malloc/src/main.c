#include	<stdlib.h>

void main (void)
{
	char* test = malloc(10);
	test = realloc(test, 60);
}