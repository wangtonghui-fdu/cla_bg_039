#include <stdio.h>
#include <stdarg.h>
#ifdef DSP_VALIDATION
#include <swift_debug.h>
#endif


int main()
{
    char str[20];
    printf("Please input a str: \n");
    gets(str);
    printf("gets(str) = %s\n", str);
#ifdef DSP_VALIDATION
	dbg_output(&str, 20, 1);
#endif
   return 0;
}
