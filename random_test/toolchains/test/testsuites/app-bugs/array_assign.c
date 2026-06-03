#include <swift_debug.h>

int main()
{   
 int tw=1;
 int i=1;
 int a[7][512];
 a[i-1][0]=tw;
dbg_output(a,1,4);
 return 0;
}