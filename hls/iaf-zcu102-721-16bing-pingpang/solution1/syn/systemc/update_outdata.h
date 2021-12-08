// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _update_outdata_HH_
#define _update_outdata_HH_

#include "systemc.h"
#include "AESL_pkg.h"


namespace ap_rtl {

struct update_outdata : public sc_module {
    // Port declarations 61
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_logic > m_axi_input01_V_AWVALID;
    sc_in< sc_logic > m_axi_input01_V_AWREADY;
    sc_out< sc_lv<32> > m_axi_input01_V_AWADDR;
    sc_out< sc_lv<1> > m_axi_input01_V_AWID;
    sc_out< sc_lv<32> > m_axi_input01_V_AWLEN;
    sc_out< sc_lv<3> > m_axi_input01_V_AWSIZE;
    sc_out< sc_lv<2> > m_axi_input01_V_AWBURST;
    sc_out< sc_lv<2> > m_axi_input01_V_AWLOCK;
    sc_out< sc_lv<4> > m_axi_input01_V_AWCACHE;
    sc_out< sc_lv<3> > m_axi_input01_V_AWPROT;
    sc_out< sc_lv<4> > m_axi_input01_V_AWQOS;
    sc_out< sc_lv<4> > m_axi_input01_V_AWREGION;
    sc_out< sc_lv<1> > m_axi_input01_V_AWUSER;
    sc_out< sc_logic > m_axi_input01_V_WVALID;
    sc_in< sc_logic > m_axi_input01_V_WREADY;
    sc_out< sc_lv<1024> > m_axi_input01_V_WDATA;
    sc_out< sc_lv<128> > m_axi_input01_V_WSTRB;
    sc_out< sc_logic > m_axi_input01_V_WLAST;
    sc_out< sc_lv<1> > m_axi_input01_V_WID;
    sc_out< sc_lv<1> > m_axi_input01_V_WUSER;
    sc_out< sc_logic > m_axi_input01_V_ARVALID;
    sc_in< sc_logic > m_axi_input01_V_ARREADY;
    sc_out< sc_lv<32> > m_axi_input01_V_ARADDR;
    sc_out< sc_lv<1> > m_axi_input01_V_ARID;
    sc_out< sc_lv<32> > m_axi_input01_V_ARLEN;
    sc_out< sc_lv<3> > m_axi_input01_V_ARSIZE;
    sc_out< sc_lv<2> > m_axi_input01_V_ARBURST;
    sc_out< sc_lv<2> > m_axi_input01_V_ARLOCK;
    sc_out< sc_lv<4> > m_axi_input01_V_ARCACHE;
    sc_out< sc_lv<3> > m_axi_input01_V_ARPROT;
    sc_out< sc_lv<4> > m_axi_input01_V_ARQOS;
    sc_out< sc_lv<4> > m_axi_input01_V_ARREGION;
    sc_out< sc_lv<1> > m_axi_input01_V_ARUSER;
    sc_in< sc_logic > m_axi_input01_V_RVALID;
    sc_out< sc_logic > m_axi_input01_V_RREADY;
    sc_in< sc_lv<1024> > m_axi_input01_V_RDATA;
    sc_in< sc_logic > m_axi_input01_V_RLAST;
    sc_in< sc_lv<1> > m_axi_input01_V_RID;
    sc_in< sc_lv<1> > m_axi_input01_V_RUSER;
    sc_in< sc_lv<2> > m_axi_input01_V_RRESP;
    sc_in< sc_logic > m_axi_input01_V_BVALID;
    sc_out< sc_logic > m_axi_input01_V_BREADY;
    sc_in< sc_lv<2> > m_axi_input01_V_BRESP;
    sc_in< sc_lv<1> > m_axi_input01_V_BID;
    sc_in< sc_lv<1> > m_axi_input01_V_BUSER;
    sc_in< sc_logic > ap_ce;
    sc_in< sc_lv<30> > num;
    sc_in< sc_lv<256> > V_m_r_read;
    sc_in< sc_lv<256> > i_syn_ex_rr_read;
    sc_in< sc_lv<256> > i_syn_in_rr_read;
    sc_in< sc_lv<256> > r_ref_r_read;
    sc_in< sc_lv<25> > input01_V_offset;
    sc_out< sc_logic > input01_V_blk_n_AW;
    sc_out< sc_logic > input01_V_blk_n_W;
    sc_out< sc_logic > input01_V_blk_n_B;


