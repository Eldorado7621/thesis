// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xrrt.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XRrt_CfgInitialize(XRrt *InstancePtr, XRrt_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Ctrl_bus_BaseAddress = ConfigPtr->Ctrl_bus_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XRrt_Start(XRrt *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XRrt_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XRRT_CTRL_BUS_ADDR_AP_CTRL) & 0x80;
    XRrt_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XRRT_CTRL_BUS_ADDR_AP_CTRL, Data | 0x01);
}

u32 XRrt_IsDone(XRrt *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XRrt_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XRRT_CTRL_BUS_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XRrt_IsIdle(XRrt *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XRrt_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XRRT_CTRL_BUS_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XRrt_IsReady(XRrt *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XRrt_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XRRT_CTRL_BUS_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XRrt_EnableAutoRestart(XRrt *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XRrt_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XRRT_CTRL_BUS_ADDR_AP_CTRL, 0x80);
}

void XRrt_DisableAutoRestart(XRrt *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XRrt_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XRRT_CTRL_BUS_ADDR_AP_CTRL, 0);
}

u32 XRrt_Get_return(XRrt *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XRrt_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XRRT_CTRL_BUS_ADDR_AP_RETURN);
    return Data;
}
void XRrt_Set_xrandx(XRrt *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XRrt_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XRRT_CTRL_BUS_ADDR_XRANDX_DATA, Data);
}

u32 XRrt_Get_xrandx(XRrt *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XRrt_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XRRT_CTRL_BUS_ADDR_XRANDX_DATA);
    return Data;
}

void XRrt_Set_xrandy(XRrt *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XRrt_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XRRT_CTRL_BUS_ADDR_XRANDY_DATA, Data);
}

u32 XRrt_Get_xrandy(XRrt *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XRrt_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XRRT_CTRL_BUS_ADDR_XRANDY_DATA);
    return Data;
}

void XRrt_Set_N(XRrt *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XRrt_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XRRT_CTRL_BUS_ADDR_N_DATA, Data);
}

u32 XRrt_Get_N(XRrt *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XRrt_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XRRT_CTRL_BUS_ADDR_N_DATA);
    return Data;
}

void XRrt_Set_Squared_r_n(XRrt *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XRrt_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XRRT_CTRL_BUS_ADDR_SQUARED_R_N_DATA, Data);
}

u32 XRrt_Get_Squared_r_n(XRrt *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XRrt_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XRRT_CTRL_BUS_ADDR_SQUARED_R_N_DATA);
    return Data;
}

void XRrt_Set_Squared_R_Robot(XRrt *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XRrt_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XRRT_CTRL_BUS_ADDR_SQUARED_R_ROBOT_DATA, Data);
}

u32 XRrt_Get_Squared_R_Robot(XRrt *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XRrt_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XRRT_CTRL_BUS_ADDR_SQUARED_R_ROBOT_DATA);
    return Data;
}

u32 XRrt_Get_oup_BaseAddress(XRrt *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Ctrl_bus_BaseAddress + XRRT_CTRL_BUS_ADDR_OUP_BASE);
}

u32 XRrt_Get_oup_HighAddress(XRrt *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Ctrl_bus_BaseAddress + XRRT_CTRL_BUS_ADDR_OUP_HIGH);
}

u32 XRrt_Get_oup_TotalBytes(XRrt *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XRRT_CTRL_BUS_ADDR_OUP_HIGH - XRRT_CTRL_BUS_ADDR_OUP_BASE + 1);
}

u32 XRrt_Get_oup_BitWidth(XRrt *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XRRT_CTRL_BUS_WIDTH_OUP;
}

u32 XRrt_Get_oup_Depth(XRrt *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XRRT_CTRL_BUS_DEPTH_OUP;
}

u32 XRrt_Write_oup_Words(XRrt *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XRRT_CTRL_BUS_ADDR_OUP_HIGH - XRRT_CTRL_BUS_ADDR_OUP_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Ctrl_bus_BaseAddress + XRRT_CTRL_BUS_ADDR_OUP_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XRrt_Read_oup_Words(XRrt *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XRRT_CTRL_BUS_ADDR_OUP_HIGH - XRRT_CTRL_BUS_ADDR_OUP_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Ctrl_bus_BaseAddress + XRRT_CTRL_BUS_ADDR_OUP_BASE + (offset + i)*4);
    }
    return length;
}

u32 XRrt_Write_oup_Bytes(XRrt *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XRRT_CTRL_BUS_ADDR_OUP_HIGH - XRRT_CTRL_BUS_ADDR_OUP_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Ctrl_bus_BaseAddress + XRRT_CTRL_BUS_ADDR_OUP_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XRrt_Read_oup_Bytes(XRrt *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XRRT_CTRL_BUS_ADDR_OUP_HIGH - XRRT_CTRL_BUS_ADDR_OUP_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Ctrl_bus_BaseAddress + XRRT_CTRL_BUS_ADDR_OUP_BASE + offset + i);
    }
    return length;
}

void XRrt_InterruptGlobalEnable(XRrt *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XRrt_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XRRT_CTRL_BUS_ADDR_GIE, 1);
}

void XRrt_InterruptGlobalDisable(XRrt *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XRrt_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XRRT_CTRL_BUS_ADDR_GIE, 0);
}

void XRrt_InterruptEnable(XRrt *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XRrt_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XRRT_CTRL_BUS_ADDR_IER);
    XRrt_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XRRT_CTRL_BUS_ADDR_IER, Register | Mask);
}

void XRrt_InterruptDisable(XRrt *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XRrt_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XRRT_CTRL_BUS_ADDR_IER);
    XRrt_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XRRT_CTRL_BUS_ADDR_IER, Register & (~Mask));
}

void XRrt_InterruptClear(XRrt *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XRrt_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XRRT_CTRL_BUS_ADDR_ISR, Mask);
}

u32 XRrt_InterruptGetEnabled(XRrt *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XRrt_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XRRT_CTRL_BUS_ADDR_IER);
}

u32 XRrt_InterruptGetStatus(XRrt *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XRrt_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XRRT_CTRL_BUS_ADDR_ISR);
}

