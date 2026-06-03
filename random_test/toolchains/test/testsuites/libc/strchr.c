#include <stdio.h>
#include <string.h>
#include <stdarg.h>
#ifdef DSP_VALIDATION
#include <swift_debug.h>
#endif


int main ()
{
   const char str[] = "https://www.12345.com";
   const char ch = 'o';
   char *ptr;

   ptr = strchr(str, ch);

   if (ptr != NULL) {
      printf("The index of %c is %ld.\n", ch, ptr - str + 1);
      printf("The str after %c is %s.\n", ch, ptr);
   } else {
      printf("Not Found.\n");
   }
#ifdef DSP_VALIDATION
	dbg_output(ptr, strlen(ptr), 1);
#endif 
   return(0);
}