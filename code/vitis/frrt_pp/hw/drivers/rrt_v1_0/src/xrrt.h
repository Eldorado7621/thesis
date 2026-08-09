// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XRRT_H
#define XRRT_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xrrt_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef struct {
    u16 DeviceId;
    u32 Ctrl_bus_BaseAddress;
} XRrt_Config;
#endif

typedef struct {
    u64 Ctrl_bus_BaseAddress;
    u32 IsReady;
} XRrt;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XRrt_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XRrt_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XRrt_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XRrt_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
int XRrt_Initialize(XRrt *InstancePtr, u16 DeviceId);
XRrt_Config* XRrt_LookupConfig(u16 DeviceId);
int XRrt_CfgInitialize(XRrt *InstancePtr, XRrt_Config *ConfigPtr);
#else
int XRrt_Initialize(XRrt *InstancePtr, const char* InstanceName);
int XRrt_Release(XRrt *InstancePtr);
#endif

void XRrt_Start(XRrt *InstancePtr);
u32 XRrt_IsDone(XRrt *InstancePtr);
u32 XRrt_IsIdle(XRrt *InstancePtr);
u32 XRrt_IsReady(XRrt *InstancePtr);
void XRrt_EnableAutoRestart(XRrt *InstancePtr);
void XRrt_DisableAutoRestart(XRrt *InstancePtr);
u32 XRrt_Get_return(XRrt *InstancePtr);

void XRrt_Set_xrandx(XRrt *InstancePtr, u32 Data);
u32 XRrt_Get_xrandx(XRrt *InstancePtr);
void XRrt_Set_xrandy(XRrt *InstancePtr, u32 Data);
u32 XRrt_Get_xrandy(XRrt *InstancePtr);
void XRrt_Set_N(XRrt *InstancePtr, u32 Data);
u32 XRrt_Get_N(XRrt *InstancePtr);
void XRrt_Set_Squared_r_n(XRrt *InstancePtr, u32 Data);
u32 XRrt_Get_Squared_r_n(XRrt *InstancePtr);
void XRrt_Set_Squared_R_Robot(XRrt *InstancePtr, u32 Data);
u32 XRrt_Get_Squared_R_Robot(XRrt *InstancePtr);
u32 XRrt_Get_oup_BaseAddress(XRrt *InstancePtr);
u32 XRrt_Get_oup_HighAddress(XRrt *InstancePtr);
u32 XRrt_Get_oup_TotalBytes(XRrt *InstancePtr);
u32 XRrt_Get_oup_BitWidth(XRrt *InstancePtr);
u32 XRrt_Get_oup_Depth(XRrt *InstancePtr);
u32 XRrt_Write_oup_Words(XRrt *InstancePtr, int offset, word_type *data, int length);
u32 XRrt_Read_oup_Words(XRrt *InstancePtr, int offset, word_type *data, int length);
u32 XRrt_Write_oup_Bytes(XRrt *InstancePtr, int offset, char *data, int length);
u32 XRrt_Read_oup_Bytes(XRrt *InstancePtr, int offset, char *data, int length);

void XRrt_InterruptGlobalEnable(XRrt *InstancePtr);
void XRrt_InterruptGlobalDisable(XRrt *InstancePtr);
void XRrt_InterruptEnable(XRrt *InstancePtr, u32 Mask);
void XRrt_InterruptDisable(XRrt *InstancePtr, u32 Mask);
void XRrt_InterruptClear(XRrt *InstancePtr, u32 Mask);
u32 XRrt_InterruptGetEnabled(XRrt *InstancePtr);
u32 XRrt_InterruptGetStatus(XRrt *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
