#include <stdio.h>
#include <stdarg.h>
#ifdef DSP_VALIDATION
#include <swift_debug.h>
#endif


int main()
{
    int ch;
    printf("Please input a char: \n");
    ch = getchar();
    printf("getchar() = %c\n", ch);
#ifdef DSP_VALIDATION
	dbg_output(&r, 1, 4);
#endif
   return 0;
}
