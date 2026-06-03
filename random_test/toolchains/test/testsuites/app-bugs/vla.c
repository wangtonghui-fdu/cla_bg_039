#include <swift_debug.h>

int main()
{
	int len=100;
	int b[len];
	int c[len];
	int d[len];
	b[1]=1;
	c[99]=2;
	int sz=sizeof(d);
	dbg_output(&b[1],1,4);
	dbg_output(&c[99],1,4);
	dbg_output(&sz,1,4);
	return 0;
}
