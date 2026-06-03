#include <stdio.h>
#include <stdarg.h>
#include <string.h>
#ifdef DSP_VALIDATION
#include <swift_debug.h>
#endif


int main()
{
    FILE *fp;
    char str[20] = {0};
    char buf[20] = {0};
    fp = fopen("../testsuites/libc/fwrite-ref.txt", "r+");
    strcpy(buf, "Hello World!");
    int size = strlen(buf);
    int nmemb = 1;
    fwrite(buf, size , nmemb, fp);
    fclose(fp);
    fp = fopen("../testsuites/libc/fwrite-ref.txt", "r");
    fgets(str, size+1, fp);
    if(strcmp(str,buf) == 0)
        printf("fwrite(buf, size , nmemb, fp) = 1\n");
    else
        printf("fwrite(buf, size , nmemb, fp) = 0\n");
    fclose(fp);
#ifdef DSP_VALIDATION
	dbg_output(&str, 20, 1);
#endif
   return 0;
}
