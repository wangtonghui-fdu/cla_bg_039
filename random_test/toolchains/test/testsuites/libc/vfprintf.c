#include <stdio.h>
#include <stdarg.h>
#ifdef DSP_VALIDATION
#include <swift_debug.h>
#endif


int t_vfprintf(FILE *stream, char *format, ...){
   va_list args;
   va_start(args, format);
   int r = vfprintf(stream, format, args);
   va_end(args);
   return r;
}

int main()
{
    FILE *fp;
    char str[11] = "abcdefghij";
    int n = 123;
    fp = fopen("../testsuites/libc/vfprintf-ref.txt", "w");
    int r = t_vfprintf(fp, "TestString %d %s", n, str);
    fclose(fp);
#ifdef DSP_VALIDATION
	dbg_output(&r, 1, 4);
#endif
   return 0;
}
