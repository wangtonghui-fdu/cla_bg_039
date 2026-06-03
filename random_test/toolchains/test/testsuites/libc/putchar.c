#include <stdio.h>
#include <stdarg.h>
#ifdef DSP_VALIDATION
#include <swift_debug.h>
#endif


int main()
{
    int n = 64;
    printf("putchar(n) = \n");
    int ans = putchar(n);
    printf("\n");
#ifdef DSP_VALIDATION
	dbg_output(&ans, 1, 4);
#endif
   return 0;
}
