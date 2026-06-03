#ifndef QX_LIN_H
#define QX_LIN_H

#ifdef __cplusplus
extern "C" {
#endif

#include "q28004x_lin.h"
#include "define.h"

#define LIN_ERR 0
#define LIN_OK  1

typedef enum
{
    DELAY_DISABLED     = 0x00,
    DELAY_HALF_BIT     = 0x01,
    DELAY_3QARTERS_BIT = 0x10,
    DELAY_ONE_BIT      = 0x11
} LIN_CmdDelay;

//*****************************************************************************
//
//! \brief Interrupt enable register
//
//*****************************************************************************
typedef enum
{
    LIDE   = 0x01,
    RDYE   = 0x02,
    ERRE   = 0x04,
    ABORTE = 0x08,
    SLEEPE = 0x10,
    WAKEE  = 0x20
} LIN_Lie;

//*****************************************************************************
//
//! \brief Error register
//
//*****************************************************************************
typedef enum
{
    FER    = 0x1,
    BITER  = 0x2,
    PER    = 0x4,
    CHKSER = 0x8,
    TOVER  = 0x10,
    SYNCER = 0x20,
    OVER   = 0x40,
    WAKEER = 0x80
} LIN_Ler;

//*****************************************************************************
//
//! \brief List of LIN commands executed by LIN device.
//
//*****************************************************************************
typedef enum
{
    CMD_ABORT,
    CMD_SEND_HEADER,
    CMD_RESPONSE_TX,
    CMD_RESPONSE_RX,
    CMD_WAKEUP
} LIN_Cmd;

//*****************************************************************************
//
//! \brief List of LIN size parameters
//
//*****************************************************************************
typedef enum
{
    SIZE_0_BYTES       = 0x0,
    SIZE_1_BYTES       = 0x1,
    SIZE_2_BYTES       = 0x2,
    SIZE_3_BYTES       = 0x3,
    SIZE_4_BYTES       = 0x4,
    SIZE_5_BYTES       = 0x5,
    SIZE_6_BYTES       = 0x6,
    SIZE_7_BYTES       = 0x7,
    SIZE_8_BYTES       = 0x8,
    SIZE_AUTO_BITRATE  = 0xC,
    SIZE_WAKE_UP       = 0xD,
    SIZE_LOG_MODE      = 0xE,
    SIZE_LENGTH_IN_LID = 0xF
} LIN_Size;

//*****************************************************************************
//
//! \brief LIN bus status register
//
//*****************************************************************************

typedef enum
{
    LBS_NONE   = 0x00,
    LBS_SLEEPM = 0x01,
    LBS_WAKEUP = 0x02,
    LBS_SLEEP  = 0x04,
} LIN_Lbs;

//*****************************************************************************
//
//! \brief List of LIN mode parameters
//
//*****************************************************************************
typedef enum
{
    CRC_ENHANCED = 0x0,
    CRC_CLASSIC  = 0x1
} LIN_Crc;

//*****************************************************************************
//
//! \brief List of LIN mode parameters
//
//*****************************************************************************
typedef enum
{
    MODE_SLAVE  = 0x0,
    MODE_MASTER = 0x1
} LIN_Mode;

//*****************************************************************************
//
//! \brief List of LIN AINC parameters
//
//*****************************************************************************
typedef enum
{
    AINC_DIS = 0x0,
    AINC_EN  = 0x1
} LIN_AINC;

//****************** LIN configuration *****************************************************

#define LIN_BAUDRATE 19200
#define LIN_CLOCK    100000000.0

#define ON  1
#define OFF 0

#define LIN_LIN_ID          0x12    // LIN identifier
#define LIN_LSEL_DELAY      0x0     // Add a delay between writing to LCR register and executing the command
#define LIN_LSEL_AINC       ON      // Auto increment FIFO index after access
#define LIN_LSEL_INDEX      0       // Location of the LIN response data byte into the FIFO data buffer
#define LIN_LIE_LIDE        ON << 0 // Header receive interrupt (slave mode only)
#define LIN_LIE_RDYE        ON << 1 // Ready interrupt
#define LIN_LIE_ERRE        ON << 2 // Error Interrupt
#define LIN_LIE_ABORTE      ON << 3 // ABORT Interrupt
#define LIN_LIE_SLEEPE      ON << 4 // Sleep condition interrupt
#define LIN_LIE_WAKEE       ON << 5 // Wakeup detection interrupt
#define LIN_LIE_STATE       (LIN_LIE_LIDE | LIN_LIE_RDYE | LIN_LIE_ERRE | LIN_LIE_ABORTE | LIN_LIE_SLEEPE | LIN_LIE_WAKEE)
#define LIN_LCR_MODE_MASTER ON  // Master/Slave mode select
#define LIN_LCR_CRC13       OFF // Checksum selector
#define LIN_DL_SYNC         OFF // Synchronization mode (slave mode only)
#define LIN_HEADER_DELAY \
    0x0000 // Specifies additional delay between toggle Send Header command and start Frame Header sending on LIN bus
#define LIN_HEADER_PRESCALER 0x00     // Specifies interval of decrementing HDR register
#define LIN_LIN_BUS_STATE    LBS_NONE // LIN bus status
#define LIN_WURT_STATE       0x00     // Wake-up response time register
#define LIN_IDT_STATE        0x0000   // Idle detection time register
#define LIN_IDT_IDTRUN       OFF      // Idle detection lock bit

#define LIN_AXI_BASEADDRESS 0x43C00000
#define LIN_AXI_SIZE        0x0000FFFF

#define LIN_IRQ_NUMBER \
    0 // IRQ46 Zybo Z7-20 specific for LIN_0, first free in /proc/interrupts. Normally 46 returned by platform driver.
      // It's SPI interrupt 61 (irq0 F2P_IRQ)

#define LIN_RX_LID 0x12
#define LIN_TX_LID 0x13

/**
 * @brief Enable automatic increment buffer.
 * @param *lin Pointer to LIN device
 * After this function has been performed, the internal buffer index is automatically incremented each time the LBUF
 * register is accessed.
 */
static inline void LIN_enableAutoIncBuffer(volatile struct LIN_REGS *lin)
{
    lin->LSEL.bit.AINC = 1; // Auto increment FIFO index after access
}

/**
 * @brief Disable automatic increment buffer.
 * @param *lin Pointer to LIN device
 * After executing this function, the internal buffer index must be addressed in order to read/write consecutive bytes.
 *
 */
static inline void LIN_disnableAutoIncBuffer(volatile struct LIN_REGS *lin)
{
    lin->LSEL.bit.AINC = 0; // Do not auto increment FIFO index after access
}

/**
 * @brief Set buffer index
 * @param *lin Pointer to LIN device
 * @param buff_index Buffer index
 */
static inline void LIN_setBufferIndex(volatile struct LIN_REGS *lin, u8 buff_index)
{
    lin->LSEL.bit.INDEX = buff_index;
}

/**
 * @brief Set delay between writing to LCR register and executing the command in LIN
 * @param *lin Pointer to LIN device
 * @param delay Delay type to be set
 */
static inline void LIN_setCommandDelay(volatile struct LIN_REGS *lin, LIN_CmdDelay delay)
{
    lin->LSEL.bit.DLY = delay;
}

/**
 * @brief Enable auto synchronization. This option is used only when LIN is working as a SLAVE.
 * @param *lin Pointer to LIN device
 * Allow the slave synchronize baud rate to the master baud rate.
 * Auto synchronization can only take place when the baud rate deviation between master and slave is less than 14%.
 */
static inline void LIN_enableAutoSync(volatile struct LIN_REGS *lin)
{
    lin->DLH.bit.SYNC = 1; // Set SYNC bit
}

/**
 * @brief Disable auto synchronization.
 * @param *lin Pointer to LIN device
 */
static inline void LIN_disableAutoSync(volatile struct LIN_REGS *lin)
{
    lin->DLH.bit.SYNC = 0; // Reset SYNC bit
}

/**
 * @brief Set header delay send value. The value set by this function defines the delay between triggering the Send
 * Header command and its execution.
 * @param *lin Pointer to LIN device
 * @param x count value
 */
static inline void LIN_setHeaderDelay(volatile struct LIN_REGS *lin, u16 x)
{
    lin->HDRL.all = (x & 0x00FF);
    lin->HDRH.all = (x >> 8);
}

/**
 * @brief Set header delay prescaler.
 * @param *lin Pointer to LIN device
 * @param x Prescaler value
 */

static inline void LIN_setHeaderDelayPrescaler(volatile struct LIN_REGS *lin, u8 x)
{
    lin->HDP.all = x;
}

/** @name Wake up and Sleep group description */
///@{
/**
 * @brief Set wake up response timer. When LIN is in slave mode and send wake-up signal master node of LIN bus should
 * response in 150 - 250 ms.
 * @param *lin Pointer to LIN device
 * If master node not response in this time the WAKEERR bit is set in LER register and interrupt in generated. This
 * function allow to configure timeout value and is related to bit time duration on LIN bus. This option is used in
 * slave mode only.
 *
 */
static inline void LIN_setWakeUpResponseTimer(volatile struct LIN_REGS *lin, u8 x)
{
    lin->WURT = x;
}

/**
 * @brief Enable idle detection timer. Enabling the idle state detection causes LIN to trace
 * @param *lin Pointer to LIN device
 * the state of LIN bus until recessive to dominant transition or timer overflow occur.
 * When transition occurs the internal counter is reset, and then timer overflow the SLEEP bit in LBS register is set.
 */
static inline void LIN_enableIdleDetectionTimer(volatile struct LIN_REGS *lin)
{
    lin->IDTH.bit.IDTRUN = 1; // Set IDTRUN bit
}

/**
 * @brief Disable idle detection timer
 * @param *lin Pointer to LIN device
 */
static inline void LIN_disableIdleDetectionTimer(volatile struct LIN_REGS *lin)
{
    lin->IDTH.bit.IDTRUN = 0; // Reset IDTRUN bit
}

/**
 * @brief Set idle detection timer overflow value. This function allows specify time after which the idle state on the
 * LIN bus is detected.
 * @param *lin Pointer to LIN device
 * @param x Overflow value
 */
static inline void LIN_setIdleDetectionTimer(volatile struct LIN_REGS *lin, u16 x)
{
    lin->IDTL     = (x & 0xFF);
    lin->IDTH.all = (x >> 8) & 0x1F;
}

/** @name Interrupt group description */
///@{
/**
 * @brief Disable selected interrupt
 * @param *lin Pointer to LIN device
 * @param interrupt Name of interrupt
 */
static inline void LIN_interruptDisable(volatile struct LIN_REGS *lin, LIN_Lie interrupt)
{
    lin->LIE.all = ((lin->LIE.all) & ~interrupt);
}

/**
 * @brief Disable all interrupts
 * @param *lin Pointer to LIN device
 */
static inline void LIN_interruptDisableAll(volatile struct LIN_REGS *lin)
{
    lin->LIE.all = 0x00;
}

/**
 * @brief Enable selected interrupt
 * @param *lin Pointer to LIN device
 * @param interrupt Name of interrupt
 */
static inline void LIN_interruptEnable(volatile struct LIN_REGS *lin, LIN_Lie interrupt)
{
    lin->LIE.all = ((lin->LIE.all) | interrupt);
}

/** @name Register getters/setters group description */
///@{

/**
 * @brief Get LBUF register state
 * @param *lin Pointer to LIN device
 * @return Current FIFO output
 */
static inline u8 LIN_getLBUF(volatile struct LIN_REGS *lin)
{
    return lin->LBUF;
}

/**
 * @brief Get LSEL register state
 * @param *lin Pointer to LIN device
 * @return Current state
 */
static inline u8 LIN_getLSEL(volatile struct LIN_REGS *lin)
{
    return lin->LSEL.all;
}

/**
 * @brief Set LID register state
 * @param *lin Pointer to LIN device
 * @param state Value to be set
 */
static inline void LIN_setLID(volatile struct LIN_REGS *lin, u8 state)
{
    lin->LID.all = state;
}

/**
 * @brief Get LID register state
 * @param *lin Pointer to LIN device
 * @return Current state
 */
static inline u8 LIN_getLID(volatile struct LIN_REGS *lin)
{
    return lin->LID.bit.LID;
}

/**
 * @brief Get LER register state
 * @param *lin Pointer to LIN device
 * @return Current state
 */
static inline u8 LIN_getLER(volatile struct LIN_REGS *lin)
{
    return lin->LER.all;
}

/**
 * @brief Set LIE register state
 * @param *lin Pointer to LIN device
 * @param state Value to be set
 */
static inline void LIN_setLIE(volatile struct LIN_REGS *lin, u8 state)
{
    lin->LIE.all = state;
}

/**
 * @brief Get LIE register state
 * @param *lin Pointer to LIN device
 * @return Current state
 */
static inline u8 LIN_getLIE(volatile struct LIN_REGS *lin)
{
    return lin->LIE.all;
}

/**
 * @brief Get LSR register state
 * @param *lin Pointer to LIN device
 * @return Current state
 */
static inline u8 LIN_getLSR(volatile struct LIN_REGS *lin)
{
    return lin->LSR_LCR.all;
}

/**
 * @brief Get DL register state
 * @param *lin Pointer to LIN device
 * @return Current state
 */
static inline u16 LIN_getDL(volatile struct LIN_REGS *lin)
{
    u16 state;
    state = ((lin->DLH.all) << 8) | (lin->DLL.all);
    return state;
}

/**
 * @brief Get HDR delay register state
 * @param *lin Pointer to LIN device
 * @return Current state
 */
static inline u16 LIN_getHDR(volatile struct LIN_REGS *lin)
{
    u16 state;
    state = (lin->HDRL.all) | ((lin->HDRH.all) << 8);
    return state;
}

/**
 * @brief Get HDP register state
 * @param *lin Pointer to LIN device
 * @return Current state
 */
static inline u8 LIN_getHDP(volatile struct LIN_REGS *lin)
{
    return lin->HDP.all;
}

/**
 * @brief Set LBR register state
 * @param *lin Pointer to LIN device
 * @param state Value to be set
 */
static inline void LIN_setLBS(volatile struct LIN_REGS *lin, u8 state)
{
    lin->LBS.all = state;
}

/**
 * @brief Get LBR register state
 * @param *lin Pointer to LIN device
 * @param state Value to be set
 */
static inline u8 LIN_getLBS(volatile struct LIN_REGS *lin)
{
    return lin->LBS.all;
}

/**
 * @brief Get WURT register state
 * @param *lin Pointer to LIN device
 * @param state Value to be set
 */
static inline u8 LIN_getWURT(volatile struct LIN_REGS *lin)
{
    return lin->WURT;
}

/**
 * @brief Get IDT register state
 * @param *lin Pointer to LIN device
 * @return Current state
 */
static inline u16 LIN_getIDT(volatile struct LIN_REGS *lin)
{
    u16 state;
    state = (lin->IDTL) | ((lin->IDTH.all) << 8);
    return state;
}

/**
 * @brief Function calculate and set value to baud rate divider.
 * @param *lin Pointer to LIN device
 * @param clock System clock value
 * @param bud Baudrate value in range 1-20 kB
 */
static inline void LIN_setBaudrate(volatile struct LIN_REGS *lin, u32 clock, u32 baud)
{
    u32 tmp      = (clock / (16 * baud));
    lin->DLL.all = ((u8)(tmp & 0x00FF));
    lin->DLH.all = ((u8)((tmp & 0x7FFF) >> 8));
}

///@}

/** @name General usage functions */
///@{
/**
 * @brief Execute LIN command. After executes this function LIN device start executing specified command, the RDY bit
 * in LSR register is clear until command is in the progress. After proper execution the RDY bit is set and interrupt is
 * generated.
 * @param cmd Command to be send
 * @param ms Master/Slave mode select
 * @param lin13 Checksum selector
 * @param len Lenght of message, this option is valid only when LIN2.1 is selected (lin13=0) in other case the size of
 * message is taken form LID reggister
 */
void LIN_sendCommand(volatile struct LIN_REGS *lin, LIN_Cmd cmd, u8 ms, u8 lin13, u8 len);

/** @name General usage functions */
///@{
/**
 * @brief Execute LIN command. After executes this function LIN device start executing specified command, the RDY bit
 * in LSR register is clear until command is in the progress. After proper execution the RDY bit is set and interrupt is
 * generated.
 * @param *lin Pointer to LIN device
 * @param cmd_delay Delay between LCR write and command execution to be set
 * @param ainc Auto increment FIFO index after access enable
 * @param index FIFO index to be set
 */
void LIN_writeLSEL(volatile struct LIN_REGS *lin, LIN_CmdDelay cmd_delay, u8 ainc, u8 index);

/**
 * @brief Function copies data from the *dat parameter to the internal data buffer of LIN device.
 * @param *dat Pointer to data to be written
 * @param len Length of data in bytes
 */
void LIN_writeBuffer(volatile struct LIN_REGS *lin, u8 *dat, u8 len);

/**
 * @brief Function copies data from the internal data buffer of LIN device to the *dat parameter.
 * @param *lin Pointer to LIN device
 * @param *dat Pointer to data storage buffer
 * @param len Length of data in bytes
 */
void LIN_readBuffer(volatile struct LIN_REGS *lin, u8 *dat, u8 len);

/**
 * @brief Function wait until new header has not been received.
 */
struct LIN_LSR_BITS LIN_waitForHeader(volatile struct LIN_REGS *lin);

/**
 * @brief Function wait until current command is in the progress.
 * @param *lin Pointer to LIN device
 */
struct LIN_LSR_BITS LIN_waitForReady(volatile struct LIN_REGS *lin);

#ifdef __cplusplus
}
#endif

#endif
