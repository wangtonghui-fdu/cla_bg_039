#ifndef QX_DMA_H
#define QX_DMA_H

#ifdef __cplusplus
extern "C" {
#endif

#include "q28004x_dma.h"
#include "define.h"

/* IP defines */
#define DMA_NUM_CHANNELS  6
#define DMA_NUM_HS_IF     64
#define DMA_HAS_LLI_PARAM 0
#define DMA_M_DATA_WIDTH  32
#define DMA_MAX_MSIZE     8
#define DMA_MAX_BLOCK_TS  31

#define COMMON_REG_LEN 0x100
#define CH_REG_LEN     0x100
#define DMA_ch_BASE    (DMA_BASE + COMMON_REG_LEN)
#define DMA_COMM_BASE  DMA_BASE

/* Common registers offset */
#define DMAC_ID                   0x000 /* R DMAC ID */
#define DMAC_COMPVER              0x008 /* R DMAC Component Version */
#define DMAC_CFG                  0x010 /* R/W DMAC Configuration */
#define DMAC_CHEN                 0x018 /* R/W DMAC Chnel Enable */
#define DMAC_CHEN_L               0x018 /* R/W DMAC Chnel Enable 00-31 */
#define DMAC_CHEN_H               0x01C /* R/W DMAC Chnel Enable 32-63 */
#define DMAC_CHANNELSUSPREG       0x020 /* R/W DMAC Chnel Suspend */
#define DMAC_CHABORTREG           0x028 /* R/W DMAC Chnel Abort */
#define DMAC_INTSTATUS            0x030 /* R DMAC Interrupt Status */
#define DMAC_COMMON_INTCLEAR      0x038 /* W DMAC Interrupt Clear */
#define DMAC_COMMON_INTSTATUS_ENA 0x040 /* R DMAC Interrupt Status Enable */
#define DMAC_COMMON_INTSIGNAL_ENA 0x048 /* R/W DMAC Interrupt Signal Enable */
#define DMAC_COMMON_INTSTATUS     0x050 /* R DMAC Interrupt Status */
#define DMAC_RESET                0x058 /* R DMAC Reset Register1 */

/* DMA channel registers offset */
#define CH_SAR_L             0x000 /* R/W channel Source Low Address */
#define CH_SAR_H             0x004 /* R/W channel Source High Address */
#define CH_DAR_L             0x008 /* R/W channel Destination Low Address */
#define CH_DAR_H             0x00C /* R/W channel Destination High Address */
#define CH_BLOCK_TS          0x010 /* R/W channel Block Transfer Size */
#define CH_CTL               0x018 /* R/W channel Control */
#define CH_CTL_L             0x018 /* R/W channel Control 00-31 */
#define CH_CTL_H             0x01C /* R/W channel Control 32-63 */
#define CH_CFG               0x020 /* R/W channel Configuration */
#define CH_CFG_L             0x020 /* R/W channel Configuration 00-31 */
#define CH_CFG_H             0x024 /* R/W channel Configuration 32-63 */
#define CH_LLP               0x028 /* R/W channel Linked List Pointer */
#define CH_STATUS            0x030 /* R channel Status */
#define CH_SWHSSRC           0x038 /* R/W channel SW Handshake Source */
#define CH_SWHSDST           0x040 /* R/W channel SW Handshake Destination */
#define CH_BLK_TFR_RESUMEREQ 0x048 /* W channel Block Transfer Resume Req */
#define CH_AXI_ID            0x050 /* R/W channel AXI ID */
#define CH_AXI_QOS           0x058 /* R/W channel AXI QOS */
#define CH_SSTAT             0x060 /* R channel Source Status */
#define CH_DSTAT             0x068 /* R channel Destination Status */
#define CH_SSTATAR           0x070 /* R/W channel Source Status Fetch Addr */
#define CH_DSTATAR           0x078 /* R/W channel Destination Status Fetch Addr */
#define CH_INTSTATUS_ENA     0x080 /* R/W channel Interrupt Status Enable */
#define CH_INTSTATUS         0x088 /* R/W channel Interrupt Status */
#define CH_INTSIGNAL_ENA     0x090 /* R/W channel Interrupt Signal Enable */
#define CH_INTCLEAR          0x098 /* W channel Interrupt Clear */

#define UNUSED_CH               0x3F   /* Set unused DMA channel to 0x3F */
#define DMA_APB_HS_SEL_BIT_SIZE 0x08   /* HW handshake bits per channel */
#define DMA_APB_HS_SEL_MASK     0xFF   /* HW handshake select masks */
#define MAX_BLOCK_SIZE          0x1000 /* 1024 blocks * 4 bytes data width */
#define DMA_REGS_MAP_CH_REF     0x08   /* Chnel count to choose register map */

#define BIT(nr) ((1UL) << (nr))

/* DMAC_CFG */
#define DMAC_EN_POS  0
#define DMAC_EN_MASK BIT(DMAC_EN_POS)

#define INT_EN_POS  1
#define INT_EN_MASK BIT(INT_EN_POS)

/* DMAC_CHEN */
#define DMAC_ch_EN_SHIFT    0
#define DMAC_ch_EN_WE_SHIFT 8

#define DMAC_ch_SUSP_SHIFT    16
#define DMAC_ch_SUSP_WE_SHIFT 24

/* DMAC_CHEN2 */
#define DMAC_ch_EN2_WE_SHIFT 16

/* DMAC_CHANNELSUSP */
#define DMAC_ch_SUSP2_SHIFT    0
#define DMAC_ch_SUSP2_WE_SHIFT 16

/* CH_CTL_H */

#define CH_CTL_H_ARLEN_EN      BIT(6)
#define CH_CTL_H_ARLEN_POS     7
#define CH_CTL_H_AWLEN_EN      BIT(15)
#define CH_CTL_H_AWLEN_POS     16
#define CH_CTL_L_DST_WIDTH_POS 11
#define CH_CTL_L_SRC_WIDTH_POS 8

#define CH_CTL_L_DST_INC_POS   6
#define CH_CTL_L_SRC_INC_POS   4
#define CH_CTL_L_LAST_WRITE_EN BIT(30)

#define CH_CTL_L_DST_MSIZE_POS 18
#define CH_CTL_L_SRC_MSIZE_POS 14
#define CH_CTL_H_LLI_LAST      BIT(30)
#define CH_CTL_H_LLI_VALID     BIT(31)

/* CH_CFG_L */
#define CH_CTL_L_DST_MAST             BIT(2)
#define CH_CTL_L_SRC_MAST             BIT(0)
#define CH_CFG_L_DST_MULTBLK_TYPE_POS 2
#define CH_CFG_L_SRC_MULTBLK_TYPE_POS 0

/* CH_CFG_H */
#define CH_CFG_H_TT_FC_POS      0
#define CH_CFG_H_PRIORITY_POS   17
#define CH_CFG_H_DST_PER_POS    12
#define CH_CFG_H_SRC_PER_POS    7
#define CH_CFG_H_HS_SEL_DST_POS 4
#define CH_CFG_H_HS_SEL_SRC_POS 3

/* CH_CFG2 */
#define CH_CFG2_L_SRC_PER_POS 4
#define CH_CFG2_L_DST_PER_POS 11

#define CH_CFG2_H_TT_FC_POS      0
#define CH_CFG2_H_HS_SEL_SRC_POS 3
#define CH_CFG2_H_HS_SEL_DST_POS 4
#define CH_CFG2_H_PRIORITY_POS   20

typedef enum
{
    DMA_M2M_DMA = 0x0,
    DMA_M2P_DMA = 0x1,
    DMA_P2M_DMA = 0x2,
    DMA_P2P_DMA = 0x3,
    DMA_M2P_SRC = 0x4,
    DMA_P2P_SRC = 0x5,
    DMA_P2M_DST = 0x6,
    DMA_P2P_DST = 0x7,
} DMA_TtFc;

typedef enum
{
    DMA_MSIZE_1    = 0x0,
    DMA_MSIZE_4    = 0x1,
    DMA_MSIZE_8    = 0x2,
    DMA_MSIZE_16   = 0x3,
    DMA_MSIZE_32   = 0x4,
    DMA_MSIZE_64   = 0x5,
    DMA_MSIZE_128  = 0x6,
    DMA_MSIZE_256  = 0x7,
    DMA_MSIZE_512  = 0x8,
    DMA_MSIZE_1024 = 0x9,
} DMA_BurstLength;

typedef enum
{
    DMA_MBLK_TYPE_CONTIGUOUS = 0,
    DMA_MBLK_TYPE_RELOAD,
    DMA_MBLK_TYPE_SHADOW_REG,
    DMA_MBLK_TYPE_LL
} DMA_MultBlockType;

typedef enum
{
    DMA_IRQ_CH1_ACTIVE    = BIT(0),
    DMA_IRQ_CH2_ACTIVE    = BIT(1),
    DMA_IRQ_CH3_ACTIVE    = BIT(2),
    DMA_IRQ_CH4_ACTIVE    = BIT(3),
    DMA_IRQ_CH5_ACTIVE    = BIT(4),
    DMA_IRQ_CH6_ACTIVE    = BIT(5),
    DMA_IRQ_COMMON_ACTIVE = BIT(16),
} DMA_IrqStatus;

typedef enum
{
    DMA_COMM_IRQ_NONE      = 0,
    DMA_SLVIF_DEC_ERR      = BIT(0),
    DMA_SLVIF_WR2RO_ERR    = BIT(1),
    DMA_SLVIF_RD2WO_ERR    = BIT(2),
    DMA_SLVIF_DRONHOLD_ERR = BIT(3),
    DMA_SLVIF_WRPARITY_ERR = BIT(7),
    DMA_SLVIF_OF_DEC_ERR   = BIT(8),
} DMA_CommIrq;

typedef enum
{
    DMA_IRQ_NONE             = 0,
    DMA_IRQ_BLOCK_TRF        = BIT(0),
    DMA_IRQ_DMA_TRF          = BIT(1),
    DMA_IRQ_SRC_TRAN         = BIT(3),
    DMA_IRQ_DST_TRAN         = BIT(4),
    DMA_IRQ_SRC_DEC_ERR      = BIT(5),
    DMA_IRQ_DST_DEC_ERR      = BIT(6),
    DMA_IRQ_SRC_SLV_ERR      = BIT(7),
    DMA_IRQ_DST_SLV_ERR      = BIT(8),
    DMA_IRQ_LLI_RD_DEC_ERR   = BIT(9),
    DMA_IRQ_LLI_WR_DEC_ERR   = BIT(10),
    DMA_IRQ_LLI_RD_SLV_ERR   = BIT(11),
    DMA_IRQ_LLI_WR_SLV_ERR   = BIT(12),
    DMA_IRQ_INVALID_ERR      = BIT(13),
    DMA_IRQ_MULTIBLKTYPE_ERR = BIT(14),
    DMA_IRQ_DEC_ERR          = BIT(16),
    DMA_IRQ_WR2RO_ERR        = BIT(17),
    DMA_IRQ_RD2RWO_ERR       = BIT(18),
    DMA_IRQ_WRONCHEN_ERR     = BIT(19),
    DMA_IRQ_SHADOWREG_ERR    = BIT(20),
    DMA_IRQ_WRONHOLD_ERR     = BIT(21),
    DMA_IRQ_LOCK_CLEARED     = BIT(27),
    DMA_IRQ_SRC_SUSPENDED    = BIT(28),
    DMA_IRQ_SUSPENDED        = BIT(29),
    DMA_IRQ_DISABLED         = BIT(30),
    DMA_IRQ_ABORTED          = BIT(31),
    DMA_IRQ_ALL_ERR          = ((unsigned long)(0x2F << 15 | 0x2FF << 4)),
    DMA_IRQ_ALL              = 0xFFFFFFFFUL
} DMA_ChIrq;

typedef enum
{
    DMA_HS_HARDWARE = 0,
    DMA_HS_SOFTWARE = 1
} DMA_HandShakeType;

typedef enum
{
    DMA_TRANS_WIDTH_8   = 0x0,
    DMA_TRANS_WIDTH_16  = 0x1,
    DMA_TRANS_WIDTH_32  = 0x2,
    DMA_TRANS_WIDTH_64  = 0x3,
    DMA_TRANS_WIDTH_128 = 0x4,
    DMA_TRANS_WIDTH_256 = 0x5,
    DMA_TRANS_WIDTH_512 = 0x6,
    DMA_TRANS_WIDTH_MAX = DMA_TRANS_WIDTH_512
} DMA_TransferWidth;

typedef enum
{
    DMA_HS_NONE      = 0,
    DMA_HS_MEM       = 0,
    DMA_HS_ADC1_REQ1 = 0,
    DMA_HS_ADC1_REQ2 = 1,
    DMA_HS_ADC1_REQ3 = 2,
    DMA_HS_ADC1_REQ4 = 3,
    DMA_HS_ADC1_EVT  = 4,
    DMA_HS_ADC2_REQ1 = 5,
    DMA_HS_ADC2_REQ2 = 6,
    DMA_HS_ADC2_REQ3 = 7,
    DMA_HS_ADC2_REQ4 = 8,
    DMA_HS_ADC2_EVT  = 9,
    DMA_HS_ADC3_REQ1 = 10,
    DMA_HS_ADC3_REQ2 = 11,
    DMA_HS_ADC3_REQ3 = 12,
    DMA_HS_ADC3_REQ4 = 13,
    DMA_HS_ADC3_EVT  = 14,
    DMA_HS_XINT1     = 15,
    DMA_HS_XINT2     = 16,
    DMA_HS_XINT3     = 17,
    DMA_HS_XINT4     = 18,
    DMA_HS_XINT5     = 19,
    DMA_HS_EPWM1_A   = 20,
    DMA_HS_EPWM1_B   = 21,
    DMA_HS_EPWM2_A   = 22,
    DMA_HS_EPWM2_B   = 23,
    DMA_HS_EPWM3_A   = 24,
    DMA_HS_EPWM3_B   = 25,
    DMA_HS_EPWM4_A   = 26,
    DMA_HS_EPWM4_B   = 27,
    DMA_HS_EPWM5_A   = 28,
    DMA_HS_EPWM5_B   = 29,
    DMA_HS_EPWM6_A   = 30,
    DMA_HS_EPWM6_B   = 31,
    DMA_HS_EPWM7_A   = 32,
    DMA_HS_EPWM7_B   = 33,
    DMA_HS_EPWM8_A   = 34,
    DMA_HS_EPWM8_B   = 35,
    DMA_HS_TINT1     = 36,
    DMA_HS_TINT2     = 37,
    DMA_HS_TINT3     = 38,
    DMA_HS_ECAP1     = 39,
    DMA_HS_ECAP2     = 40,
    DMA_HS_ECAP3     = 41,
    DMA_HS_ECAP4     = 42,
    DMA_HS_ECAP5     = 43,
    DMA_HS_ECAP6     = 44,
    DMA_HS_ECAP7     = 45,
    DMA_HS_SDFLT1    = 46,
    DMA_HS_SDFLT2    = 47,
    DMA_HS_SDFLT3    = 48,
    DMA_HS_SDFLT4    = 49,
    DMA_HS_SPI0M_TX  = 50,
    DMA_HS_SPI0M_RX  = 51,
    DMA_HS_SPI0S_TX  = 52,
    DMA_HS_SPI0S_RX  = 53,
    DMA_HS_SPI1M_TX  = 54,
    DMA_HS_SPI1M_RX  = 55,
    DMA_HS_SPI1S_TX  = 56,
    DMA_HS_SPI1S_RX  = 57,
    DMA_HS_UART0_TX  = 58,
    DMA_HS_UART0_RX  = 59,
    DMA_HS_UART1_TX  = 60,
    DMA_HS_UART1_RX  = 61,
    DMA_HS_FSI_TX    = 62,
    DMA_HS_FSI_RX    = 63
} DMA_HSInterface;

typedef enum
{
    DMA_MASTER_0 = 0,
    DMA_MASTER_1 = 1
} DMA_Master;

typedef enum
{
    DMA_SWHS_REQ    = 0,
    DMA_SWHS_SINGLE = 1,
    DMA_SWHS_LST    = 2
} DMA_SWHSReqType;

typedef struct
{
    u32 src_addr;
    u32 dst_addr;
    u32 block_size;
    DMA_TransferWidth src_width;
    DMA_TransferWidth dst_width;
    DMA_BurstLength src_msize;
    DMA_BurstLength dst_msize;
    u8 channel;
    u8 prior;
    DMA_TtFc tt_fc;
    DMA_HSInterface src_hs_i;
    DMA_HSInterface dst_hs_i;
    DMA_HandShakeType src_hs_t;
    DMA_HandShakeType dst_hs_t;
    DMA_MultBlockType src_mblk_t;
    DMA_MultBlockType dst_mblk_t;
} DMA_ChCfg;

#define DmaChRegs(x) ((struct DMA_CH_REGS *)(DMA_BASE + 0x100 * x))

static inline void DMA_dmaEnable(void)
{
    DmaRegs.CFG.bit.DMAC_EN = 1;
}

static inline void DMA_dmaDisable(void)
{
    DmaRegs.CFG.bit.INT_EN = 0;
}

static inline void DMA_irqEnable(void)
{
    DmaRegs.CFG.bit.INT_EN = 1;
}

static inline void DMA_irqDisable(void)
{
    DmaRegs.CFG.bit.INT_EN = 0;
}

static inline void DMA_chEnable(u8 channel)
{
    u32 value = 0;
    value     = DmaRegs.CHEN;
    value |= (0x101 << (channel - 1));
    DmaRegs.CHEN = value;
}

static inline bool DMA_isChEnable(u8 channel)
{
    return (DmaRegs.CHEN & (1 << (channel - 1)));
}

static inline void DMA_chSuspend(u8 channel)
{
    u32 value = 0;
    value     = DmaRegs.CHLSUSP_L;
    value |= (0x101 << (channel - 1));
    DmaRegs.CHLSUSP_L = value;
}

static inline void DMA_chAbort(u8 channel)
{
    u32 value = 0;

    value = DmaRegs.CHABORT_L;
    value |= (0x101 << (channel - 1));
    DmaRegs.CHABORT_L = value;
}

static inline u32 DMA_getIrqStatus(void)
{
    return DmaRegs.INTSTATUS;
}

static inline u32 DMA_getCommIrqStatus(void)
{
    return DmaRegs.COMMON_INTSTATUS;
}

static inline void DMA_enableCommIrqStatus(u32 flag)
{
    DmaRegs.COMMON_INTSTATUS_EN |= flag;
}

static inline void DMA_enableCommIrqSignal(u32 flag)
{
    DmaRegs.COMMON_INTSIGNAL_EN |= flag;
}

static inline void DMA_clearCommIrq(u32 flag)
{
    DmaRegs.COMMON_INTCLEAR |= flag;
}

static inline void DMA_dmaReset(void)
{
    DmaRegs.RESET = 0x1;
}

static inline void DMA_setChAddr(u8 channel, u32 src_addr, u32 dst_addr)
{
    struct DMA_CH_REGS *ch_reg = DmaChRegs(channel);

    ch_reg->SAR = src_addr;
    ch_reg->DAR = dst_addr;
}

static inline void DMA_setChBlockTS(u8 channel, u32 block_ts)
{
    struct DMA_CH_REGS *ch_reg = DmaChRegs(channel);

    if (block_ts > DMA_MAX_BLOCK_TS)
        block_ts = DMA_MAX_BLOCK_TS;

    ch_reg->BLOCK_TS = block_ts;
}

static inline void DMA_setChMaster(u8 channel, DMA_Master src, DMA_Master dst)
{
    struct DMA_CH_REGS *ch_reg = DmaChRegs(channel);

    ch_reg->CTL_L.bit.SMS = src;
    ch_reg->CTL_L.bit.DMS = dst;
}

static inline void DMA_setChWidth(u8 channel, DMA_TransferWidth src, DMA_TransferWidth dst)
{
    struct DMA_CH_REGS *ch_reg = DmaChRegs(channel);

    ch_reg->CTL_L.bit.SRC_WIDTH = src;
    ch_reg->CTL_L.bit.DST_WIDTH = dst;
}

static inline void DMA_setBurstLength(u8 channel, DMA_BurstLength src, DMA_BurstLength dst)
{
    struct DMA_CH_REGS *ch_reg = DmaChRegs(channel);

    ch_reg->CTL_L.bit.SRC_MSIZE = src;
    ch_reg->CTL_L.bit.DST_MSIZE = dst;
}

static inline void DMA_setTtFc(u8 channel, DMA_TtFc tt_fc)
{
    struct DMA_CH_REGS *ch_reg = DmaChRegs(channel);

    switch (tt_fc)
    {
        case DMA_M2M_DMA:
            // ch_reg->CFG_HI.bit.TT_FC = DMA_M2M_DMA;
            ch_reg->CFG2_H.bit.TT_FC = DMA_M2M_DMA;
            ch_reg->CTL_L.bit.SINC   = 0;
            ch_reg->CTL_L.bit.DINC   = 0;
            break;
        case DMA_M2P_DMA:
            // ch_reg->CFG_HI.bit.TT_FC = DMA_M2P_DMA;
            ch_reg->CFG2_H.bit.TT_FC = DMA_M2P_DMA;
            ch_reg->CTL_L.bit.SINC   = 0;
            ch_reg->CTL_L.bit.DINC   = 1;
            break;
        case DMA_P2M_DMA:
            // ch_reg->CFG_HI.bit.TT_FC = DMA_P2M_DMA;
            ch_reg->CFG2_H.bit.TT_FC = DMA_P2M_DMA;
            ch_reg->CTL_L.bit.SINC   = 1;
            ch_reg->CTL_L.bit.DINC   = 0;
            break;
        case DMA_P2P_DMA:
            // ch_reg->CFG_HI.bit.TT_FC = DMA_P2P_DMA;
            ch_reg->CFG2_H.bit.TT_FC = DMA_P2P_DMA;
            ch_reg->CTL_L.bit.SINC   = 1;
            ch_reg->CTL_L.bit.DINC   = 1;
            break;
        case DMA_M2P_SRC:
            // ch_reg->CFG_HI.bit.TT_FC = DMA_M2P_SRC;
            ch_reg->CFG2_H.bit.TT_FC = DMA_M2P_SRC;
            ch_reg->CTL_L.bit.SINC   = 0;
            ch_reg->CTL_L.bit.DINC   = 1;
            break;
        case DMA_P2P_SRC:
            // ch_reg->CFG_HI.bit.TT_FC = DMA_P2P_SRC;
            ch_reg->CFG2_H.bit.TT_FC = DMA_P2P_SRC;
            ch_reg->CTL_L.bit.SINC   = 1;
            ch_reg->CTL_L.bit.DINC   = 1;
            break;
        case DMA_P2M_DST:
            // ch_reg->CFG_HI.bit.TT_FC = DMA_P2M_DST;
            ch_reg->CFG2_H.bit.TT_FC = DMA_P2M_DST;
            ch_reg->CTL_L.bit.SINC   = 1;
            ch_reg->CTL_L.bit.DINC   = 0;
            break;
        case DMA_P2P_DST:
            // ch_reg->CFG_HI.bit.TT_FC = DMA_P2P_DST;
            ch_reg->CFG2_H.bit.TT_FC = DMA_P2P_DST;
            ch_reg->CTL_L.bit.SINC   = 1;
            ch_reg->CTL_L.bit.DINC   = 1;
            break;
    }
}

static inline void DMA_setHSInterface(u8 channel, DMA_HSInterface src, DMA_HSInterface dst)
{
    struct DMA_CH_REGS *ch_reg = DmaChRegs(channel);

#if 1
    if (src != 0)
    {
        ch_reg->CFG2_H.bit.HS_SEL_SRC = 0;
        ch_reg->CFG2_L.bit.SRC_PER    = src;
    }
    else
        ch_reg->CFG2_L.bit.SRC_PER = 0;

    if (dst != 0)
    {
        ch_reg->CFG2_H.bit.HS_SEL_DST = 0;
        ch_reg->CFG2_L.bit.DST_PER    = dst;
    }
    else
        ch_reg->CFG2_L.bit.DST_PER = 0;
#endif
#if 0
    if (src != 0 ) {
        ch_reg->CFG_H.bit.HS_SEL_SRC = 0;
        ch_reg->CFG_H.bit.SRC_PER = src;
    } else
        ch_reg->CFG_H.bit.SRC_PER = 0;

    if (dst != 0) {
        ch_reg->CFG_H.bit.HS_SEL_DST = 0;
        ch_reg->CFG_H.bit.DST_PER = dst;
    } else
        ch_reg->CFG_H.bit.DST_PER = 0;
#endif
}

static inline void DMA_setMultBlocktype(u8 channel, DMA_MultBlockType src, DMA_MultBlockType dst)
{
    struct DMA_CH_REGS *ch_reg = DmaChRegs(channel);

    ch_reg->CFG_L.bit.SRC_MULTBLK_TYPE = src;
    ch_reg->CFG_L.bit.DST_MULTBLK_TYPE = dst;
}

static inline void DMA_setChPrior(u8 channel, u8 prior)
{
    struct DMA_CH_REGS *ch_reg = DmaChRegs(channel);

    prior                       = prior % DMA_NUM_CHANNELS;
    ch_reg->CFG2_H.bit.CH_PRIOR = prior;

    ch_reg->CFG2_H.bit.SRC_OSR_LMT = 5;
    ch_reg->CFG2_H.bit.DST_OSR_LMT = 5;
}

static inline u32 DMA_getCompletedSize(u8 channel)
{
    struct DMA_CH_REGS *ch_reg = DmaChRegs(channel);

    return ch_reg->STATUS_L;
}

static inline void DMA_setSourceReq(u8 channel, DMA_SWHSReqType type)
{
    struct DMA_CH_REGS *ch_reg = DmaChRegs(channel);

    if (type == DMA_SWHS_REQ)
    {
        ch_reg->SWHSSRC.bit.SWHS_REQ_SRC_EN = 1;
        ch_reg->SWHSSRC.bit.SWHS_REQ_SRC    = 1;
    }
    else if (type == DMA_SWHS_SINGLE)
    {
        ch_reg->SWHSSRC.bit.SWHS_SGLREQ_SRC_WE = 1;
        ch_reg->SWHSSRC.bit.SWHS_SGLREQ_SRC    = 1;
    }
    else if (type == DMA_SWHS_LST)
    {
        ch_reg->SWHSSRC.bit.SWHS_LST_SRC_WE = 1;
        ch_reg->SWHSSRC.bit.SWHS_LST_SRC    = 1;
    }
}

static inline void DMA_setDestReq(u8 channel, DMA_SWHSReqType type)
{
    struct DMA_CH_REGS *ch_reg = DmaChRegs(channel);

    if (type == DMA_SWHS_REQ)
    {
        ch_reg->SWHSDST.bit.SWHS_REQ_DST_EN = 1;
        ch_reg->SWHSDST.bit.SWHS_REQ_DST    = 1;
    }
    else if (type == DMA_SWHS_SINGLE)
    {
        ch_reg->SWHSDST.bit.SWHS_SGLREQ_DST_WE = 1;
        ch_reg->SWHSDST.bit.SWHS_SGLREQ_DST    = 1;
    }
    else if (type == DMA_SWHS_LST)
    {
        ch_reg->SWHSDST.bit.SWHS_LST_DST_WE = 1;
        ch_reg->SWHSDST.bit.SWHS_LST_DST    = 1;
    }
}

static inline u32 DMA_getChIntStatus(u8 channel)
{
    struct DMA_CH_REGS *ch_reg = DmaChRegs(channel);

    return ch_reg->INTSTATUS;
}

static inline void DMA_enableChIRQStatus(u8 channel, u32 flag)
{
    u32 status;
    struct DMA_CH_REGS *ch_reg = DmaChRegs(channel);

    status               = ch_reg->INTSTATUS_EN;
    status               = status | flag;
    ch_reg->INTSTATUS_EN = status;
}

static inline void DMA_setChIrqSignal(u8 channel, u32 flag)
{
    u32 status;
    struct DMA_CH_REGS *ch_reg = DmaChRegs(channel);

    status               = ch_reg->INTSIGNAL_EN;
    status               = status | flag;
    ch_reg->INTSIGNAL_EN = status;
}

static inline void DMA_clearChIntStatus(u8 channel, u32 flag)
{
    struct DMA_CH_REGS *ch_reg = DmaChRegs(channel);

    ch_reg->INTCLEAR = flag;
}

void DMA_chSetup(DMA_ChCfg *config);

#ifdef __cplusplus
}
#endif

#endif
