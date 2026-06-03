#include <stdio.h>
#include <string.h>
#include <stdarg.h>
#ifdef DSP_VALIDATION
#include <swift_debug.h>
#endif

 
int main ()
{
   char str[10] = "0000000000";
   puts(str); 
   memset(str, '$', 5);
   puts(str);
   #ifdef DSP_VALIDATION
	dbg_output(&str, 10, 1);
#endif
   return(0);
}