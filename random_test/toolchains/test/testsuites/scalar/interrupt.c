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


__attribute__((interrupt)) void func() {
    int a = 1;
    int b = 2;
    return;
}

int main()
{
    int a = 0;
#ifdef DSP_VALIDATION
	dbg_output(&a, 1, 4);
#endif
    return 0;
}
