#include <swift_debug.h>
#include <math.h>
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <stdarg.h>

int main(void) {
     volatile float x = 3.14f;
     volatile float z;
     z = expf(x);
    unsigned ans = 0x41b8d4ba;
    dbg_compare_float(z, *(float *)&ans);
    return 0;
}
