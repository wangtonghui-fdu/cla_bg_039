#include <swift_debug.h>
#include <math.h>
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <stdarg.h>

int main(void) {
     float x = 3.14f;
     long long int z = llrintf(x);
    dbg_output(&z, 2, 4);
    return 0;
}
