#include <stdio.h>
#include <stdarg.h>
#ifdef DSP_VALIDATION
#include <swift_debug.h>
#endif


int main()
{
    FILE *fp;
    int ans = 0;
    fp = fopen("../testsuites/libc/getc-ref.txt", "r");
    if(fp == NULL){
        printf("open error");
        ans = -1;
        return -1;
    }
    ans = getc(fp);
    fclose(fp);
#ifdef DSP_VALIDATION
	dbg_output(&ans, 1, 4);
#endif
   return 0;
}
    