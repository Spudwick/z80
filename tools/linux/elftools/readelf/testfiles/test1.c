
#include <stdio.h>


int add(int a, int b)
{
	return a + b;
}

int main(int argc, char* argv[])
{
	int x=45, y=23;

	printf("Value is %d\n", add(x, y));

	return 0;
}
