// 0x00 : Control signals
//        bit 0  - ap_start (Read/Write/COH)
//        bit 1  - ap_done (Read/COR)
//        bit 2  - ap_idle (Read)
//        bit 3  - ap_ready (Read/COR)
//        bit 7  - auto_restart (Read/Write)
//        others - reserved
// 0x04 : Global Interrupt Enable Register
//        bit 0  - Global Interrupt Enable (Read/Write)
//        others - reserved
// 0x08 : IP Interrupt Enable Register (Read/Write)
//        bit 0 - enable ap_done interrupt (Read/Write)
//        bit 1 - enable ap_ready interrupt (Read/Write)
//        bit 5 - enable ap_local_deadlock interrupt (Read/Write)
//        others - reserved
// 0x0c : IP Interrupt Status Register (Read/TOW)
//        bit 0 - ap_done (COR/TOW)
//        bit 1 - ap_ready (COR/TOW)
//        bit 5 - ap_local_deadlock (COR/TOW)
//        others - reserved
// 0x10 : Data signal of ap_return
//        bit 0  - ap_return[0] (Read)
//        others - reserved
// 0x18 : Data signal of xrandx
//        bit 31~0 - xrandx[31:0] (Read/Write)
// 0x1c : reserved
// 0x20 : Data signal of xrandy
//        bit 31~0 - xrandy[31:0] (Read/Write)
// 0x24 : reserved
// 0x28 : Data signal of N
//        bit 31~0 - N[31:0] (Read/Write)
// 0x2c : reserved
// 0x30 : Data signal of Squared_r_n
//        bit 31~0 - Squared_r_n[31:0] (Read/Write)
// 0x34 : reserved
// 0x38 : Data signal of Squared_R_Robot
//        bit 31~0 - Squared_R_Robot[31:0] (Read/Write)
// 0x3c : reserved
// 0x40 ~
// 0x5f : Memory 'oup' (5 * 32b)
//        Word n : bit [31:0] - oup[n]
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define CTRL_BUS_ADDR_AP_CTRL              0x00
#define CTRL_BUS_ADDR_GIE                  0x04
#define CTRL_BUS_ADDR_IER                  0x08
#define CTRL_BUS_ADDR_ISR                  0x0c
#define CTRL_BUS_ADDR_AP_RETURN            0x10
#define CTRL_BUS_BITS_AP_RETURN            1
#define CTRL_BUS_ADDR_XRANDX_DATA          0x18
#define CTRL_BUS_BITS_XRANDX_DATA          32
#define CTRL_BUS_ADDR_XRANDY_DATA          0x20
#define CTRL_BUS_BITS_XRANDY_DATA          32
#define CTRL_BUS_ADDR_N_DATA               0x28
#define CTRL_BUS_BITS_N_DATA               32
#define CTRL_BUS_ADDR_SQUARED_R_N_DATA     0x30
#define CTRL_BUS_BITS_SQUARED_R_N_DATA     32
#define CTRL_BUS_ADDR_SQUARED_R_ROBOT_DATA 0x38
#define CTRL_BUS_BITS_SQUARED_R_ROBOT_DATA 32
#define CTRL_BUS_ADDR_OUP_BASE             0x40
#define CTRL_BUS_ADDR_OUP_HIGH             0x5f
#define CTRL_BUS_WIDTH_OUP                 32
#define CTRL_BUS_DEPTH_OUP                 5
