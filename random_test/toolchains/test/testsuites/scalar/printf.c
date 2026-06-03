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

int print(const char* __restrict__ format, ...){
    va_list arg;
    int r;
    va_start(arg, format);
    r = vprintf(format, arg);
    va_end(arg);
#ifdef DSP_VALIDATION
	dbg_output(&r, 1, 4);
#endif
    return r;
}

int main(){
	print("%d%d%d%d%d\n", 192, 887, 1238, 4, 5);
	return 0;
}