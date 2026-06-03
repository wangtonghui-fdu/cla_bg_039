#ifndef FASTINTDIVF_H
#define FASTINTDIVF_H

#include <stdint.h>

/* Fast integer division: (int64_t)a / (int64_t)b
 * It takes about
 *    370 cycles; if |a| and |b| <= (1U << 24)
 *    200~2000 cycles; otherwise
 * 1) when b == 0
 *    return INT64_MIN  ; if a <  0
 *    return 0          ; if a == 0
 *    return INT64_MAX  ; if a >  0
 * 2) INT64_MIN / -1, returns INT64_MAX
 * 3）In other cases, the calculation result is not saturated
 */
int64_t _fastintdivf_i64byi64(int64_t a, int64_t b);

/* Fast integer division: (int64_t)a / (uint64_t)b
 * It takes about
 *    370 cycles; if |a| and |b| <= (1U << 24)
 *    200~2000 cycles; otherwise
 * 1) when b == 0
 *    return INT64_MIN  ; if a <  0
 *    return 0          ; if a == 0
 *    return INT64_MAX  ; if a >  0
 * 2）In other cases, the calculation result is not saturated
 * 3) when |a| or |b| > (1U << 24), implicit type promotions of C standard is applied.
 *    a is converted to uint64_t before division
 */
int64_t _fastintdivf_i64byu64(int64_t a, uint64_t b);

/* Fast integer division: (uint64_t)a / (int64_t)b
 * It takes about
 *    55 cycles; if |a| and |b| <= (1U << 24)
 *    200~2000 cycles; otherwise
 * 1) when b == 0
 *    return INT64_MAX  ; if a != 0
 *    return 0          ; if a == 0
 * 2）In other cases, the calculation result is not saturated
 * 3) when |a| or |b| > (1U << 24), implicit type promotions of C standard is applied.
 *    b is converted to uint64_t before division
 */
int64_t _fastintdivf_u64byi64(uint64_t a, int64_t b);

/* Fast integer division: (uint64_t)a / (uint64_t)b
 * It takes about
 *    370 cycles; if |a| and |b| <= (1U << 24)
 *    200~2000 cycles; otherwise
 * 1) when b == 0
 *    return INT64_MAX  ; if a != 0
 *    return 0          ; if a == 0
 * 2）In other cases, the calculation result is not saturated
 */
uint64_t _fastintdivf_u64byu64(uint64_t a, uint64_t b);

/* Fast integer division: (int32_t)a / (int32_t)b
 * It takes about
 *    55 cycles; if |a| and |b| <= (1U << 24)
 *    140~600 cycles; otherwise
 * 1) when b == 0
 *    return INT32_MIN  ; if a <  0
 *    return 0          ; if a == 0
 *    return INT32_MAX  ; if a >  0
 * 2) INT32_MIN / -1, returns INT32_MAX
 * 3）In other cases, the calculation result is not saturated
 */
int32_t _fastintdivf_i32byi32(int32_t a, int32_t b);

/* Fast integer division: (int32_t)a / (uint32_t)b
 * It takes about
 *    55 cycles; if |a| and |b| <= (1U << 24)
 *    140~600 cycles; otherwise
 * 1) when b == 0
 *    return INT32_MIN  ; if a <  0
 *    return 0          ; if a == 0
 *    return INT32_MAX  ; if a >  0
 * 2）In other cases, the calculation result is not saturated
 * 3) when |a| or |b| > (1U << 24), implicit type promotions of C standard is applied.
 *    a is converted to uint32_t before division
 */
int32_t _fastintdivf_i32byu32(int32_t a, uint32_t b);

/* Fast integer division: (uint32_t)a / (int32_t)b
 * It takes about
 *    55 cycles; if |a| and |b| <= (1U << 24)
 *    140~600 cycles; otherwise
 * 1) when b == 0
 *    return INT32_MAX  ; if a != 0
 *    return 0          ; if a == 0
 * 2）In other cases, the calculation result is not saturated
 * 3) when |a| or |b| > (1U << 24), implicit type promotions of C standard is applied.
 *    b is converted to uint32_t before division
 */
