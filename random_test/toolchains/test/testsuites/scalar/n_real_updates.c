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
/*
 * benchmark program:   n_real_updates.c
 * 
 * benchmark suite:     DSP-kernel
 * 
 * description:         n_real_updates - filter benchmarking
 * 
 * This program performs n real updates of the form 
 *           D(i) = C(i) + A(i)*B(i),
 * where A(i), B(i), C(i) and D(i) are real numbers,
 * and i = 1,...,N
 * 
 * reference code:      target assembly
 * 
 * f. verification:     simulator based
 * 
 *  organization:        Aachen University of Technology - IS2 
 *                       DSP Tools Group
 *                       phone:  +49(241)807887 
 *                       fax:    +49(241)8888195
 *                       e-mail: zivojnov@ert.rwth-aachen.de 
 *
 * author:              Juan Martinez Velarde
 * 
 * history:             25-5-94 creation (Martinez Velarde)
 *
 *                      $Author: schraut $
 *                      $Date: 1995/01/26 09:44:22 $
 *                      $Revision: 1.2 $
 */

#define STORAGE_CLASS register
#define TYPE          int
#define N             16

void
pin_down(TYPE *pa, TYPE *pb, TYPE *pc, TYPE *pd)
{
  STORAGE_CLASS int i ; 

  for (i=0 ; i < N ; i++)
    {
      *pa++ = 10 ; 
      *pb++ = 2 ; 
      *pc++ = 10 ; 
      *pd++ = 0 ; 
    }
}

TYPE main()
{
  static TYPE A[N], B[N], C[N], D[N] ; 
  
  STORAGE_CLASS TYPE *p_a = &A[0], *p_b = &B[0] ;
  STORAGE_CLASS TYPE *p_c = &C[0], *p_d = &D[0] ;
  STORAGE_CLASS TYPE i ; 

  pin_down(&A[0], &B[0], &C[0], &D[0]) ; 
  
  // START_PROFILING; 
	  
  for (i = 0 ; i < N ; i++) 
    *p_d++  = *p_c++ + *p_a++ * *p_b++ ;
  
  // END_PROFILING;   
  
  for(int i = 0; i < N; i++)
	  TEST_OUT(A[i]);
  for(int i = 0; i < N; i++)
	  TEST_OUT(B[i]);
  for(int i = 0; i < N; i++)
	  TEST_OUT(C[i]);
  for(int i = 0; i < N; i++)
	  TEST_OUT(D[i]);
#ifdef DSP_VALIDATION
	dbg_output(A, N, 4);
	dbg_output(B, N, 4);
	dbg_output(C, N, 4);
	dbg_output(D, N, 4);
#endif
  return(0)  ; 
}
