#include <stdio.h>
#include <stdarg.h>
#ifdef DSP_VALIDATION
#include <swift_debug.h>
#endif


int main()
{
    FILE *fp;
    fp = fopen("../testsuites/libc/fputs-ref.txt", "w");
    int ans = fputs("hello world.", fp);
    if(ans >= 0)
        printf("fputs(str, fp) = 1\n");
    else
        printf("fputs(str, fp) = 0\n");
    fclose(fp);
#ifdef DSP_VALIDATION
	dbg_output(&ans, 1, 4);
#endif
   return 0;
}
