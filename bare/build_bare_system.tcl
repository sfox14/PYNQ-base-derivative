set overlay_name "bare"
set design_name "system"

# open block design
open_project {./base/base.xpr}
open_bd_design {./base/base.srcs/sources_1/bd/system/system.bd}

# remove audio block
delete_bd_objs [get_bd_nets audio_path_sel_Dout] [get_bd_nets pdm_m_data_i_1] [get_bd_nets audio_direct_0_audio_out] [get_bd_nets audio_direct_0_audio_shutdown] [get_bd_nets audio_direct_0_pdm_clk] [get_bd_intf_nets ps7_0_axi_periph_M07_AXI] [get_bd_cells audio_direct_0]
delete_bd_objs [get_bd_cells audio_path_sel]
delete_bd_objs [get_bd_ports pwm_audio_o]
delete_bd_objs [get_bd_ports pdm_audio_shutdown]
delete_bd_objs [get_bd_ports pdm_m_clk]
delete_bd_objs [get_bd_ports pdm_m_data_i]

# remove switches, leds, and buttons
delete_bd_objs [get_bd_intf_nets rgbled_gpio_GPIO] [get_bd_intf_nets ps7_0_axi_periph_M06_AXI] [get_bd_cells rgbleds_gpio]
delete_bd_objs [get_bd_nets btns_gpio_ip2intc_irpt] [get_bd_intf_nets ps7_0_axi_periph_M08_AXI] [get_bd_intf_nets btns_gpio_GPIO] [get_bd_cells btns_gpio]
delete_bd_objs [get_bd_intf_nets ps7_0_axi_periph_M09_AXI] [get_bd_intf_nets gpio_leds_GPIO] [get_bd_cells leds_gpio]
delete_bd_objs [get_bd_nets swsleds_gpio_ip2intc_irpt] [get_bd_intf_nets ps7_0_axi_periph_M05_AXI] [get_bd_intf_nets swsleds_gpio_GPIO] [get_bd_cells switches_gpio]
delete_bd_objs [get_bd_intf_ports btns_4bits]
delete_bd_objs [get_bd_intf_ports rgbleds_6bits]
delete_bd_objs [get_bd_intf_ports leds_4bits]
delete_bd_objs [get_bd_intf_ports sws_2bits]

