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

#include <stdio.h>
#include <stdarg.h>

int sum(int num,...)
{

    va_list arg;
    int sum = 0;
    int i;

    va_start(arg, num);

    for (i = 0; i < num; i++)
    {
       sum += va_arg(arg, int);
    }

    va_end(arg);

    return sum;
}

int main()
{
   int a=1,b=2,c=3,d=4;
   int y1=sum(4,a,b,c,d);
   int y2=sum(2,a,b);
   TEST_OUT(y1);
   TEST_OUT(y2);
#ifdef DSP_VALIDATION
	dbg_output(&y1, 1, 4);
	dbg_output(&y2, 1, 4);
#endif
   return 0;
}
