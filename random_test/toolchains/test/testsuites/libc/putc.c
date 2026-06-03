#include <stdio.h>
#include <stdarg.h>
#ifdef DSP_VALIDATION
#include <swift_debug.h>
#endif


int main()
{
    FILE *fp;
    int ans = 1;
    fp = fopen("../testsuites/libc/putc-ref.txt", "w+");
    if(fp == NULL){
        ans = 10;
        printf("open error");
        return -1;
    }
    for(int ch = 40 ; ch < 45; ch++ ){
        if(putc(ch, fp) <= 0) 
        {
            printf("putc(ch, fp) = 0 (ERROR)\n");
            ans = 0;
        }
    }
    printf("putc(ch, fp) = 1 (SUCCEED)\n");
    fclose(fp);
#ifdef DSP_VALIDATION
	dbg_output(&ans, 1, 4);
#endif
   return 0;
}