# remove all the IOPs
delete_bd_objs [get_bd_nets mb_1_reset_Dout] [get_bd_nets iop_pmoda_intr_ack_Dout] [get_bd_nets iop_pmoda_iop_pmoda_intr_req] [get_bd_intf_nets S00_AXI_2] [get_bd_intf_nets ps7_0_axi_periph_M02_AXI] [get_bd_intf_nets microblaze_0_debug] [get_bd_nets S00_ARESETN_1] [get_bd_cells iop_pmoda]
delete_bd_objs [get_bd_intf_nets S01_AXI_2] [get_bd_nets mb_2_reset_Dout] [get_bd_nets iop_pmodb_intr_ack_1] [get_bd_nets iop_pmodb_iop_pmodb_intr_req] [get_bd_intf_nets iop_pmodb_pmodb_gpio] [get_bd_intf_nets ps7_0_axi_periph_M03_AXI] [get_bd_nets S01_ARESETN_1] [get_bd_intf_nets mdm_1_MBDEBUG_1] [get_bd_cells iop_pmodb]
delete_bd_objs [get_bd_nets mb3_intr_ack_1] [get_bd_nets mdm_1_debug_sys_rst] [get_bd_intf_nets Vaux13_1] [get_bd_intf_nets iop_arduino_arduino_direct_spi] [get_bd_intf_nets iop_arduino_GPIO] [get_bd_nets iop_arduino_mb3_intr_req] [get_bd_intf_nets Vp_Vn_1] [get_bd_intf_nets ps7_0_axi_periph_M04_AXI] [get_bd_intf_nets mdm_1_MBDEBUG_2] [get_bd_intf_nets S02_AXI_1] [get_bd_nets mb_3_reset_Dout] [get_bd_nets S02_ARESETN_1] [get_bd_intf_nets Vaux0_1] [get_bd_intf_nets Vaux1_1] [get_bd_intf_nets Vaux5_1] [get_bd_intf_nets Vaux6_1] [get_bd_intf_nets Vaux8_1] [get_bd_intf_nets Vaux9_1] [get_bd_intf_nets Vaux12_1] [get_bd_intf_nets Vaux15_1] [get_bd_cells iop_arduino]
delete_bd_objs [get_bd_cells mb_iop_arduino_reset]
delete_bd_objs [get_bd_cells mb_iop_arduino_intr_ack]
delete_bd_objs [get_bd_nets slice_arduino_direct_iic_scl_i] [get_bd_nets slice_arduino_direct_iic_scl_t] [get_bd_nets slice_arduino_direct_iic_sda_i] [get_bd_nets slice_arduino_direct_iic_sda_t] [get_bd_intf_nets iop_arduino_direct_iic] [get_bd_cells slice_arduino_direct_iic]
delete_bd_objs [get_bd_nets slice_arduino_gpio_gpio_i] [get_bd_nets slice_arduino_gpio_gpio_t] [get_bd_intf_nets iop_arduino_arduino_gpio] [get_bd_cells slice_arduino_gpio]
delete_bd_objs [get_bd_intf_ports arduino_direct_iic]
delete_bd_objs [get_bd_intf_ports arduino_gpio]
delete_bd_objs [get_bd_intf_ports arduino_direct_spi]
delete_bd_objs [get_bd_intf_ports ck_gpio]
delete_bd_objs [get_bd_intf_ports pmodb_gpio]
delete_bd_objs [get_bd_nets slice_pmoda_gpio_gpio_i] [get_bd_nets slice_pmoda_gpio_gpio_t] [get_bd_intf_nets iop_pmoda_pmoda_gpio] [get_bd_cells slice_pmoda_gpio]
delete_bd_objs [get_bd_intf_ports pmoda_gpio]
delete_bd_objs [get_bd_cells mb_iop_pmoda_reset]
delete_bd_objs [get_bd_cells mb_iop_pmoda_intr_ack]
delete_bd_objs [get_bd_cells mb_iop_pmodb_reset]
delete_bd_objs [get_bd_nets ps7_0_GPIO_O] [get_bd_cells mb_iop_pmodb_intr_ack]
delete_bd_objs [get_bd_cells mdm_1]
delete_bd_objs [get_bd_intf_ports Vaux0]
delete_bd_objs [get_bd_intf_ports Vaux1]
delete_bd_objs [get_bd_intf_ports Vaux5]
delete_bd_objs [get_bd_intf_ports Vaux6]
delete_bd_objs [get_bd_intf_ports Vaux8]
delete_bd_objs [get_bd_intf_ports Vaux9]
delete_bd_objs [get_bd_intf_ports Vaux12]
delete_bd_objs [get_bd_intf_ports Vaux13]
delete_bd_objs [get_bd_intf_ports Vaux15]
delete_bd_objs [get_bd_intf_ports Vp_Vn]

# remove trace analyzers
delete_bd_objs [get_bd_intf_nets S01_AXI_1] [get_bd_intf_nets ps7_0_axi_periph_1_M02_AXI] [get_bd_intf_nets ps7_0_axi_periph_1_M03_AXI] [get_bd_nets concat_arduino_dout] [get_bd_nets trace_analyzer_arduino_s2mm_introut] [get_bd_cells trace_analyzer_arduino]
delete_bd_objs [get_bd_intf_nets axi_dma_0_M_AXI_S2MM] [get_bd_intf_nets ps7_0_axi_periph_1_M00_AXI] [get_bd_intf_nets ps7_0_axi_periph_1_M01_AXI] [get_bd_nets concat_pmods_dout] [get_bd_nets trace_analyzer_pmoda_s2mm_introut] [get_bd_nets logic_1_dout] [get_bd_cells trace_analyzer_pmoda]
delete_bd_objs [get_bd_nets constant_10bit_0_dout] [get_bd_cells concat_arduino]
delete_bd_objs [get_bd_cells constant_10bit_0]
delete_bd_objs [get_bd_nets constant_8bit_0_dout] [get_bd_cells concat_pmoda]
delete_bd_objs [get_bd_cells constant_8bit_0]
delete_bd_objs [get_bd_cells logic_1]

