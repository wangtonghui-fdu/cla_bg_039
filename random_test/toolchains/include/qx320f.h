/*
 * Wrap for DSP intrinsic functions
 */

#ifndef QX320F_H
#define QX320F_H

#include <stdint.h>
#include <fastintdivf.h>

#define __inline__ __attribute__((always_inline)) inline

// Note: The following intrinsics which are defined as macros,
// You must ensure that imm0/imm1 is an immediate value at compile time and that rs/rd is not subject to optimization at compile time.

// INTx instruction
#define __clrcintm()              __builtin_dsp_clrcintm()
#define __eallow()                __builtin_dsp_eallow()
#define __edis()                  __builtin_dsp_edis()
#define __intr(imm0)               __builtin_dsp_intr(imm0)
#define __setcintm()               __builtin_dsp_setcintm()

// INT instruction
__inline__ void         __idle()                                           { __builtin_dsp_idle(); }
__inline__ int64_t      __sat(int64_t a)                                   { return __builtin_dsp_sat_i64(a); }
__inline__ void         __nop()                                            { __builtin_dsp_nop(); }
__inline__ void         __synch()                                          { __builtin_dsp_synch(); }
__inline__ int32_t      __max(int32_t a, int32_t b)                        { return __builtin_dsp_max_i32(a,b); }
__inline__ int32_t      __min(int32_t a, int32_t b)                        { return __builtin_dsp_min_i32(a,b); }
#define __bclr(rd, imm0)            __builtin_dsp_bclr_i32(rd, imm0)
#define __bst(rd, imm0)             __builtin_dsp_bst_i32(rd, imm0)
#define __bfext(rs, imm0, imm1)     __builtin_dsp_bfext_i32(rs, imm0, imm1)
#define __bfextu(rs, imm0, imm1)    __builtin_dsp_bfextu_i32(rs, imm0, imm1)
#define __bfst(rd, rs, imm0, imm1)  __builtin_dsp_bfst_i32(rd, rs, imm0, imm1)
#define __trap(imm0)                __builtin_dsp_trap(imm0)

// TMU instruction
typedef __attribute__((__vector_size__(2 * sizeof(float)))) float v2f32;

#ifndef M_PI
#define M_PI 3.14159265358979323846
#endif

__inline__ float     __cospuf(float a)                    { return __builtin_dsp_cos_f32(a); }
__inline__ float     __sinpuf(float a)                    { return __builtin_dsp_sin_f32(a); }
__inline__ float     __quadf(float* ratio, float a, float b)          
{ 
    v2f32 f2 = __builtin_dsp_quad_f32(a, b); 
    *ratio = f2[0];
    return f2[1];
}
__inline__ float        __sinf(float a)
{
    a /= M_PI * 2;
    a = a - (int32_t)(a);
    return __builtin_dsp_sin_f32(a);
}
__inline__ float     __cosf(float a)                    { return __sinf(a + M_PI / 2); }
__inline__ float     __atanf(float a)
{
    uint32_t b = *(uint32_t*)&a;
    b = (b >> 28) & 0b111;
    if (b <= 0b010) {
        return 0;
    }
    return __builtin_dsp_atan_f32(a) * 2 * M_PI; 
}
__inline__ float     __atan2f(float a, float b)         { return __builtin_dsp_atan2_f32(a,b); }



// TMUx instruction
__inline__ float __div2pif(float a) { return __builtin_dsp_div2pi_f32(a); }
__inline__ float __mpy2pif(float a) { return __builtin_dsp_mpy2pi_f32(a); }
__inline__ float __expf(float a)   { return __builtin_dsp_exp_f32(a); }
__inline__ float __logf(float a)   { return __builtin_dsp_log_f32(a); }


// FPU64 instruction
__inline__ double   __absd(double a)                   { return __builtin_dsp_abs_f64(a); }
__inline__ double   __macd(double a, double b, double c)   { return __builtin_dsp_mac_f64(a, b, c); }
__inline__ double   __mind(double a, double b)         { return __builtin_dsp_min_f64(a, b); }
__inline__ double   __maxd(double a, double b)         { return __builtin_dsp_max_f64(a, b); }



// FPU instruction
__inline__ float    __absf(float a)                    { return __builtin_dsp_abs_f32(a); }
__inline__ float    __invf(float a)                    { return __builtin_dsp_inv_f32(a); }
__inline__ float    __isqrtf(float a)                  { return __builtin_dsp_isqrt_f32(a); }
__inline__ float    __macf(float a, float b, float c)  { return __builtin_dsp_mac_f32(a, b, c); }
__inline__ float    __maxf(float a, float b)           { return __builtin_dsp_max_f32(a, b); }
__inline__ float    __minf(float a, float b)           { return __builtin_dsp_min_f32(a, b); }
__inline__ float    __sqrtf(float a)                   { return __builtin_dsp_sqrt_f32(a); }

// VCU instruction

typedef struct {
    int32_t real; // 32-bit integer representing the real part
    int32_t imag; // 32-bit integer representing the imaginary part
} QX320f_Complex32;

