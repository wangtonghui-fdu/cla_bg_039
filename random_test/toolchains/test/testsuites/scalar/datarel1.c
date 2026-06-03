#ifdef CROSS_VALIDATION
#include <stdlib.h>
#include<stdio.h>
#define TEST_OUT(a) printf("%d\n", a);
#else
#define TEST_OUT(a)
#endif

#ifdef DSP_VALIDATION
#include <swift_debug.h>
#endif
static int a = 1;
static int b;
static int* pa =&a;
static int* pb =&b;

extern int g2 = 1;

int* pg2 =&g2;

int main()
{
	(*pa)++;
	*pb += -1;
	*pg2 = *pa +1;
	int a[3] = {*pa, *pb, *pg2};
	for(int i = 0; i < 3; i++)
		TEST_OUT(a[i]);
#ifdef DSP_VALIDATION
	dbg_output(a, 3, 4);
#endif
	return 0;
}