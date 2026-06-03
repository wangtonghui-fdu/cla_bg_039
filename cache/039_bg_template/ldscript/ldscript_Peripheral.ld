MEMORY
{
  PIECTRL       : ORIGIN = 0x007F0100, LENGTH = 0x100
  PIEVECTTABLE  : ORIGIN = 0x0002FC00, LENGTH = 0x400
  DEBUG         : ORIGIN = 0x007F0200, LENGTH = 0x100
  CPUTIMER0     : ORIGIN = 0x007F0300, LENGTH = 0x20
  CPUTIMER1     : ORIGIN = 0x007F0320, LENGTH = 0x20
  CPUTIMER2     : ORIGIN = 0x007F0340, LENGTH = 0x20
  CR            : ORIGIN = 0x007F0400, LENGTH = 0x100
  GR            : ORIGIN = 0x007F0500, LENGTH = 0x100
  MOB           : ORIGIN = 0x007F0600, LENGTH = 0x100
  EXP           : ORIGIN = 0x007F0700, LENGTH = 0x100
  WD            : ORIGIN = 0x007F0800, LENGTH = 0x100
  IPCEVENT      : ORIGIN = 0x007F0900, LENGTH = 0x100
  IPCCMD        : ORIGIN = 0x007F0A00, LENGTH = 0x100
  VCU           : ORIGIN = 0x007F0B00, LENGTH = 0x100
  TRACE_BUFFER  : ORIGIN = 0x007F0C00, LENGTH = 0x100
  WATCH_POINT   : ORIGIN = 0x007F0D00, LENGTH = 0x100
  ECC           : ORIGIN = 0x007F0E00, LENGTH = 0x100
  ERADGLOBAL    : ORIGIN = 0x007F0F00, LENGTH = 0x100
  ERADHWBP1     : ORIGIN = 0x007F1000, LENGTH = 0x100
  ERADHWBP2     : ORIGIN = 0x007F1100, LENGTH = 0x100
  ERADHWBP3     : ORIGIN = 0x007F1200, LENGTH = 0x100
  ERADHWBP4     : ORIGIN = 0x007F1300, LENGTH = 0x100
  ERADHWBP5     : ORIGIN = 0x007F1400, LENGTH = 0x100
  ERADHWBP6     : ORIGIN = 0x007F1500, LENGTH = 0x100
  ERADHWBP7     : ORIGIN = 0x007F1600, LENGTH = 0x100
  ERADHWBP8     : ORIGIN = 0x007F1700, LENGTH = 0x100
  ERADCOUNTER1  : ORIGIN = 0x007F1800, LENGTH = 0x100
  ERADCOUNTER2  : ORIGIN = 0x007F1900, LENGTH = 0x100
  ERADCOUNTER3  : ORIGIN = 0x007F1A00, LENGTH = 0x100
  ERADCOUNTER4  : ORIGIN = 0x007F1B00, LENGTH = 0x100
  CLA1          : ORIGIN = 0x007F1C00, LENGTH = 0x100
  IPCCPU1RAM     : ORIGIN = 0x00100000, LENGTH = 0x1000
  IPCCPU2RAM     : ORIGIN = 0x00101000, LENGTH = 0x1000
  CLKCFG         : ORIGIN = 0x01000000, LENGTH = 0x200
  CPUSYS         : ORIGIN = 0x01001000, LENGTH = 0x400
  DEVCFG         : ORIGIN = 0x01001000, LENGTH = 0x400
  XINT           : ORIGIN = 0x010011B0, LENGTH = 0x50
  NMIINTRUPT     : ORIGIN = 0x01001200, LENGTH = 0x100
  DMA            : ORIGIN = 0x01002000, LENGTH = 0x1000
  DMACH1         : ORIGIN = 0x01002100, LENGTH = 0x100
  DMACH2         : ORIGIN = 0x01002200, LENGTH = 0x100
  DMACH3         : ORIGIN = 0x01002300, LENGTH = 0x100
  DMACH4         : ORIGIN = 0x01002400, LENGTH = 0x100
  DMACH5         : ORIGIN = 0x01002500, LENGTH = 0x100
  DMACH6         : ORIGIN = 0x01002600, LENGTH = 0x100
  REGFILE        : ORIGIN = 0x01003000, LENGTH = 0x1000
  DMA_L          : ORIGIN = 0x01005000, LENGTH = 0x1000
  EPWM1          : ORIGIN = 0x01010000, LENGTH = 0x200
  EPWM2          : ORIGIN = 0x01010200, LENGTH = 0x200
  EPWM3          : ORIGIN = 0x01010400, LENGTH = 0x200
  EPWM4          : ORIGIN = 0x01010600, LENGTH = 0x200
  EPWM5          : ORIGIN = 0x01010800, LENGTH = 0x200
  EPWM6          : ORIGIN = 0x01010A00, LENGTH = 0x200
  EPWM7          : ORIGIN = 0x01010C00, LENGTH = 0x200
  EPWM8          : ORIGIN = 0x01010E00, LENGTH = 0x200
  EQEP1          : ORIGIN = 0x01012000, LENGTH = 0x800
  EQEP2          : ORIGIN = 0x01012800, LENGTH = 0x800
  ECAP1          : ORIGIN = 0x01014000, LENGTH = 0x80
  ECAP2          : ORIGIN = 0x01014100, LENGTH = 0x80
  ECAP3          : ORIGIN = 0x01014200, LENGTH = 0x80
  HRCAP3         : ORIGIN = 0x01014300, LENGTH = 0x40
  SYNCSOC        : ORIGIN = 0x01014400, LENGTH = 0x80
  SFO            : ORIGIN = 0x01014500, LENGTH = 0x80
  SFOHHR         : ORIGIN = 0x01014600, LENGTH = 0x80
  DAC_A          : ORIGIN = 0x01016000, LENGTH = 0x40
  DAC_B          : ORIGIN = 0x01016040, LENGTH = 0x40
  CMPSS1         : ORIGIN = 0x01018000, LENGTH = 0x100
  CMPSS2         : ORIGIN = 0x01018800, LENGTH = 0x100
  CMPSS3         : ORIGIN = 0x01019000, LENGTH = 0x100
  CMPSS4         : ORIGIN = 0x01019800, LENGTH = 0x100
  SDFM1          : ORIGIN = 0x0101A000, LENGTH = 0x1000
  SDFM2          : ORIGIN = 0x0101C000, LENGTH = 0x1000
  SPIA           : ORIGIN = 0x01020000, LENGTH = 0x1000
  SPIB           : ORIGIN = 0x01021000, LENGTH = 0x1000
  PMBUSA         : ORIGIN = 0x01023000, LENGTH = 0x1000
  FSITXA         : ORIGIN = 0x01025000, LENGTH = 0x1000
  FSIRXA         : ORIGIN = 0x01026000, LENGTH = 0x1000
  ADCARESULT     : ORIGIN = 0x01030110, LENGTH = 0x200
  ADCBRESULT     : ORIGIN = 0x01030310, LENGTH = 0x200
  ADCCRESULT     : ORIGIN = 0x01030510, LENGTH = 0x200
  ADC_A          : ORIGIN = 0x01032000, LENGTH = 0x200
  ADC_B          : ORIGIN = 0x01032200, LENGTH = 0x200
  ADC_C          : ORIGIN = 0x01032400, LENGTH = 0x200
  INPUTXBAR      : ORIGIN = 0x01040000, LENGTH = 0x1000
  XBAR           : ORIGIN = 0x01041000, LENGTH = 0x1000
  EPWMXBAR       : ORIGIN = 0x01043000, LENGTH = 0x1000
  OUTPUTXBAR     : ORIGIN = 0x01045000, LENGTH = 0x1000
  GPIOCTRL       : ORIGIN = 0x01047000, LENGTH = 0x1000
  GPIODATA       : ORIGIN = 0x01048000, LENGTH = 0x1000
  ANALOGSUBSYS   : ORIGIN = 0x01049000, LENGTH = 0x1000
  DCSMBANK0Z1    : ORIGIN = 0x01051000, LENGTH = 0x800
  DCSMBANK0Z2    : ORIGIN = 0x01051800, LENGTH = 0x800
  DCSMCOMMON     : ORIGIN = 0x01052000, LENGTH = 0x1000
  DCSMBANK1Z1    : ORIGIN = 0x01053000, LENGTH = 0x800
  DCSMBANK1Z2    : ORIGIN = 0x01053800, LENGTH = 0x800
  CANA           : ORIGIN = 0x01060000, LENGTH = 0x1000
  CANB           : ORIGIN = 0x01061000, LENGTH = 0x1000
  DCC0           : ORIGIN = 0x01062000, LENGTH = 0x1000
  DCC1           : ORIGIN = 0x01063000, LENGTH = 0x1000
  LINA           : ORIGIN = 0x01070000, LENGTH = 0x1000
  SCIC           : ORIGIN = 0x01070000, LENGTH = 0x1000
  LINB           : ORIGIN = 0x01071000, LENGTH = 0x1000
  SCID           : ORIGIN = 0x01071000, LENGTH = 0x1000
  SCIA           : ORIGIN = 0x01080000, LENGTH = 0x1000
  SCIB           : ORIGIN = 0x01081000, LENGTH = 0x1000
  I2CA           : ORIGIN = 0x01082000, LENGTH = 0x1000
  I2CB           : ORIGIN = 0x01083000, LENGTH = 0x1000
  CLB1           : ORIGIN = 0x01090000, LENGTH = 0x1000
  CLB2           : ORIGIN = 0x01091000, LENGTH = 0x1000
  CLB3           : ORIGIN = 0x01092000, LENGTH = 0x1000
  CLB4           : ORIGIN = 0x01093000, LENGTH = 0x1000
  AES            : ORIGIN = 0x010A0000, LENGTH = 0x1000
  AES_SS         : ORIGIN = 0x010A0C00, LENGTH = 0x1000
  FLASH0CTRL     : ORIGIN = 0x010B0000, LENGTH = 0x1000
  
  CPU1TOCPU2IPC : ORIGIN = 0x00200000, LENGTH = 0x1000
  CPU1TOCLA1IPC : ORIGIN = 0x00201000, LENGTH = 0x1000
  CLA1TOCPU1IPC : ORIGIN = 0x00202000, LENGTH = 0x1000
  CPU2TOCPU1IPC : ORIGIN = 0x00203000, LENGTH = 0x1000
  CPU2TOCLA2IPC : ORIGIN = 0x00204000, LENGTH = 0x1000
  CLA2TOCPU2IPC : ORIGIN = 0x00205000, LENGTH = 0x1000
  
  XINTFA         : ORIGIN = 0x20000000, LENGTH = 0x1000
}

