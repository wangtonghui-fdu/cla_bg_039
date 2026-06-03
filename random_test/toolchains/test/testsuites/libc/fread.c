#include <stdio.h>
#include <stdarg.h>
#ifdef DSP_VALIDATION
#include <swift_debug.h>
#endif


int main()
{
    FILE *fp;
    fp = fopen("../testsuites/libc/fread-ref.txt", "r");
    int size = 4;  //size，这是要读取的每个元素的大小，以字节为单位
    int nmemb = 2;  //nmemb，这是元素的个数，每个元素的大小为 size 字节
    char buf[20] = {0};
    fread(buf, size , nmemb, fp);
    printf("fread(str, size , nmemb, fp) = %s\n", buf);
    fclose(fp);
#ifdef DSP_VALIDATION
	dbg_output(&buf, 20, 1);
#endif
   return 0;
}
