#include <stdio.h>
#include <stdarg.h>
#ifdef DSP_VALIDATION
#include <swift_debug.h>
#endif


int main()
{
    char str[20];
    FILE *fp;
    fp = fopen("../testsuites/libc/fgets-ref.txt", "r");
    if(fp == NULL){
        printf("open error");
        return -1;
    }
    if(fgets(str, 50, fp) != NULL);
        printf("fgets(str, 50, fp) = %s\n", str);
    fclose(fp);
#ifdef DSP_VALIDATION
	dbg_output(&str, 20, 1);
#endif
   return 0;
}
