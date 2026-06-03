#include "swift_debug.h"

int main(){
    volatile float a=2.5;
    volatile float b=2;
    volatile float c=a/b;
    dbg_output(&a,1,4);
    dbg_output(&b,1,4);
    dbg_output(&c,1,4);
}
