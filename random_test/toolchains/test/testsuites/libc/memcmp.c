#include <stdio.h>
#include <string.h>
#include <stdarg.h>
#ifdef DSP_VALIDATION
#include <swift_debug.h>
#endif


int main ()
{
   char str1[5] = "abcde";
   char str2[5] = "ABCDE";
   int tmp, ret;
   tmp = memcmp(str1, str2, 5);
   if(tmp > 0) {
      ret = 1;
   } else if(tmp < 0) {
      ret = -1;
   } else {
      ret = 0;
   }
#ifdef DSP_VALIDATION
	dbg_output(&ret, 1, 4);
#endif
   return(0);
}