#include <swift_debug.h>
#include <math.h>
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <stdarg.h>

int main(void) {
    volatile float x = 3.14f;
    volatile float y = 2.71f;
    volatile float w = 1.0f;
    y = atan2f(x, w);
    unsigned ans = 0x3fa198f8 ;  
    dbg_compare_float(y,*(float *)&ans);
    return 0;
}
