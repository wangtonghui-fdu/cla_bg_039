// clang -target mips-unknown-linux-gnu -c ch9_1.cpp -emit-llvm -o ch9_1.bc
// /Users/Jonathan/llvm/test/cmake_debug_build/Debug/bin/llc -march=cpu0 -relocation-model=pic -filetype=asm ch9_1.bc -o -
// /Users/Jonathan/llvm/test/cmake_debug_build/Debug/bin/llc -march=mips -relocation-model=pic -filetype=asm ch9_1.bc -o -
#ifdef CROSS_VALIDATION
#include <stdlib.h>
#include<stdio.h>
#define TEST_OUT(a) printf("%d\n", a);
#else
#define TEST_OUT(a)
#endif

#ifdef DSP_VALIDATION
#include <swift_debug.h>
#endif
/// start
int gI = 100;
int gI2 = 1;
int gI3 = 5;
int gI4 = 10;
int gI5 = 20;


int main()
{ 
	int k = 2;
  int a = gI + k + gI2;
  a = a + gI3 + gI4 +gI5;  
 #ifdef DSP_VALIDATION
	dbg_output(&a, 1, 4);
#endif
  TEST_OUT(a);
  return a;
}
