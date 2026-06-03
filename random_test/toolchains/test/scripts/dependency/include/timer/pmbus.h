#ifndef QX_PMBUS_H
#define QX_PMBUS_H

#ifdef __cplusplus
extern "C" {
#endif

#include "q28004x_pmbus.h"
#include "define.h"

#define PMBUS_INT_ALL 0x000007FFUL

#define PMBUS_O_PMBINTM   0xCC
#define PMBUS_O_PMBSTS    0x70
#define PMBUS_O_PMBENABLE 0x6C
#define PMBUS_O_PMBSAR    0x08
#define PMBUS_O_PMBTAR    0x04

#define PMBUS_PMBSTS_BUS_FREE 0x0001U // PMBus Free Indicator

#define PMBUS_PMBENABLE_ALERT_EN 0x40000U

//*****************************************************************************
//
//! Clock Mode Descriptor
//!
//! Used in PMBus_configBusClock() to set up the bus speed. There are two
//! possible modes of operation:
//! -# Standard Mode 100 kHz
//! -# Fast Mode 400 kHz
//
//*****************************************************************************
typedef enum
{
    PMBUS_CLOCKMODE_STANDARD = 0U, //!< Standard mode 100 kHz
    PMBUS_CLOCKMODE_FAST     = 1U  //!< Fast Mode 400 kHz
} PMBus_ClockMode;

//*****************************************************************************
//
//! \internal
//! Checks a PMBus base address.
//!
//! \param base is the base address of the PMBus instance used.
//!
//! This function determines if a PMBus module base address is valid.
//!
//! \return Returns \b true if the base address is valid and \b false
//! otherwise.
//
//*****************************************************************************
#ifdef DEBUG
static inline bool PMBus_isBaseValid(uint32_t base)
{
    return (base == PMBUSA_BASE);
}
#endif

//*****************************************************************************
//
// PCBCCR Commands -> used in PMBus_configControlleer()
//
//*****************************************************************************

//*****************************************************************************
//
//! Disables the PMBus module.
//!
//! \param base is the base address of the PMBus instance used.
//!
//! This function resets the internal state machine of the PMBus module and
//! holds it in that state
//!
//! \return None.
//
//*****************************************************************************
static inline void PMBus_disableModule(uint32_t base)
{
    //
    // Check the arguments.
    //
    ASSERT(PMBus_isBaseValid(base));
    EALLOW;
    PmbusaRegs.IC_ENABLE.bit.ENABLE = 0;
    HWREG(base + PMBUS_O_PMBENABLE) &= ~(0x1U);
    EDIS;
}

//*****************************************************************************
//
//! Enables the PMBus module.
//!
//! \param base is the base address of the PMBus instance used.
//!
//! This function enables operation of the PMBus module by removing it from the
//! reset state
//!
//! \return None.
//
//*****************************************************************************
static inline void PMBus_enableModule(uint32_t base)
{
    //
    // Check the arguments.
    //
    ASSERT(PMBus_isBaseValid(base));
    EALLOW;
    PmbusaRegs.IC_ENABLE.bit.ENABLE |= 0x01;
    EDIS;
}

//*****************************************************************************
//
//! Enables PMBus interrupt sources.
//!
//! \param base is the base address of the PMBus instance used.
//! \param intFlags is the bit mask of the interrupt sources to be enabled.
//!
//! This function enables the indicated PMBus interrupt sources.  Only the
//! sources that are enabled can be reflected to the processor interrupt.
//! Disabled sources have no effect on the processor.
//!
//! The \e intFlags parameter is the logical OR of any of the following:
//!
//! - \b PMBUS_INT_BUS_FREE          - Bus Free Interrupt
//! - \b PMBUS_INT_CLK_LOW_TIMEOUT   - Clock Low Time-out Interrupt
//! - \b PMBUS_INT_DATA_READY        - Data Ready Interrupt
//! - \b PMBUS_INT_DATA_REQUEST      - Data Request Interrupt
//! - \b PMBUS_INT_TARGET_ADDR_READY  - Target Address Ready Interrupt
//! - \b PMBUS_INT_EOM               - End of Message Interrupt
//! - \b PMBUS_INT_ALERT             - Alert Detection Interrupt
//! - \b PMBUS_INT_CONTROL           - Control Detection Interrupt
//! - \b PMBUS_INT_LOST_ARB          - Lost Arbitration Interrupt
//! - \b PMBUS_INT_CLK_HIGH_DETECT   - Clock High Detection Interrupt
//! - \b PMBUS_INT_ALL               - all PMBus interrupts
//!
//! \return None.
//
//*****************************************************************************
static inline void PMBus_enableInterrupt(uint32_t base, uint32_t intFlags)
{
    //
    // Check the arguments.
    //
    ASSERT(PMBus_isBaseValid(base));
    EALLOW;

    //
    // Enable the desired basic interrupts, that is, clear their mask bits
    // in PMBINTM
    //
    HWREG(base + PMBUS_O_PMBINTM) &= ~(intFlags & 0x07FFU);
    EDIS;
}

//*****************************************************************************
//
//! Disables PMBus interrupt sources.
//!
//! \param base is the base address of the PMBus instance used.
//! \param intFlags is the bit mask of the interrupt sources to be disabled.
//!
//! This function disables the indicated PMBus interrupt sources.  Only
//! the sources that are enabled can be reflected to the processor interrupt.
//! Disabled sources have no effect on the processor.
//!
//! The \e intFlags parameter has the same definition as the \e intFlags
//! parameter to PMBus_enableInterrupt().
//!
//! \return None.
//
//*****************************************************************************
static inline void PMBus_disableInterrupt(uint32_t base, uint32_t intFlags)
{
    //
    // Check the arguments.
    //
    ASSERT(PMBus_isBaseValid(base));
    EALLOW;

    //
    // Disable the desired interrupts
    //
    HWREG(base + PMBUS_O_PMBINTM) |= (intFlags & 0x07FFU);
    EDIS;
}

//*****************************************************************************
//
//! Indicates whether or not the PMBus bus is busy.
//!
//! \param status  the value of the status register (PMBUS_O_PMBSTS)
//!
//! This function returns an indication of whether or not the PMBus bus is busy
//!
//! \note The status register is cleared each time it is read, therefore, it
//! should be read once at the beginning of an interrupt service routine using
//! PMBus_getInterruptStatus() and saved to a temporary variable for further
//! processing.
//!
//! \return Returns \b true if the PMBus bus is busy; otherwise, returns
//! \b false.
//
//*****************************************************************************
static inline bool PMBus_isBusBusy(uint32_t status)
{
    return (((status & PMBUS_PMBSTS_BUS_FREE) == 0U) ? true : false);
}

//*****************************************************************************
//
//! Enable I2C mode
//!
//! \param base is the base address of the PMBus instance used.
//!
//! Set the PMBus module to work in I2C mode
//!
//! \return None.
//
//*****************************************************************************
static inline void PMBus_enableI2CMode(uint32_t base)
{
    //
    // Locals
    //
    uint32_t interruptState;

    //
    // Check the arguments.
    //
    ASSERT(PMBus_isBaseValid(base));

    EALLOW;

    //
    // Save off the interrupt state and disable them
    //
    interruptState                = HWREG(base + PMBUS_O_PMBINTM);
    HWREG(base + PMBUS_O_PMBINTM) = PMBUS_INT_ALL;

    EDIS;
}

//*****************************************************************************
//
//! Disable I2C mode
//!
//! \param base is the base address of the PMBus instance used.
//!
//! Set the PMBus module to work in PMBus mode
//!
//! \return None.
//
//*****************************************************************************
static inline void PMBus_disableI2CMode(uint32_t base)
{
    //
    // Check the arguments.
    //
    ASSERT(PMBus_isBaseValid(base));

    EALLOW;

    EDIS;
}

//*****************************************************************************
//
//! Read the status register
//!
//! \param base is the base address of the PMBus instance used.
//!
//! \return Contents of the status register.
//
//*****************************************************************************
static inline uint32_t PMBus_getStatus(uint32_t base)
{
    //
    // Check the arguments.
    //
    ASSERT(PMBus_isBaseValid(base));

    return (HWREG(base + PMBUS_O_PMBSTS));
}

//*****************************************************************************
//
//! Acknowledge the transaction by writing to the PMBACK register
//!
//! \param base is the base address of the PMBus instance used.
//!
//! \return None.
//
//*****************************************************************************
static inline void PMBus_ackTransaction(uint32_t base)
{
    //
    // Check the arguments.
    //
    ASSERT(PMBus_isBaseValid(base));

    //
    // Acknowledge
    //
    //    HWREG(base + PMBUS_O_PMBACK) |= PMBUS_PMBACK_ACK;
}

//*****************************************************************************
//
//! Nack the transaction by writing to the PMBACK register
//!
//! \param base is the base address of the PMBus instance used.
//!
//! \return None.
//
//*****************************************************************************
static inline void PMBus_nackTransaction(uint32_t base)
{
    //
    // Check the arguments.
    //
    ASSERT(PMBus_isBaseValid(base));

    //
    // NACK
    //
    //    HWREG(base + PMBUS_O_PMBACK) &= ~(uint32_t)PMBUS_PMBACK_ACK;
}

//*****************************************************************************
//
//! Alert the controller by asserting the ALERT line
//!
//! \param base is the base address of the PMBus instance used.
//!
//! A target PMBus can alert the controller by pulling the alert line low.
//! This triggers an Alert Response from the controller`, where the ,controller issues
//! the \b Alert \b Response \b Address on the bus with a read bit and the
//! alerting target is required to reply with its address.
//!
//! \note The alerting device should be in target mode.
//!
//! \return None.
//
//*****************************************************************************
static inline void PMBus_assertAlertLine(uint32_t base)
{
    //
    // Check the arguments.
    //
    ASSERT(PMBus_isBaseValid(base));

    EALLOW;

    //
    // Pull the alert line low
    //
    HWREG(base + PMBUS_O_PMBENABLE) |= PMBUS_PMBENABLE_ALERT_EN;

    EDIS;
}

//*****************************************************************************
//
//! De-assert the alert line
//!
//! \param base is the base address of the PMBus instance used.
//!
//! \return None.
//
//*****************************************************************************
static inline void PMBus_deassertAlertLine(uint32_t base)
{
    //
    // Check the arguments.
    //
    ASSERT(PMBus_isBaseValid(base));

    EALLOW;

    //
    // Pull the alert line low

    //
    HWREG(base + PMBUS_O_PMBENABLE) &= ~(uint32_t)PMBUS_PMBENABLE_ALERT_EN;

    EDIS;
}

//*****************************************************************************
//
//! Get the address that the PMBus module will respond to (in target mode)
//!
//! \param base is the base address of the PMBus instance used.
//!
//! This function will query the PMBUS_O_PMBHTA register, this
//! will be the address of the module when used in Target Mode.
//! \return Address of the PMBus device (in slave mode).
//
//*****************************************************************************
static inline uint16_t PMBus_getOwnAddress(uint32_t base)
{
    //
    // Check the arguments.
    //
    ASSERT(PMBus_isBaseValid(base));

    return (HWREG(base + PMBUS_O_PMBSAR) & 0x3FFU);
}

//*****************************************************************************
//
//! Set the current device address
//!
//! \param base is the base address of the PMBus instance used.
//! \param address : Address to be configured.
//!
//! This function configures the current device address, this
//! will be the own address of the module.
//! \return None.
//
//*****************************************************************************
static inline void PMBus_setOwnAddress(uint32_t base, uint16_t Ownaddress)
{
    //
    // Check the arguments.
    //
    ASSERT(PMBus_isBaseValid(base));
    ASSERT(Ownaddress <= 0x3FFU);

    EALLOW;

    //
    // Write the address to the PMBSC register (bits 6:0)
    //
    HWREG(base + PMBUS_O_PMBSAR) = (Ownaddress & 0x3FF);

    EDIS;
}

//*****************************************************************************
//
//! Set the target address
//!
//! \param base is the base address of the PMBus instance used.
//! \param address : Target Address to be configured.
//!
//! This function configures the current device address, this
//! will be the target address.
//! \return None.
//
//*****************************************************************************
static inline void PMBus_setTargetAddress(uint32_t base, uint16_t targetAddress)
{
    //
    // Check the arguments.
    //
    ASSERT(PMBus_isBaseValid(base));
    ASSERT(targetAddress <= 0x3FFU);

    EALLOW;

    //
    // Write the target address to PMBMC register
    //
    HWREG(base + PMBUS_O_PMBTAR) |= ((uint32_t)targetAddress & 0x3ff);
    EDIS;
}

#ifdef __cplusplus
}
#endif
#endif
