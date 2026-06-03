#include <stdio.h>
#include <stdarg.h>
#ifdef DSP_VALIDATION
#include <swift_debug.h>
#endif


int main()
{
    char str[10];
    int n;
    sscanf("testcase 123", "%s %d", str, &n);
#ifdef DSP_VALIDATION
	dbg_output(&str, 8, 1);
    dbg_output(&n, 1, 4);
#endif
   return 0;
}
