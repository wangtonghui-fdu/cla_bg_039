#include <stdio.h>
#include <string.h>
#include <stdarg.h>
#include <stdlib.h>
#ifdef DSP_VALIDATION
#include <swift_debug.h>
#endif

 
int main()
{
   char *str;
   str = (char *) malloc(10);
   strcpy(str, "123456789");
   printf("String = %s,  Address = %u\n", str, str);
#ifdef DSP_VALIDATION
	dbg_output(str, 10, 1);
#endif
   free(str);
   return(0);
}
