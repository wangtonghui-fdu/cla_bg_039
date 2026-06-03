#include <stdio.h>
#include <string.h>
#include <stdarg.h>
#ifdef DSP_VALIDATION
#include <swift_debug.h>
#endif


int main ()
{
   char str1[6] = "abcde";
   char str2[6] = "abcde";
   int ret;
   ret = strcmp(str1, str2);
#ifdef DSP_VALIDATION
	dbg_output(&ret, 1, 4);
#endif
   return(0);
}