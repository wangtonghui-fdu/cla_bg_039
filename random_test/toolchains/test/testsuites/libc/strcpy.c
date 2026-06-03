#include <stdio.h>
#include <string.h>
#include <stdarg.h>
#ifdef DSP_VALIDATION
#include <swift_debug.h>
#endif

  
int main ()
{
   const char src[10] = "1234567890";
   char dest[10];
   strcpy(dest, src);
   printf("dest = %s\n", dest);
#ifdef DSP_VALIDATION
	dbg_output(&dest, 10, 1);
#endif
   return(0);
}