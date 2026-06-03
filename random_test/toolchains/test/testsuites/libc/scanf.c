#include <stdio.h>
#include <stdarg.h>
#ifdef DSP_VALIDATION
#include <swift_debug.h>
#endif


int main()
{
    char str[20];
    printf("Please input a string less than 20: \n");
    scanf("%s", str);
    printf("scanf('%%s', str): str = %s\n", str);
#ifdef DSP_VALIDATION
	dbg_output(&r, 1, 4);
#endif
   return 0;
}