SECTIONS
{
    PieCtrlRegsFile(NOLOAD)       : { KEEP(*(PieCtrlRegsFile)) }       > PIECTRL
    PieVectTableFile(NOLOAD)      : { KEEP(*(PieVectTableFile)) }      > PIEVECTTABLE
    CpuTimer0RegsFile(NOLOAD)     : { KEEP(*(CpuTimer0RegsFile)) }     > CPUTIMER0
    CpuTimer1RegsFile(NOLOAD)     : { KEEP(*(CpuTimer1RegsFile)) }     > CPUTIMER1
    CpuTimer2RegsFile(NOLOAD)     : { KEEP(*(CpuTimer2RegsFile)) }     > CPUTIMER2
    ExpRegsFile(NOLOAD)           : { KEEP(*(ExpRegsFile)) }           > EXP
    WdRegsFile(NOLOAD)            : { KEEP(*(WdRegsFile)) }            > WD
    IpcEventRegsFile(NOLOAD)      : { KEEP(*(IpcEventRegsFile)) }      > IPCEVENT
    IpcCmdRegsFile(NOLOAD)        : { KEEP(*(IpcCmdRegsFile)) }        > IPCCMD
    TraceBufferRegsFile(NOLOAD)   : { KEEP(*(TraceBufferRegsFile)) }   > TRACE_BUFFER
    WatchPointRegsFile(NOLOAD)    : { KEEP(*(WatchPointRegsFile)) }    > WATCH_POINT
    EccRegsFile(NOLOAD)           : { KEEP(*(EccRegsFile)) }           > ECC
    EradGlobalRegsFile(NOLOAD)    : { KEEP(*(EradGlobalRegsFile)) }    > ERADGLOBAL
    EradHWBP1RegsFile(NOLOAD)     : { KEEP(*(EradHWBP1RegsFile)) }     > ERADHWBP1
    EradHWBP2RegsFile(NOLOAD)     : { KEEP(*(EradHWBP2RegsFile)) }     > ERADHWBP2
    EradHWBP3RegsFile(NOLOAD)     : { KEEP(*(EradHWBP3RegsFile)) }     > ERADHWBP3
    EradHWBP4RegsFile(NOLOAD)     : { KEEP(*(EradHWBP4RegsFile)) }     > ERADHWBP4
    EradHWBP5RegsFile(NOLOAD)     : { KEEP(*(EradHWBP5RegsFile)) }     > ERADHWBP5
    EradHWBP6RegsFile(NOLOAD)     : { KEEP(*(EradHWBP6RegsFile)) }     > ERADHWBP6
    EradHWBP7RegsFile(NOLOAD)     : { KEEP(*(EradHWBP7RegsFile)) }     > ERADHWBP7
    EradHWBP8RegsFile(NOLOAD)     : { KEEP(*(EradHWBP8RegsFile)) }     > ERADHWBP8
    EradCounter1RegsFile(NOLOAD)  : { KEEP(*(EradCounter1RegsFile)) }  > ERADCOUNTER1
    EradCounter2RegsFile(NOLOAD)  : { KEEP(*(EradCounter2RegsFile)) }  > ERADCOUNTER2
    EradCounter3RegsFile(NOLOAD)  : { KEEP(*(EradCounter3RegsFile)) }  > ERADCOUNTER3
    EradCounter4RegsFile(NOLOAD)  : { KEEP(*(EradCounter4RegsFile)) }  > ERADCOUNTER4
    ClkCfgRegsFile(NOLOAD)        : { KEEP(*(ClkCfgRegsFile)) }        > CLKCFG
    CpuSysRegsFile(NOLOAD)        : { KEEP(*(CpuSysRegsFile)) }        > CPUSYS
    DevCfgRegsFile(NOLOAD)        : { KEEP(*(DevCfgRegsFile)) }        > DEVCFG
    XintRegsFile(NOLOAD)          : { KEEP(*(XintRegsFile)) }          > XINT
    NmiIntruptRegsFile(NOLOAD)    : { KEEP(*(NmiIntruptRegsFile)) }    > NMIINTRUPT
    Dcc0RegsFile(NOLOAD)          : { KEEP(*(Dcc0RegsFile)) }          > DCC0
    Dcc1RegsFile(NOLOAD)          : { KEEP(*(Dcc1RegsFile)) }          > DCC1
    DmaRegsFile(NOLOAD)           : { KEEP(*(DmaRegsFile)) }           > DMA
    DmaCh1RegsFile(NOLOAD)        : { KEEP(*(DmaCH1RegsFile)) }        > DMACH1
    DmaCh2RegsFile(NOLOAD)        : { KEEP(*(DmaCH2RegsFile)) }        > DMACH2
    DmaCh3RegsFile(NOLOAD)        : { KEEP(*(DmaCH3RegsFile)) }        > DMACH3
    DmaCh4RegsFile(NOLOAD)        : { KEEP(*(DmaCH4RegsFile)) }        > DMACH4
    DmaCh5RegsFile(NOLOAD)        : { KEEP(*(DmaCH5RegsFile)) }        > DMACH5
    DmaCh6RegsFile(NOLOAD)        : { KEEP(*(DmaCH6RegsFile)) }        > DMACH6
    AnalogSubsysRegsFile(NOLOAD)  : { KEEP(*(AnalogSubsysRegsFile)) }  > ANALOGSUBSYS
    DcsmBank0Z1RegsFile(NOLOAD)   : { KEEP(*(DcsmBank0Z1RegsFile)) }   > DCSMBANK0Z1
    DcsmBank0Z2RegsFile(NOLOAD)   : { KEEP(*(DcsmBank0Z2RegsFile)) }   > DCSMBANK0Z2
    DcsmCommonRegsFile(NOLOAD)    : { KEEP(*(DcsmCommonRegs)) }        > DCSMCOMMON
    DcsmBank1Z1RegsFile(NOLOAD)   : { KEEP(*(DcsmBank1Z1RegsFile)) }   > DCSMBANK1Z1
    DcsmBank1Z2RegsFile(NOLOAD)   : { KEEP(*(DcsmBank1Z2RegsFile)) }   > DCSMBANK1Z2
    ECap1RegsFile(NOLOAD)         : { KEEP(*(ECap1RegsFile)) }         > ECAP1
    ECap2RegsFile(NOLOAD)         : { KEEP(*(ECap2RegsFile)) }         > ECAP2
    ECap3RegsFile(NOLOAD)         : { KEEP(*(ECap3RegsFile)) }         > ECAP3
    HRCap3RegsFile(NOLOAD)        : { KEEP(*(HRCap3RegsFile)) }        > HRCAP3
    SyncSocRegsFile(NOLOAD)       : { KEEP(*(SyncSocRegsFile)) }       > SYNCSOC
    SFORegsFile(NOLOAD)           : { KEEP(*(SFORegsFile)) }           > SFO
    SFOHHRRegsFile(NOLOAD)        : { KEEP(*(SFOHHRRegsFile)) }        > SFOHHR
    Cla1RegsFile(NOLOAD)          : { KEEP(*(Cla1RegsFile)) }          > CLA1
    EPwm1RegsFile(NOLOAD)         : { KEEP(*(EPwm1RegsFile)) }         > EPWM1
    EPwm2RegsFile(NOLOAD)         : { KEEP(*(EPwm2RegsFile)) }         > EPWM2
    EPwm3RegsFile(NOLOAD)         : { KEEP(*(EPwm3RegsFile)) }         > EPWM3
    EPwm4RegsFile(NOLOAD)         : { KEEP(*(EPwm4RegsFile)) }         > EPWM4
    EPwm5RegsFile(NOLOAD)         : { KEEP(*(EPwm5RegsFile)) }         > EPWM5
    EPwm6RegsFile(NOLOAD)         : { KEEP(*(EPwm6RegsFile)) }         > EPWM6
    EPwm7RegsFile(NOLOAD)         : { KEEP(*(EPwm7RegsFile)) }         > EPWM7
    EPwm8RegsFile(NOLOAD)         : { KEEP(*(EPwm8RegsFile)) }         > EPWM8
    EQep1RegsFile(NOLOAD)         : { KEEP(*(EQep1RegsFile)) }         > EQEP1
    EQep2RegsFile(NOLOAD)         : { KEEP(*(EQep2RegsFile)) }         > EQEP2
    DacaRegsFile(NOLOAD)          : { KEEP(*(DacaRegsFile)) }          > DAC_A
    DacbRegsFile(NOLOAD)          : { KEEP(*(DacbRegsFile)) }          > DAC_B
    Cmpss1RegsFile(NOLOAD)        : { KEEP(*(Cmpss1RegsFile)) }        > CMPSS1
    Cmpss2RegsFile(NOLOAD)        : { KEEP(*(Cmpss2RegsFile)) }        > CMPSS2
    Cmpss3RegsFile(NOLOAD)        : { KEEP(*(Cmpss3RegsFile)) }        > CMPSS3
    Cmpss4RegsFile(NOLOAD)        : { KEEP(*(Cmpss4RegsFile)) }        > CMPSS4
    AdcbResultRegsFile(NOLOAD)    : { KEEP(*(AdcbResultRegsFile)) }    > ADCBRESULT
    AdcaResultRegsFile(NOLOAD)    : { KEEP(*(AdcaResultRegsFile)) }    > ADCARESULT
    AdccResultRegsFile(NOLOAD)    : { KEEP(*(AdccResultRegsFile)) }    > ADCCRESULT
    AdcaRegsFile(NOLOAD)          : { KEEP(*(AdcaRegsFile)) }          > ADC_A
    AdcbRegsFile(NOLOAD)          : { KEEP(*(AdcbRegsFile)) }          > ADC_B
    AdccRegsFile(NOLOAD)          : { KEEP(*(AdccRegsFile)) }          > ADC_C
    GpioDataRegsFile(NOLOAD)      : { KEEP(*(GpioDataRegsFile)) }      > GPIODATA
    GpioCtrlRegsFile(NOLOAD)      : { KEEP(*(GpioCtrlRegsFile)) }      > GPIOCTRL
    InputXbarRegsFile(NOLOAD)     : { KEEP(*(InputXbarRegsFile)) }     > INPUTXBAR
    OutputXbarRegsFile(NOLOAD)    : { KEEP(*(OutputXbarRegsFile)) }    > OUTPUTXBAR
    EPwmXbarRegsFile(NOLOAD)      : { KEEP(*(EPwmXbarRegsFile)) }      > EPWMXBAR
    XbarRegsFile(NOLOAD)          : { KEEP(*(XbarRegsFile)) }          > XBAR
    SpiaRegsFile(NOLOAD)          : { KEEP(*(SpiaRegsFile)) }          > SPIA
    SpibRegsFile(NOLOAD)          : { KEEP(*(SpibRegsFile)) }          > SPIB
    PmbusaRegsFile(NOLOAD)        : { KEEP(*(PmbusaRegsFile)) }        > PMBUSA
    FsiRxaRegsFile(NOLOAD)        : { KEEP(*(FsiRxaRegsFile)) }        > FSIRXA
    FsiTxaRegsFile(NOLOAD)        : { KEEP(*(FsiTxaRegsFile)) }        > FSITXA
    LinaRegsFile(NOLOAD)          : { KEEP(*(LinaRegsFile)) }          > LINA
    LinbRegsFile(NOLOAD)          : { KEEP(*(LindaRegsFile)) }         > LINB
    SciaRegsFile(NOLOAD)          : { KEEP(*(SciaRegsFile)) }          > SCIA
    ScibRegsFile(NOLOAD)          : { KEEP(*(ScibRegsFile)) }          > SCIB
    ScicRegsFile(NOLOAD)          : { KEEP(*(ScicRegsFile)) }          > SCIC
    ScidRegsFile(NOLOAD)          : { KEEP(*(ScidRegsFile)) }          > SCID
    I2caRegsFile(NOLOAD)          : { KEEP(*(I2caRegsFile)) }          > I2CA
    I2cbRegsFile(NOLOAD)          : { KEEP(*(I2cbRegsFile)) }          > I2CB
    CanaRegsFile(NOLOAD)          : { KEEP(*(CanaRegsFile)) }          > CANA
    CanbRegsFile(NOLOAD)          : { KEEP(*(CanbRegsFile)) }          > CANB
    Sdfm1RegsFile(NOLOAD)         : { KEEP(*(Sdfm1RegsFile)) }         > SDFM1
    Sdfm2RegsFile(NOLOAD)         : { KEEP(*(Sdfm2RegsFile)) }         > SDFM2
    Clb1RegsFile(NOLOAD)          : { KEEP(*(Clb1RegsFile)) }          > CLB1
    Clb2RegsFile(NOLOAD)          : { KEEP(*(Clb2RegsFile)) }          > CLB2
    Clb3RegsFile(NOLOAD)          : { KEEP(*(Clb3RegsFile)) }          > CLB3
    Clb4RegsFile(NOLOAD)          : { KEEP(*(Clb4RegsFile)) }          > CLB4
    AesRegsFile(NOLOAD)           : { KEEP(*(AesRegsFile)) }           > AES
    AesssRegsFile(NOLOAD)         : { KEEP(*(AesssRegsFile)) }         > AES_SS
    XintfaRegsFile(NOLOAD)        : { KEEP(*(XintfaRegsFile)) }        > XINTFA
    MsgRamCpu1ToCpu2File(NOLOAD)  : { KEEP(*(MsgRamCpu1ToCpu2File)) }  > IPCCPU1RAM
    MsgRamCpu2ToCpu1File(NOLOAD)  : { KEEP(*(MsgRamCpu2ToCpu1File)) }  > IPCCPU2RAM
    Flash0CtrlRegsFile(NOLOAD)    : { KEEP(*(Flash0CtrlRegsFile)) }    > FLASH0CTRL
    Cpu1toCpu2IpcRegsFile(NOLOAD) : { KEEP(*(Cpu1toCpu2IpcRegsFile)) } > CPU1TOCPU2IPC
    Cpu1toCla1IpcRegsFile(NOLOAD) : { KEEP(*(Cpu1toCla1IpcRegsFile)) } > CPU1TOCLA1IPC
    Cla1toCpu1IpcRegsFile(NOLOAD) : { KEEP(*(Cla1toCpu1IpcRegsFile)) } > CLA1TOCPU1IPC
    Cpu2toCpu1IpcRegsFile(NOLOAD) : { KEEP(*(Cpu2toCpu1IpcRegsFile)) } > CPU2TOCPU1IPC
    Cpu2toCla2IpcRegsFile(NOLOAD) : { KEEP(*(Cpu2toCla2IpcRegsFile)) } > CPU2TOCLA2IPC
    Cla2toCpu2IpcRegsFile(NOLOAD) : { KEEP(*(Cla2toCpu2IpcRegsFile)) } > CLA2TOCPU2IPC
}
