#include <stdio.h>
#include <stdarg.h>
#ifdef DSP_VALIDATION
#include <swift_debug.h>
#endif


int main()
{
    int r = 0;
    printf("Hello world!");
#ifdef DSP_VALIDATION
	dbg_output(&r, 1, 4);
#endif
   return 0;
}
