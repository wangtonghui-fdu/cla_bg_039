#include <stdio.h>
#include <stdarg.h>
#ifdef DSP_VALIDATION
#include <swift_debug.h>
#endif


int main()
{
    FILE *fp;
    char str[11] = {0};
    int n;
    fp = fopen("../testsuites/libc/fscanf-ref.txt", "r+");
    int count = fscanf(fp, "%s %d", str, &n);
    fclose(fp);
#ifdef DSP_VALIDATION
	dbg_output(&str, 8, 1);
    dbg_output(&n, 1, 4);
    dbg_output(&count, 1, 4);
#endif
   return 0;
}
