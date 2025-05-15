#include <stdio.h>
#include <stdint.h>

extern int one_plus_one();
extern int a_plus_b(int a, int b);
extern void put_string(char *string);

int main()
{
	int res1 = one_plus_one();
	printf("%d\n", res1);
	
	int res2 = a_plus_b(21, 21);
	printf("%d\n", res2);
	
	put_string("Hello from .asm\n");
}
