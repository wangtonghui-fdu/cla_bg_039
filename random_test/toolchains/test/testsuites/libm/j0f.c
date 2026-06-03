#include <swift_debug.h>
#include <math.h>
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <stdarg.h>

int main(void) {
     float x = 3.14f;
     float z;
     z = j0f(x);
    unsigned ans = 0xbe9b8a29; 
    dbg_compare_float(z, *(float *)&ans);
    return 0;
}
