#ifdef DSP_VALIDATION
#include <swift_debug.h>
#endif
#include <math.h>
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <stdarg.h>

int main(void) {
     volatile float x = 3.14f;
     volatile float z;
     z = coshf(x);
    unsigned ans = 0x41392d5f;
    dbg_compare_float(z, *(float *)&ans);
    return 0;
}
