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

int sum_i(int x1, int x2, int x3, int x4, int x5, int x6)
{
  int sum = gI + x1 + x2 + x3 + x4 + x5 + x6;
  
  return sum; 
}

int main()
{ 
  int a = sum_i(1, 2, 3, 4, 5, 6);  
 #ifdef DSP_VALIDATION
	dbg_output(&a, 1, 4);
#endif
TEST_OUT(a);
  return a;
}
