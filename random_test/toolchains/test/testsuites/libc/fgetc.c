#include <stdio.h>
#include <stdarg.h>
#ifdef DSP_VALIDATION
#include <swift_debug.h>
#endif


int main()
{
    int ch;
    FILE *fp;
    fp = fopen("../testsuites/libc/fgetc-ref.txt", "r");
    if(fp == NULL){
        printf("open error");
        return -1;
    }
    ch = fgetc(fp);
    printf("fgetc(fp)(char) = %c\n", ch);
    printf("fgetc(fp)(int) = %d\n", ch);
    fclose(fp);
#ifdef DSP_VALIDATION
	dbg_output(&ch, 1, 4);
#endif
   return 0;
}
