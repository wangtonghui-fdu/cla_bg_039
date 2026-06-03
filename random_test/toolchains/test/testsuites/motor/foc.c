#include <stdio.h>
#include <stdlib.h>
#include <swift_debug.h>





#define INV_SQRT3       0.5773503f
#define SQRT3           1.7320508f
#define M_PI        3.14159265358979323846



// 结构体定义
typedef struct {
    float Ialpha, Ibeta;  // αβ 坐标系的电流
} Current_AlphaBeta;

typedef struct {
    float Id, Iq;  // dq 轴电流
    float sin, cos; // 用于变换的正弦/余弦
} Current_DQ;

typedef struct {
    float Valpha, Vbeta;  // αβ 坐标系的电压
} Voltage_AlphaBeta;

typedef struct {
    float Vd, Vq;  // dq 轴电压
} Voltage_DQ;

typedef struct {
    float PeakCnt;      // 峰值计数
    float MaxDutyCnt;   // 最大占空比计数
    float VaReal;       // 实际Va
    float VbReal;       // 实际Vb
    unsigned char u8Sector; // 扇区
    unsigned char u8OvFlag; // 溢出标志
    uint16_t u16T1;     // T1时长
    uint16_t u16T2;     // T2时长
    uint16_t u16T0;     // T0时长
} stc_svpwm_calc_t;

// SVPWM 计算时长
void Svpwm_CalcDuration(float Va, float Vb, float Vbus, stc_svpwm_calc_t *pstc) {
    float Vab;
    float Vbc;
    float Vca;
    float V1;
    float V2;
    float InvVbus;
    float T1;
    float T2;
    float Temp;

    // 电压变换: 平衡电压 Vab + Vbc + Vca = 0
    Vbc = Vb * SQRT3;
    Vab = Va * 1.5f - Vbc * 0.5f;
    Vca = -(Vab + Vbc);

    // 确定电压扇区和基准电压矢量
    if (Vab >= 0) {
        if (Vbc >= 0) {
            pstc->u8Sector = 1;
            V1 = Vab;
            V2 = Vbc;
        } else {
            if (Vca >= 0) {
                pstc->u8Sector = 5;
                V1 = Vca;
                V2 = Vab;
            } else {
                pstc->u8Sector = 6;
                V1 = -Vca;
                V2 = -Vbc;
            }
        }
    } else {
        if (Vbc <= 0) {
            pstc->u8Sector = 4;
            V1 = -Vbc;
            V2 = -Vab;
        } else {
            if (Vca <= 0) {
                pstc->u8Sector = 2;
                V1 = -Vab;
                V2 = -Vca;
            } else {
                pstc->u8Sector = 3;
                V1 = Vbc;
                V2 = Vca;
            }
        }
    }

    // 计算基准电压作用时间，并限制最大占空比
    InvVbus = (1.0f / Vbus);
    T1 = V1 * InvVbus * pstc->PeakCnt;
    T2 = V2 * InvVbus * pstc->PeakCnt;

    // 如果 T1 + T2 超过最大占空比，进行限幅处理
    if (T1 + T2 > pstc->MaxDutyCnt) {
        float K = (pstc->MaxDutyCnt) / (T1 + T2);
        T1 = K * T1;
        T2 = K * T2;
        pstc->VaReal = K * Va;
        pstc->VbReal = K * Vb;
        pstc->u8OvFlag = 1; // 发生溢出
    } else {
        pstc->VaReal = Va;
        pstc->VbReal = Vb;
        pstc->u8OvFlag = 0; // 未发生溢出
    }

    pstc->u16T1 = (uint16_t)(T1);
    pstc->u16T2 = (uint16_t)(T2);
    Temp = pstc->PeakCnt - (int32_t)pstc->u16T1 - (int32_t)pstc->u16T2;
    pstc->u16T0 = (uint16_t)Temp;
}

// Clarke 变换
void Clarke_Transform(float Ia, float Ib, float Ic, Current_AlphaBeta *Iab) {
    Iab->Ialpha = Ia;
    Iab->Ibeta = (Ia + 2 * Ib) * INV_SQRT3;
}

// Park 变换
void Park_Transform(Current_AlphaBeta Iab, float angle, Current_DQ *Idq) {
    Idq->sin = sin(angle);
    Idq->cos = cos(angle);
    Idq->Id = Iab.Ialpha * Idq->cos + Iab.Ibeta * Idq->sin;
    Idq->Iq = -Iab.Ialpha * Idq->sin + Iab.Ibeta * Idq->cos;
}

// 逆 Park 变换
void Inv_Park_Transform(Voltage_DQ Vdq, float angle, Voltage_AlphaBeta *Vab) {
    float sinTheta = sin(angle);
    float cosTheta = cos(angle);
    Vab->Valpha = Vdq.Vd * cosTheta - Vdq.Vq * sinTheta;
    Vab->Vbeta = Vdq.Vd * sinTheta + Vdq.Vq * cosTheta;
}

// PI 控制器
float PI_Controller(float target, float current, float Kp, float Ki, float *integral) {
    float error = target - current;
    *integral += error * Ki;
    return Kp * error + *integral;
}

// 主程序
int main() {
    // 模拟输入
    float Ia = 5.0, Ib = -2.5, Ic = -2.5;  // 三相电流
    float angle = M_PI / 4;  // 45度角（单位：弧度）
    float targetId = 0.0, targetIq = 10.0;  // 目标 dq 轴电流
    float Kp = 0.5, Ki = 0.01;  // PI 控制器参数
    float integralId = 0, integralIq = 0;

    // 步骤 1: Clarke 变换
    Current_AlphaBeta Iab;
    Clarke_Transform(Ia, Ib, Ic, &Iab);

    // 步骤 2: Park 变换
    Current_DQ Idq;
    Park_Transform(Iab, angle, &Idq);

    // 步骤 3: PI 控制器（计算 Vd, Vq）
    Voltage_DQ Vdq;
    Vdq.Vd = PI_Controller(targetId, Idq.Id, Kp, Ki, &integralId);
    Vdq.Vq = PI_Controller(targetIq, Idq.Iq, Kp, Ki, &integralIq);

    // 步骤 4: 逆 Park 变换
    Voltage_AlphaBeta Vab;
    Inv_Park_Transform(Vdq, angle, &Vab);

    // 步骤 5: SVPWM 计算
    float Vdc = 300.0f;    // 假设直流母线电压
    float Ts = 1e-4f;      // 假设PWM半周期时间
    stc_svpwm_calc_t svpwmCalc = {0};  // 初始化 SVPWM 计算结构体
    svpwmCalc.PeakCnt = 1000;          // 设置峰值计数（示例值）
    svpwmCalc.MaxDutyCnt = 1000;       // 设置最大占空比（示例值）

    Svpwm_CalcDuration(Vab.Valpha, Vab.Vbeta, Vdc, &svpwmCalc);



    // 输出结果
    uint32_t temp;

    // 1. 打印 u8Sector（1字节），用 uint32_t 变量填充
    temp = svpwmCalc.u8Sector;
    dbg_output(&temp, 1, 4);

    // 2. 打印 u16T1（2字节），用 uint32_t 变量填充
    temp = svpwmCalc.u16T1;
    dbg_output(&temp, 1, 4);

    // 3. 打印 u16T2（2字节），用 uint32_t 变量填充
    temp = svpwmCalc.u16T2;
    dbg_output(&temp, 1, 4);

    // 4. 打印 u16T0（2字节），用 uint32_t 变量填充
    temp = svpwmCalc.u16T0;
    dbg_output(&temp, 1, 4);



    return 0;
}
