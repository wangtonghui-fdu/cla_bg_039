#include <stdio.h>
#include <stdarg.h>
#ifdef DSP_VALIDATION
#include <swift_debug.h>
#endif

int t_vprintf(char *format, ...){
   va_list args;
   va_start(args, format);
   int count = vprintf(format, args);
   va_end(args);
   return count;
}

int main()
{
    char str[10] = "abcdefghij";
    int n = 123;
    int r = t_vprintf("vprintf(format, args):%s And %d\n", str, n);
#ifdef DSP_VALIDATION
	dbg_output(&r, 1, 4);
#endif
   return 0;
}
