#include <stdio.h>
#include <string.h>
#include <stdarg.h>

 
int main()
{
   char *str;
   str = (char *) malloc(10);
   str = strcpy(str, "123456789");
   free(str);
   return(0);
}
