#include <stdio.h>
#include <stdarg.h>
#ifdef DSP_VALIDATION
#include <swift_debug.h>
#endif


int main()
{
    FILE *fp;
    fp = fopen("../testsuites/libc/fprintf-ref.txt", "w");
    int r = fprintf(fp, "TestString 5678\n");
    if(r > 0)
        printf("Output success! The return value is : %d", r);
    else
        printf("Output fail! The return value is : %d", r);
    fclose(fp);
#ifdef DSP_VALIDATION
	dbg_output(&r, 1, 4);
#endif
   return 0;
}
