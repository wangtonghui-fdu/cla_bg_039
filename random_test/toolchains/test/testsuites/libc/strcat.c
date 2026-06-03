#include <stdio.h>
#include <string.h>
#include <stdarg.h>
#ifdef DSP_VALIDATION
#include <swift_debug.h>
#endif

  
int main ()
{
   char src[] = "This is source";
   char dest[50] = "This is destination";
   strcat(dest, src);
   printf("The ans str is: %s", dest);
#ifdef DSP_VALIDATION
	dbg_output(&dest, 40, 1);
#endif 
   return(0);
}