int32_t _fastintdivf_u32byi32(uint32_t a, int32_t b);

/* Fast integer division: (uint32_t)a / (uint32_t)b
 * It takes about
 *    55 cycles; if |a| and |b| <= (1U << 24)
 *    140~600 cycles; otherwise
 * 1) when b == 0
 *    return INT32_MAX  ; if a != 0
 *    return 0          ; if a == 0
 * 2）In other cases, the calculation result is not saturated
 */
uint32_t _fastintdivf_u32byu32(uint32_t a, uint32_t b);

/* Fast integer division: (int16_t)a / (int16_t)b
 * It takes about 35 cycles
 * 1) when b == 0
 *    return INT16_MIN  ; if a <  0
 *    return 0          ; if a == 0
 *    return INT16_MAX  ; if a >  0
 * 2) INT16_MIN / -1, returns INT16_MAX
 * 3）In other cases, the calculation result is not saturated
 */
int16_t _fastintdivf_i16byi16(int16_t a, int16_t b);

/* Fast integer division: (int16_t)a / (uint16_t)b
 * It takes about 35 cycles
 * 1) when b == 0
 *    return INT16_MIN  ; if a <  0
 *    return 0          ; if a == 0
 *    return INT16_MAX  ; if a >  0
 * 2）In other cases, the calculation result is not saturated
 */
int16_t _fastintdivf_i16byu16(int16_t a, uint16_t b);

/* Fast integer division: (uint16_t)a / (int16_t)b
 * It takes about 35 cycles
 * 1) when b == 0
 *    return INT16_MAX  ; if a != 0
 *    return 0          ; if a == 0
 * 2）In other cases, the calculation result is not saturated
 */
int16_t _fastintdivf_u16byi16(uint16_t a, int16_t b);

/* Fast integer division: (uint16_t)a / (uint16_t)b
 * It takes about 35 cycles
 * 1) when b == 0
 *    return INT16_MAX  ; if a != 0
 *    return 0          ; if a == 0
 * 2）In other cases, the calculation result is not saturated
 */
uint16_t _fastintdivf_u16byu16(uint16_t a, uint16_t b);

/* Fast integer division: (int8_t)a / (int8_t)b
 * It takes about 35 cycles
 * 1) when b == 0
 *    return INT8_MIN   ; if a <  0
 *    return 0          ; if a == 0
 *    return INT8_MAX   ; if a >  0
 * 2) INT8_MIN / -1, returns INT8_MAX
 * 3）In other cases, the calculation result is not saturated
 */
int8_t _fastintdivf_i8byi8(int8_t a, int8_t b);

/* Fast integer division: (int8_t)a / (uint8_t)b
 * It takes about 35 cycles
 * 1) when b == 0
 *    return INT8_MIN   ; if a <  0
 *    return 0          ; if a == 0
 *    return INT8_MAX   ; if a >  0
 * 2）In other cases, the calculation result is not saturated
 */
int8_t _fastintdivf_i8byu8(int8_t a, uint8_t b);

/* Fast integer division: (uint8_t)a / (int8_t)b
 * It takes about 35 cycles
 * 1) when b == 0
 *    return INT8_MAX   ; if a != 0
 *    return 0          ; if a == 0
 * 2）In other cases, the calculation result is not saturated
 */
int8_t _fastintdivf_u8byi8(uint8_t a, int8_t b);

/* Fast integer division: (uint8_t)a / (uint8_t)b
 * It takes about 35 cycles
 * 1) when b == 0
 *    return INT8_MAX   ; if a != 0
 *    return 0          ; if a == 0
 * 2）In other cases, the calculation result is not saturated
 */
uint8_t _fastintdivf_u8byu8(uint8_t a, uint8_t b);

#endif  // FASTINTDIVF_H