# adjust memory and AXI interfaces
delete_bd_objs [get_bd_intf_nets axi_interconnect_0_M00_AXI] [get_bd_cells axi_interconnect_0]
startgroup
set_property -dict [list CONFIG.PCW_USE_S_AXI_GP0 {0}] [get_bd_cells ps7_0]
endgroup
delete_bd_objs [get_bd_intf_nets ps7_0_M_AXI_GP1] [get_bd_cells ps7_0_axi_periph_1]
disconnect_bd_net /ps7_0_FCLK_CLK3 [get_bd_pins ps7_0/M_AXI_GP1_ACLK]
startgroup
set_property -dict [list CONFIG.PCW_USE_M_AXI_GP1 {0}] [get_bd_cells ps7_0]
endgroup
delete_bd_objs [get_bd_nets rst_ps7_0_fclk3_interconnect_aresetn] [get_bd_nets rst_ps7_0_fclk3_peripheral_aresetn] [get_bd_intf_nets axi_mem_intercon_M00_AXI1] [get_bd_cells axi_mem_intercon]
disconnect_bd_net /ps7_0_FCLK_CLK3 [get_bd_pins ps7_0/S_AXI_HP2_ACLK]
startgroup
set_property -dict [list CONFIG.PCW_USE_S_AXI_HP2 {0}] [get_bd_cells ps7_0]
endgroup
startgroup
set_property -dict [list CONFIG.NUM_MI {2}] [get_bd_cells ps7_0_axi_periph]
endgroup

# add reset block for FCLK2
startgroup
create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 proc_sys_reset_0
endgroup
set_property name rst_ps7_0_fclk2 [get_bd_cells proc_sys_reset_0]
connect_bd_net [get_bd_pins ps7_0/FCLK_CLK2] [get_bd_pins rst_ps7_0_fclk2/slowest_sync_clk]
connect_bd_net [get_bd_pins rst_ps7_0_fclk2/ext_reset_in] [get_bd_pins ps7_0/FCLK_RESET0_N]

# fix interrupts
delete_bd_objs [get_bd_nets iop_interrupts_dout] [get_bd_cells iop_interrupts]
delete_bd_objs [get_bd_nets video_dout] [get_bd_nets concat_interrupts_dout] [get_bd_cells concat_interrupts]
connect_bd_net [get_bd_pins video/video_irq] [get_bd_pins system_interrupts/intr]

# remove hdmi pipeline
delete_bd_objs [get_bd_intf_nets video_TMDS1] [get_bd_nets rst_ps7_0_fclk1_interconnect_aresetn] [get_bd_nets rst_ps7_0_fclk1_peripheral_aresetn] [get_bd_nets video_video_irq] [get_bd_intf_nets dvi2rgb_0_DDC] [get_bd_intf_nets ps7_0_axi_periph_M01_AXI] [get_bd_intf_nets hdmi_in_1] [get_bd_nets axi_gpio_video_gpio_io_o] [get_bd_nets hdmi_out_hpd_video_gpio_io_o] [get_bd_intf_nets axi_mem_intercon_M00_AXI] [get_bd_cells video]
delete_bd_objs [get_bd_intf_ports hdmi_in]
delete_bd_objs [get_bd_intf_ports hdmi_in_ddc]
delete_bd_objs [get_bd_intf_ports hdmi_out]
delete_bd_objs [get_bd_ports hdmi_in_hpd]
delete_bd_objs [get_bd_ports hdmi_out_hpd]
delete_bd_objs [get_bd_intf_nets ps7_0_IIC_0] [get_bd_intf_ports hdmi_out_ddc]
startgroup
set_property -dict [list CONFIG.NUM_MI {1}] [get_bd_cells ps7_0_axi_periph]
endgroup
disconnect_bd_net /ps7_0_FCLK_CLK1 [get_bd_pins ps7_0/S_AXI_HP0_ACLK]
startgroup
set_property -dict [list CONFIG.PCW_USE_S_AXI_HP0 {0}] [get_bd_cells ps7_0]
endgroup

# remove interrupts and adjust the memory interfaces
delete_bd_objs [get_bd_intf_nets ps7_0_axi_periph_M00_AXI] [get_bd_nets system_interrupts_irq] [get_bd_cells system_interrupts]
delete_bd_objs [get_bd_nets rst_ps7_0_fclk0_interconnect_aresetn] [get_bd_nets rst_ps7_0_fclk0_peripheral_aresetn] [get_bd_intf_nets ps7_0_M_AXI_GP0] [get_bd_cells ps7_0_axi_periph]
disconnect_bd_net /ps7_0_FCLK_CLK0 [get_bd_pins ps7_0/M_AXI_GP0_ACLK]
startgroup
set_property -dict [list CONFIG.PCW_USE_M_AXI_GP0 {0}] [get_bd_cells ps7_0]
endgroup
startgroup
create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_0
endgroup
set_property name constant0 [get_bd_cells xlconstant_0]
connect_bd_net [get_bd_pins constant0/dout] [get_bd_pins xlconcat_0/In0]
startgroup
set_property -dict [list CONFIG.CONST_VAL {0}] [get_bd_cells constant0]
endgroup

# write new tcl file
validate_bd_design
write_bd_tcl -force ${overlay_name}.tcl