typedef struct {
    int16_t real; // 16-bit integer representing the real part
    int16_t imag; // 16-bit integer representing the imaginary part
} QX320f_Complex16;

__inline__ QX320f_Complex32 __vcadd(QX320f_Complex32 complex1, QX320f_Complex32 complex2) {
    int64_t a = ((int64_t)complex1.real << 32) | complex1.imag;
    int64_t b = ((int64_t)complex2.real << 32) | complex2.imag;
    int64_t result = __builtin_dsp_vcadd(a, b);
    QX320f_Complex32 c = {(result >> 32) & 0xffffffff, result & 0xffffffff};
    return c;
}

__inline__ QX320f_Complex16 __vcda16(QX320f_Complex16 complex1, QX320f_Complex32 complex2) {
    int32_t a = (complex1.real << 16) | complex1.imag;
    int64_t b = ((int64_t)complex2.real << 32) | complex2.imag;
    int32_t result = __builtin_dsp_vcda16(a, b);
    QX320f_Complex16 c = {(result >> 16) & 0xffff, result & 0xffff};
    return c;
}
__inline__ QX320f_Complex16 __vcds16(QX320f_Complex16 complex1, QX320f_Complex32 complex2) {
    int32_t a = (complex1.real << 16) | complex1.imag;
    int64_t b = ((int64_t)complex2.real << 32) | complex2.imag;
    int32_t result = __builtin_dsp_vcds16(a, b);
    QX320f_Complex16 c = {(result >> 16) & 0xffff, result & 0xffff};
    return c;
}

__inline__ QX320f_Complex32 __vcmpy(QX320f_Complex16 complex1, QX320f_Complex16 complex2) {
    int64_t a = complex1.imag | ((int64_t)complex1.real << 16) | ((int64_t)complex2.imag << 32) | ((int64_t)complex2.real << 48);
    int64_t result = __builtin_dsp_vcmpy(a);
    QX320f_Complex32 c = {(result >> 32) & 0xffffffff, result & 0xffffffff};
    return c;
}
__inline__ QX320f_Complex32 __vcmpyac(QX320f_Complex16 complex1, QX320f_Complex16 complex2, QX320f_Complex32 accumulatedNumber) {
    int64_t a = complex2.imag | ((int64_t)complex2.real << 16) | ((int64_t)complex1.imag << 32) | ((int64_t)complex1.real << 48);
    int64_t b = accumulatedNumber.imag | ((int64_t)accumulatedNumber.real << 32);
    int64_t result = __builtin_dsp_vcmpyac(a, b);
    QX320f_Complex32 c = {(result >> 32) & 0xffffffff, result & 0xffffffff};
    return c;
}
__inline__ int32_t      __vcrc16p1ll(int32_t a, int32_t b)    { return __builtin_dsp_vcrc16p1ll(a, b); }
__inline__ int32_t      __vcrc16p1lh(int32_t a, int32_t b)    { return __builtin_dsp_vcrc16p1lh(a, b); }
__inline__ int32_t      __vcrc16p1hl(int32_t a, int32_t b)    { return __builtin_dsp_vcrc16p1hl(a, b); }
__inline__ int32_t      __vcrc16p1hh(int32_t a, int32_t b)    { return __builtin_dsp_vcrc16p1hh(a, b); }
__inline__ int32_t      __vcrc16p2ll(int32_t a, int32_t b)    { return __builtin_dsp_vcrc16p2ll(a, b); }
__inline__ int32_t      __vcrc16p2lh(int32_t a, int32_t b)    { return __builtin_dsp_vcrc16p2lh(a, b); }
__inline__ int32_t      __vcrc16p2hl(int32_t a, int32_t b)    { return __builtin_dsp_vcrc16p2hl(a, b); }
__inline__ int32_t      __vcrc16p2hh(int32_t a, int32_t b)    { return __builtin_dsp_vcrc16p2hh(a, b); }
__inline__ int32_t      __vcrc32ll(int32_t a, int32_t b)      { return __builtin_dsp_vcrc32ll(a, b); }
__inline__ int32_t      __vcrc32lh(int32_t a, int32_t b)      { return __builtin_dsp_vcrc32lh(a, b); }
__inline__ int32_t      __vcrc32hl(int32_t a, int32_t b)      { return __builtin_dsp_vcrc32hl(a, b); }
__inline__ int32_t      __vcrc32hh(int32_t a, int32_t b)      { return __builtin_dsp_vcrc32hh(a, b); }
__inline__ int32_t      __vcrc8ll(int32_t a, int32_t b)       { return __builtin_dsp_vcrc8ll(a, b); }
__inline__ int32_t      __vcrc8lh(int32_t a, int32_t b)       { return __builtin_dsp_vcrc8lh(a, b); }
__inline__ int32_t      __vcrc8hl(int32_t a, int32_t b)       { return __builtin_dsp_vcrc8hl(a, b); }
__inline__ int32_t      __vcrc8hh(int32_t a, int32_t b)       { return __builtin_dsp_vcrc8hh(a, b); }

