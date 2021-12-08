# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 138 \
    name num \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_num \
    op interface \
    ports { num { I 30 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 139 \
    name V_m_r_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_V_m_r_read \
    op interface \
    ports { V_m_r_read { I 256 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 140 \
    name i_syn_ex_rr_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_i_syn_ex_rr_read \
    op interface \
    ports { i_syn_ex_rr_read { I 256 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 141 \
    name i_syn_in_rr_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_i_syn_in_rr_read \
    op interface \
    ports { i_syn_in_rr_read { I 256 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 142 \
    name r_ref_r_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_r_ref_r_read \
    op interface \
    ports { r_ref_r_read { I 256 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 143 \
    name input01_V \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_input01_V \
    op interface \
    ports { m_axi_input01_V_AWVALID { O 1 bit } m_axi_input01_V_AWREADY { I 1 bit } m_axi_input01_V_AWADDR { O 32 vector } m_axi_input01_V_AWID { O 1 vector } m_axi_input01_V_AWLEN { O 32 vector } m_axi_input01_V_AWSIZE { O 3 vector } m_axi_input01_V_AWBURST { O 2 vector } m_axi_input01_V_AWLOCK { O 2 vector } m_axi_input01_V_AWCACHE { O 4 vector } m_axi_input01_V_AWPROT { O 3 vector } m_axi_input01_V_AWQOS { O 4 vector } m_axi_input01_V_AWREGION { O 4 vector } m_axi_input01_V_AWUSER { O 1 vector } m_axi_input01_V_WVALID { O 1 bit } m_axi_input01_V_WREADY { I 1 bit } m_axi_input01_V_WDATA { O 1024 vector } m_axi_input01_V_WSTRB { O 128 vector } m_axi_input01_V_WLAST { O 1 bit } m_axi_input01_V_WID { O 1 vector } m_axi_input01_V_WUSER { O 1 vector } m_axi_input01_V_ARVALID { O 1 bit } m_axi_input01_V_ARREADY { I 1 bit } m_axi_input01_V_ARADDR { O 32 vector } m_axi_input01_V_ARID { O 1 vector } m_axi_input01_V_ARLEN { O 32 vector } m_axi_input01_V_ARSIZE { O 3 vector } m_axi_input01_V_ARBURST { O 2 vector } m_axi_input01_V_ARLOCK { O 2 vector } m_axi_input01_V_ARCACHE { O 4 vector } m_axi_input01_V_ARPROT { O 3 vector } m_axi_input01_V_ARQOS { O 4 vector } m_axi_input01_V_ARREGION { O 4 vector } m_axi_input01_V_ARUSER { O 1 vector } m_axi_input01_V_RVALID { I 1 bit } m_axi_input01_V_RREADY { O 1 bit } m_axi_input01_V_RDATA { I 1024 vector } m_axi_input01_V_RLAST { I 1 bit } m_axi_input01_V_RID { I 1 vector } m_axi_input01_V_RUSER { I 1 vector } m_axi_input01_V_RRESP { I 2 vector } m_axi_input01_V_BVALID { I 1 bit } m_axi_input01_V_BREADY { O 1 bit } m_axi_input01_V_BRESP { I 2 vector } m_axi_input01_V_BID { I 1 vector } m_axi_input01_V_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 144 \
    name input01_V_offset \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input01_V_offset \
    op interface \
    ports { input01_V_offset { I 25 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_ce
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_ce] == "cg_default_interface_gen_ce"} {
eval "cg_default_interface_gen_ce { \
    id -4 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_ce \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


