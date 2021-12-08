// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ==============================================================

/***************************** Include Files *********************************/
#include "xupdate_n.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XUpdate_n_CfgInitialize(XUpdate_n *InstancePtr, XUpdate_n_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Ctrl_bus_BaseAddress = ConfigPtr->Ctrl_bus_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XUpdate_n_Start(XUpdate_n *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XUpdate_n_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XUPDATE_N_CTRL_BUS_ADDR_AP_CTRL) & 0x80;
    XUpdate_n_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XUPDATE_N_CTRL_BUS_ADDR_AP_CTRL, Data | 0x01);
}

u32 XUpdate_n_IsDone(XUpdate_n *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XUpdate_n_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XUPDATE_N_CTRL_BUS_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XUpdate_n_IsIdle(XUpdate_n *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XUpdate_n_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XUPDATE_N_CTRL_BUS_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XUpdate_n_IsReady(XUpdate_n *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XUpdate_n_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XUPDATE_N_CTRL_BUS_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XUpdate_n_EnableAutoRestart(XUpdate_n *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XUpdate_n_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XUPDATE_N_CTRL_BUS_ADDR_AP_CTRL, 0x80);
}

void XUpdate_n_DisableAutoRestart(XUpdate_n *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XUpdate_n_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XUPDATE_N_CTRL_BUS_ADDR_AP_CTRL, 0);
}

void XUpdate_n_Set_num(XUpdate_n *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XUpdate_n_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XUPDATE_N_CTRL_BUS_ADDR_NUM_DATA, Data);
}

u32 XUpdate_n_Get_num(XUpdate_n *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XUpdate_n_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XUPDATE_N_CTRL_BUS_ADDR_NUM_DATA);
    return Data;
}

void XUpdate_n_Set_stable_para_offset(XUpdate_n *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XUpdate_n_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XUPDATE_N_CTRL_BUS_ADDR_STABLE_PARA_OFFSET_DATA, Data);
}

u32 XUpdate_n_Get_stable_para_offset(XUpdate_n *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XUpdate_n_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XUPDATE_N_CTRL_BUS_ADDR_STABLE_PARA_OFFSET_DATA);
    return Data;
}

void XUpdate_n_Set_input00_V(XUpdate_n *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XUpdate_n_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XUPDATE_N_CTRL_BUS_ADDR_INPUT00_V_DATA, Data);
}

u32 XUpdate_n_Get_input00_V(XUpdate_n *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XUpdate_n_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XUPDATE_N_CTRL_BUS_ADDR_INPUT00_V_DATA);
    return Data;
}

void XUpdate_n_Set_input01_V(XUpdate_n *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XUpdate_n_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XUPDATE_N_CTRL_BUS_ADDR_INPUT01_V_DATA, Data);
}

u32 XUpdate_n_Get_input01_V(XUpdate_n *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XUpdate_n_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XUPDATE_N_CTRL_BUS_ADDR_INPUT01_V_DATA);
    return Data;
}

void XUpdate_n_Set_output0_offset(XUpdate_n *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XUpdate_n_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XUPDATE_N_CTRL_BUS_ADDR_OUTPUT0_OFFSET_DATA, Data);
}

u32 XUpdate_n_Get_output0_offset(XUpdate_n *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XUpdate_n_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XUPDATE_N_CTRL_BUS_ADDR_OUTPUT0_OFFSET_DATA);
    return Data;
}

void XUpdate_n_Set_output1_offset(XUpdate_n *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XUpdate_n_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XUPDATE_N_CTRL_BUS_ADDR_OUTPUT1_OFFSET_DATA, Data);
}

u32 XUpdate_n_Get_output1_offset(XUpdate_n *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XUpdate_n_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XUPDATE_N_CTRL_BUS_ADDR_OUTPUT1_OFFSET_DATA);
    return Data;
}

void XUpdate_n_Set_output2_s(XUpdate_n *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XUpdate_n_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XUPDATE_N_CTRL_BUS_ADDR_OUTPUT2_S_DATA, Data);
}

u32 XUpdate_n_Get_output2_s(XUpdate_n *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XUpdate_n_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XUPDATE_N_CTRL_BUS_ADDR_OUTPUT2_S_DATA);
    return Data;
}

void XUpdate_n_Set_output3_s(XUpdate_n *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XUpdate_n_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XUPDATE_N_CTRL_BUS_ADDR_OUTPUT3_S_DATA, Data);
}

u32 XUpdate_n_Get_output3_s(XUpdate_n *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XUpdate_n_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XUPDATE_N_CTRL_BUS_ADDR_OUTPUT3_S_DATA);
    return Data;
}

void XUpdate_n_InterruptGlobalEnable(XUpdate_n *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XUpdate_n_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XUPDATE_N_CTRL_BUS_ADDR_GIE, 1);
}

void XUpdate_n_InterruptGlobalDisable(XUpdate_n *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XUpdate_n_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XUPDATE_N_CTRL_BUS_ADDR_GIE, 0);
}

void XUpdate_n_InterruptEnable(XUpdate_n *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XUpdate_n_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XUPDATE_N_CTRL_BUS_ADDR_IER);
    XUpdate_n_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XUPDATE_N_CTRL_BUS_ADDR_IER, Register | Mask);
}

void XUpdate_n_InterruptDisable(XUpdate_n *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XUpdate_n_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XUPDATE_N_CTRL_BUS_ADDR_IER);
    XUpdate_n_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XUPDATE_N_CTRL_BUS_ADDR_IER, Register & (~Mask));
}

void XUpdate_n_InterruptClear(XUpdate_n *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XUpdate_n_WriteReg(InstancePtr->Ctrl_bus_BaseAddress, XUPDATE_N_CTRL_BUS_ADDR_ISR, Mask);
}

u32 XUpdate_n_InterruptGetEnabled(XUpdate_n *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XUpdate_n_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XUPDATE_N_CTRL_BUS_ADDR_IER);
}

u32 XUpdate_n_InterruptGetStatus(XUpdate_n *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XUpdate_n_ReadReg(InstancePtr->Ctrl_bus_BaseAddress, XUPDATE_N_CTRL_BUS_ADDR_ISR);
}