__inline__ QX320f_Complex32 __vcsub(QX320f_Complex32 complex1, QX320f_Complex32 complex2) {
    int64_t a = ((int64_t)complex1.real << 32) | complex1.imag;
    int64_t b = ((int64_t)complex2.real << 32) | complex2.imag;
    int64_t result = __builtin_dsp_vcsub(a, b);
    QX320f_Complex32 c = {(result >> 32) & 0xffffffff, result & 0xffffffff};
    return c;
}
__inline__ int32_t __vitbm2(int32_t a)               { return __builtin_dsp_vitbm2(a); }
__inline__ int64_t __vitbm3(int64_t a, int32_t b)    { return __builtin_dsp_vitbm3(a, b); }
__inline__ int64_t __vitdhas(int32_t a, int32_t b)   { return __builtin_dsp_vitdhas(a, b); }
__inline__ int64_t __vitdhsa(int32_t a, int32_t b)   { return __builtin_dsp_vitdhsa(a, b); }
__inline__ int64_t __vitdlas(int32_t a, int32_t b)   { return __builtin_dsp_vitdlas(a, b); }
__inline__ int64_t __vitdlsa(int32_t a, int32_t b)   { return __builtin_dsp_vitdlsa(a, b); }
__inline__ int64_t __vithsel(int32_t a, int32_t b)   { return __builtin_dsp_vithsel(a, b); }
__inline__ int64_t __vitlsel(int32_t a, int32_t b)   { return __builtin_dsp_vitlsel(a, b); }
__inline__ int32_t __vneg(int32_t a)                 { return __builtin_dsp_vneg(a); }
__inline__ void    __vtclear()                       { __builtin_dsp_vtclear(); }
__inline__ int64_t __vtrace(int32_t a)               { return __builtin_dsp_vtrace(a); }

// VCUx instruction
__inline__ int32_t __vccon(int32_t a)               { return __builtin_dsp_vccon(a); }
__inline__ int32_t __vcfft1(int32_t a, int32_t b)   { return __builtin_dsp_vcfft1(a, b); }
__inline__ int32_t __vcfft6(int32_t a, int32_t b)   { return __builtin_dsp_vcfft6(a, b); }
__inline__ int32_t __vcfft8(int32_t a, int32_t b)   { return __builtin_dsp_vcfft8(a, b); }
__inline__ int64_t __vcfft9(int64_t a, int64_t b)   { return __builtin_dsp_vcfft9(a, b); }
__inline__ int64_t __vcfft10(int64_t a, int64_t b)  { return __builtin_dsp_vcfft10(a, b); }
__inline__ int32_t __vcflip(int32_t a)              { return __builtin_dsp_vcflip(a); }
__inline__ int32_t __vcmag(int32_t a)               { return __builtin_dsp_vcmag(a); }
__inline__ int32_t __vcrc24hh(int32_t a, int32_t b) { return __builtin_dsp_vcrc24hh(a, b); }
__inline__ int32_t __vcrc24hl(int32_t a, int32_t b) { return __builtin_dsp_vcrc24hl(a, b); }
__inline__ int32_t __vcrc24lh(int32_t a, int32_t b) { return __builtin_dsp_vcrc24lh(a, b); }
__inline__ int32_t __vcrc24ll(int32_t a, int32_t b) { return __builtin_dsp_vcrc24ll(a, b); }
__inline__ int32_t __vcrc32p2hh(int32_t a, int32_t b)    { return __builtin_dsp_vcrc32p2hh(a, b); }
__inline__ int32_t __vcrc32p2hl(int32_t a, int32_t b)    { return __builtin_dsp_vcrc32p2hl(a, b); }
__inline__ int32_t __vcrc32p2lh(int32_t a, int32_t b)    { return __builtin_dsp_vcrc32p2lh(a, b); }
__inline__ int32_t __vcrc32p2ll(int32_t a, int32_t b)    { return __builtin_dsp_vcrc32p2ll(a, b); }
__inline__ int32_t __vcshl(int32_t a, int32_t b)    { return __builtin_dsp_vcshl(a, b); }
__inline__ int32_t __vcshr(int32_t a, int32_t b)    { return __builtin_dsp_vcshr(a, b); }
__inline__ int32_t __vdec(int32_t a)                { return __builtin_dsp_vdec(a); }
__inline__ int32_t __vgfacc(int32_t a, int32_t b)   { return __builtin_dsp_vgfacc(a, b); }
__inline__ int32_t __vgfadd(int32_t a, int32_t b)   { return __builtin_dsp_vgfadd(a, b); }
__inline__ int32_t __vgfmac(int32_t a, int32_t b)   { return __builtin_dsp_vgfmac(a, b); }
__inline__ int32_t __vgfmpy(int32_t a, int32_t b)   { return __builtin_dsp_vgfmpy(a, b); }
__inline__ int32_t __vinc(int32_t a)                { return __builtin_dsp_vinc(a); }
__inline__ int32_t __vpack(int32_t a, int32_t b)    { return __builtin_dsp_vpack(a, b); }
__inline__ int32_t __vrevb(int32_t a)               { return __builtin_dsp_vrevb(a); }
__inline__ int32_t __vshlmb(int32_t a, int32_t b)   { return __builtin_dsp_vshlmb(a, b); }

#endif // QX320F_H
