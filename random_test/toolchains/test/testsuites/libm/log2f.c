#include <swift_debug.h>
#include <math.h>
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <stdarg.h>

int main(void) {
     float x = 3.14f;
     float z;
     z = log2f(x);
    unsigned ans = 0x3fd34c41; 
    dbg_compare_float(z, *(float *)&ans);
    return 0;
}
