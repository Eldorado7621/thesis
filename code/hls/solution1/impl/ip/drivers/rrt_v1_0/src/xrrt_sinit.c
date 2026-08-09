// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xrrt.h"

extern XRrt_Config XRrt_ConfigTable[];

XRrt_Config *XRrt_LookupConfig(u16 DeviceId) {
	XRrt_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XRRT_NUM_INSTANCES; Index++) {
		if (XRrt_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XRrt_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XRrt_Initialize(XRrt *InstancePtr, u16 DeviceId) {
	XRrt_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XRrt_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XRrt_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

