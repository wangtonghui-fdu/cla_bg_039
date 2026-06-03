#include <stdio.h>
#include <stdarg.h>
#ifdef DSP_VALIDATION
#include <swift_debug.h>
#endif


int t_vsprintf(char *format, ...){
    char result[25];
    va_list args;
    int ret;
    va_start(args, format);
    ret = vsprintf(result, format, args);
    va_end(args);
    
    return ret;
}

int main()
{
    int r = 16;
    char str[11] = "abcdefghij";
    int n = 123;
    r = t_vsprintf("%s, %d, hello\n", str, n);
#ifdef DSP_VALIDATION
	dbg_output(&r, 1, 4);
#endif
    return 0;
}
