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
     y = modff(x, &z);
    unsigned ans_s1 = 0x40400000;
    dbg_compare_float(z, *(float *)&ans_s1);
    unsigned ans_s2 = 0x3e0f5c30;
    dbg_compare_float(y, *(float *)&ans_s2);
    return 0;
}
