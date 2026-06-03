#include <swift_debug.h>
#include <math.h>
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <stdarg.h>

int main(void) {
     float x = 3.14f;
     float y = 2.71f;
     float z;
     z = nextafterf(x, y);
    unsigned ans = 0x4048f5c2;
    dbg_compare_float(z, *(float *)&ans);
    return 0;
}
