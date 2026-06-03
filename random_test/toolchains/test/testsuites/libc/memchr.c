#include <stdio.h>
#include <string.h>
#include <stdarg.h>
#ifdef DSP_VALIDATION
#include <swift_debug.h>
#endif


int main ()
{
   const char str[] = "http://www.1234.com";
   const char ch = '.';
   char *ret;
   ret = (char*)memchr(str, ch, strlen(str));
   printf("Behind |%c| is - |%s|\n", ch, ret);
 #ifdef DSP_VALIDATION
	dbg_output(ret, strlen(ret), 1);
#endif
   return(0);
}
