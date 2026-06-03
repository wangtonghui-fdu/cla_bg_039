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
// #include <stdio.h>
int a[3];
int sum1;
static int b[3];
static int sum2;
extern int c[3] = {1,2,3};
int main()
{
    static int local_b[3];
    static int local_sum2;
    local_b[0]=b[0];
    local_b[1]=b[1];
    local_b[2]=b[2];
    local_sum2=local_b[0]+local_b[1]+local_b[2];
    sum2=local_sum2;
    sum1=a[0]+a[1]+a[2];
    a[0]+=c[0];
    a[1]+=c[1];
    a[2]+=c[2];
	TEST_OUT(sum1);
	TEST_OUT(sum2);
	TEST_OUT(a[0]);
	TEST_OUT(a[1]);
	TEST_OUT(a[2]);
#ifdef DSP_VALIDATION
	dbg_output(&sum1, 1, 4);
	dbg_output(&sum2, 1, 4);
	dbg_output(a, 1, 4);
	dbg_output(a+1, 1, 4);
	dbg_output(a+2, 1, 4);
#endif
    return 0;
}
