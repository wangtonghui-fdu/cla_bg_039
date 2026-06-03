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
// clang -target mips-unknown-linux-gnu -c ch9_1.cpp -emit-llvm -o ch9_1.bc
// /Users/Jonathan/llvm/test/cmake_debug_build/Debug/bin/llc -march=cpu0 -relocation-model=pic -filetype=asm ch9_1.bc -o -
// /Users/Jonathan/llvm/test/cmake_debug_build/Debug/bin/llc -march=mips -relocation-model=pic -filetype=asm ch9_1.bc -o -

/// start
// extern void makesense(int n);

//extern int gI;
//For C it must be compile-time constant
//int gI = initgI(100);

static int mul_sum(int x1, int x2)
{
	static int sum = 0;
  	sum += x1 * x2;
  	// makesense(sum);
  
  	return sum; 
}

int main()
{ 
  // static int res = 1;
  
  int sum = mul_sum(1, 2) + mul_sum(-3, -4); 

  TEST_OUT(sum);
#ifdef DSP_VALIDATION
	dbg_output(&sum, 1, 4);
#endif
return 0;
  //return 0;
}