    // Module declarations
    update_outdata(sc_module_name name);
    SC_HAS_PROCESS(update_outdata);

    ~update_outdata();

    sc_trace_file* mVcdFile;

    sc_signal< sc_lv<1> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage0;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter0;
    sc_signal< bool > ap_block_pp0_stage0;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter1;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter2;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter3;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter4;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter5;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter6;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter7;
    sc_signal< sc_logic > ap_idle_pp0;
    sc_signal< bool > ap_block_state1_pp0_stage0_iter0;
    sc_signal< bool > ap_block_state2_pp0_stage0_iter1;
    sc_signal< sc_logic > ap_sig_ioackin_m_axi_input01_V_AWREADY;
    sc_signal< bool > ap_block_state3_pp0_stage0_iter2;
    sc_signal< sc_logic > ap_sig_ioackin_m_axi_input01_V_WREADY;
    sc_signal< bool > ap_block_state4_pp0_stage0_iter3;
    sc_signal< bool > ap_block_state5_pp0_stage0_iter4;
    sc_signal< bool > ap_block_state6_pp0_stage0_iter5;
    sc_signal< bool > ap_block_state7_pp0_stage0_iter6;
    sc_signal< bool > ap_block_state8_pp0_stage0_iter7;
    sc_signal< bool > ap_block_pp0_stage0_11001;
    sc_signal< sc_lv<32> > tmp_fu_130_p1;
    sc_signal< sc_lv<32> > tmp_reg_491;
    sc_signal< sc_lv<32> > tmp_reg_491_pp0_iter1_reg;
    sc_signal< sc_lv<32> > tmp_1_fu_134_p1;
    sc_signal< sc_lv<32> > tmp_1_reg_496;
    sc_signal< sc_lv<32> > tmp_1_reg_496_pp0_iter1_reg;
    sc_signal< sc_lv<32> > tmp_2_fu_138_p1;
    sc_signal< sc_lv<32> > tmp_2_reg_501;
    sc_signal< sc_lv<32> > tmp_2_reg_501_pp0_iter1_reg;
    sc_signal< sc_lv<32> > tmp_3_fu_142_p1;
    sc_signal< sc_lv<32> > tmp_3_reg_506;
    sc_signal< sc_lv<32> > tmp_3_reg_506_pp0_iter1_reg;
    sc_signal< sc_lv<26> > sum_fu_158_p2;
    sc_signal< sc_lv<26> > sum_reg_511;
    sc_signal< sc_lv<32> > tmp_6_reg_516;
    sc_signal< sc_lv<32> > tmp_6_reg_516_pp0_iter1_reg;
    sc_signal< sc_lv<32> > tmp_7_reg_521;
    sc_signal< sc_lv<32> > tmp_7_reg_521_pp0_iter1_reg;
    sc_signal< sc_lv<32> > tmp_8_reg_526;
    sc_signal< sc_lv<32> > tmp_8_reg_526_pp0_iter1_reg;
    sc_signal< sc_lv<32> > tmp_9_reg_531;
    sc_signal< sc_lv<32> > tmp_9_reg_531_pp0_iter1_reg;
    sc_signal< sc_lv<32> > tmp_s_reg_536;
    sc_signal< sc_lv<32> > tmp_s_reg_536_pp0_iter1_reg;
    sc_signal< sc_lv<32> > tmp_5_reg_541;
    sc_signal< sc_lv<32> > tmp_5_reg_541_pp0_iter1_reg;
    sc_signal< sc_lv<32> > tmp_10_reg_546;
    sc_signal< sc_lv<32> > tmp_10_reg_546_pp0_iter1_reg;
    sc_signal< sc_lv<32> > tmp_11_reg_551;
    sc_signal< sc_lv<32> > tmp_11_reg_551_pp0_iter1_reg;
    sc_signal< sc_lv<32> > tmp_12_reg_556;
    sc_signal< sc_lv<32> > tmp_12_reg_556_pp0_iter1_reg;
    sc_signal< sc_lv<32> > tmp_13_reg_561;
    sc_signal< sc_lv<32> > tmp_13_reg_561_pp0_iter1_reg;
    sc_signal< sc_lv<32> > tmp_14_reg_566;
    sc_signal< sc_lv<32> > tmp_14_reg_566_pp0_iter1_reg;
    sc_signal< sc_lv<32> > tmp_15_reg_571;
    sc_signal< sc_lv<32> > tmp_15_reg_571_pp0_iter1_reg;
    sc_signal< sc_lv<32> > tmp_16_reg_576;
    sc_signal< sc_lv<32> > tmp_16_reg_576_pp0_iter1_reg;
    sc_signal< sc_lv<32> > tmp_17_reg_581;
    sc_signal< sc_lv<32> > tmp_17_reg_581_pp0_iter1_reg;
    sc_signal< sc_lv<32> > tmp_18_reg_586;
    sc_signal< sc_lv<32> > tmp_18_reg_586_pp0_iter1_reg;
    sc_signal< sc_lv<32> > tmp_19_reg_591;
    sc_signal< sc_lv<32> > tmp_19_reg_591_pp0_iter1_reg;
    sc_signal< sc_lv<32> > tmp_20_reg_596;
    sc_signal< sc_lv<32> > tmp_20_reg_596_pp0_iter1_reg;
    sc_signal< sc_lv<32> > tmp_21_reg_601;
    sc_signal< sc_lv<32> > tmp_21_reg_601_pp0_iter1_reg;
    sc_signal< sc_lv<32> > tmp_22_reg_606;
    sc_signal< sc_lv<32> > tmp_22_reg_606_pp0_iter1_reg;
    sc_signal< sc_lv<32> > tmp_23_reg_611;
    sc_signal< sc_lv<32> > tmp_23_reg_611_pp0_iter1_reg;
    sc_signal< sc_lv<32> > tmp_24_reg_616;
    sc_signal< sc_lv<32> > tmp_24_reg_616_pp0_iter1_reg;
    sc_signal< sc_lv<32> > tmp_25_reg_621;
    sc_signal< sc_lv<32> > tmp_25_reg_621_pp0_iter1_reg;
    sc_signal< sc_lv<32> > tmp_26_reg_626;
    sc_signal< sc_lv<32> > tmp_26_reg_626_pp0_iter1_reg;
    sc_signal< sc_lv<32> > tmp_27_reg_631;
    sc_signal< sc_lv<32> > tmp_27_reg_631_pp0_iter1_reg;
    sc_signal< sc_lv<32> > tmp_28_reg_636;
    sc_signal< sc_lv<32> > tmp_28_reg_636_pp0_iter1_reg;
    sc_signal< sc_lv<32> > tmp_29_reg_641;
    sc_signal< sc_lv<32> > tmp_29_reg_641_pp0_iter1_reg;
    sc_signal< sc_lv<32> > tmp_30_reg_646;
    sc_signal< sc_lv<32> > tmp_30_reg_646_pp0_iter1_reg;
    sc_signal< sc_lv<32> > tmp_31_reg_651;
    sc_signal< sc_lv<32> > tmp_31_reg_651_pp0_iter1_reg;
    sc_signal< bool > ap_block_pp0_stage0_subdone;
    sc_signal< sc_lv<64> > sum_cast_fu_444_p1;
    sc_signal< sc_logic > ap_reg_ioackin_m_axi_input01_V_AWREADY;
    sc_signal< bool > ap_block_pp0_stage0_01001;
    sc_signal< sc_logic > ap_reg_ioackin_m_axi_input01_V_WREADY;
    sc_signal< sc_lv<18> > tmp_4_fu_146_p1;
    sc_signal< sc_lv<26> > sext_cast_fu_154_p1;
    sc_signal< sc_lv<26> > tmp_5_cast_fu_150_p1;
    sc_signal< sc_lv<1> > ap_NS_fsm;
    sc_signal< sc_logic > ap_idle_pp0_0to6;
    sc_signal< sc_logic > ap_reset_idle_pp0;
    sc_signal< sc_logic > ap_enable_pp0;
    sc_signal< bool > ap_condition_575;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<1> ap_ST_fsm_pp0_stage0;
    static const bool ap_const_boolean_1;
    static const sc_lv<32> ap_const_lv32_0;
    static const bool ap_const_boolean_0;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<3> ap_const_lv3_0;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<128> ap_const_lv128_lc_2;
    static const sc_lv<32> ap_const_lv32_20;
    static const sc_lv<32> ap_const_lv32_3F;
    static const sc_lv<32> ap_const_lv32_40;
    static const sc_lv<32> ap_const_lv32_5F;
    static const sc_lv<32> ap_const_lv32_60;
    static const sc_lv<32> ap_const_lv32_7F;
    static const sc_lv<32> ap_const_lv32_80;
    static const sc_lv<32> ap_const_lv32_9F;
    static const sc_lv<32> ap_const_lv32_A0;
    static const sc_lv<32> ap_const_lv32_BF;
    static const sc_lv<32> ap_const_lv32_C0;
    static const sc_lv<32> ap_const_lv32_DF;
    static const sc_lv<32> ap_const_lv32_E0;
    static const sc_lv<32> ap_const_lv32_FF;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_pp0_stage0();
    void thread_ap_block_pp0_stage0();
    void thread_ap_block_pp0_stage0_01001();
    void thread_ap_block_pp0_stage0_11001();
    void thread_ap_block_pp0_stage0_subdone();
    void thread_ap_block_state1_pp0_stage0_iter0();
    void thread_ap_block_state2_pp0_stage0_iter1();
    void thread_ap_block_state3_pp0_stage0_iter2();
    void thread_ap_block_state4_pp0_stage0_iter3();
    void thread_ap_block_state5_pp0_stage0_iter4();
    void thread_ap_block_state6_pp0_stage0_iter5();
    void thread_ap_block_state7_pp0_stage0_iter6();
    void thread_ap_block_state8_pp0_stage0_iter7();
    void thread_ap_condition_575();
    void thread_ap_done();
    void thread_ap_enable_pp0();
    void thread_ap_enable_reg_pp0_iter0();
    void thread_ap_idle();
    void thread_ap_idle_pp0();
    void thread_ap_idle_pp0_0to6();
    void thread_ap_ready();
    void thread_ap_reset_idle_pp0();
    void thread_ap_sig_ioackin_m_axi_input01_V_AWREADY();
    void thread_ap_sig_ioackin_m_axi_input01_V_WREADY();
    void thread_input01_V_blk_n_AW();
    void thread_input01_V_blk_n_B();
    void thread_input01_V_blk_n_W();
    void thread_m_axi_input01_V_ARADDR();
    void thread_m_axi_input01_V_ARBURST();
    void thread_m_axi_input01_V_ARCACHE();
    void thread_m_axi_input01_V_ARID();
    void thread_m_axi_input01_V_ARLEN();
    void thread_m_axi_input01_V_ARLOCK();
    void thread_m_axi_input01_V_ARPROT();
    void thread_m_axi_input01_V_ARQOS();
    void thread_m_axi_input01_V_ARREGION();
    void thread_m_axi_input01_V_ARSIZE();
    void thread_m_axi_input01_V_ARUSER();
    void thread_m_axi_input01_V_ARVALID();
    void thread_m_axi_input01_V_AWADDR();
    void thread_m_axi_input01_V_AWBURST();
    void thread_m_axi_input01_V_AWCACHE();
    void thread_m_axi_input01_V_AWID();
    void thread_m_axi_input01_V_AWLEN();
    void thread_m_axi_input01_V_AWLOCK();
    void thread_m_axi_input01_V_AWPROT();
    void thread_m_axi_input01_V_AWQOS();
    void thread_m_axi_input01_V_AWREGION();
    void thread_m_axi_input01_V_AWSIZE();
    void thread_m_axi_input01_V_AWUSER();
    void thread_m_axi_input01_V_AWVALID();
    void thread_m_axi_input01_V_BREADY();
    void thread_m_axi_input01_V_RREADY();
    void thread_m_axi_input01_V_WDATA();
    void thread_m_axi_input01_V_WID();
    void thread_m_axi_input01_V_WLAST();
    void thread_m_axi_input01_V_WSTRB();
    void thread_m_axi_input01_V_WUSER();
    void thread_m_axi_input01_V_WVALID();
    void thread_sext_cast_fu_154_p1();
    void thread_sum_cast_fu_444_p1();
    void thread_sum_fu_158_p2();
    void thread_tmp_1_fu_134_p1();
    void thread_tmp_2_fu_138_p1();
    void thread_tmp_3_fu_142_p1();
    void thread_tmp_4_fu_146_p1();
    void thread_tmp_5_cast_fu_150_p1();
    void thread_tmp_fu_130_p1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
