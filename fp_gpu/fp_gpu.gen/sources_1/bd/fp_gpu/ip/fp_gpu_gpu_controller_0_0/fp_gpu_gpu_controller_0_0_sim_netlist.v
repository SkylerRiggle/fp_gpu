// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Sun Mar 30 17:28:47 2025
// Host        : Diogenes_Urn running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Dev/masters_project/fp_gpu/fp_gpu.gen/sources_1/bd/fp_gpu/ip/fp_gpu_gpu_controller_0_0/fp_gpu_gpu_controller_0_0_sim_netlist.v
// Design      : fp_gpu_gpu_controller_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "fp_gpu_gpu_controller_0_0,gpu_controller,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "gpu_controller,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module fp_gpu_gpu_controller_0_0
   (clk,
    rst_n,
    new_screen_size,
    new_projection_matrix,
    new_clear_color,
    new_camera_position,
    new_camera_rotation,
    new_model_position,
    new_model_rotation,
    new_model_scale,
    new_mesh_data,
    model_should_render,
    clear_frame,
    screen_size_processed,
    projection_matrix_processed,
    clear_color_processed,
    camera_position_processed,
    camera_rotation_processed,
    model_position_processed,
    model_rotation_processed,
    model_scale_processed,
    mesh_data_processed,
    model_rendered,
    frame_cleared,
    m_axi_hpr_arvalid,
    m_axi_hpr_arready,
    m_axi_hpr_araddr,
    m_axi_hpr_arburst,
    m_axi_hpr_arsize,
    m_axi_hpr_arlen,
    m_axi_hpr_rvalid,
    m_axi_hpr_rready,
    m_axi_hpr_rdata,
    m_axi_hpr_rlast,
    m_axi_hpw_awvalid,
    m_axi_hpw_awready,
    m_axi_hpw_awaddr,
    m_axi_hpw_awburst,
    m_axi_hpw_awsize,
    m_axi_hpw_awlen,
    m_axi_hpw_wvalid,
    m_axi_hpw_wready,
    m_axi_hpw_wdata,
    m_axi_hpw_wstrb,
    m_axi_hpw_wlast,
    m_axi_hpw_bvalid,
    m_axi_hpw_bready);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF m_axi_hpr:m_axi_hpw, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN fp_gpu_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst_n RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst_n;
  output new_screen_size;
  output new_projection_matrix;
  output new_clear_color;
  output new_camera_position;
  output new_camera_rotation;
  output new_model_position;
  output new_model_rotation;
  output new_model_scale;
  output new_mesh_data;
  output model_should_render;
  output clear_frame;
  input screen_size_processed;
  input projection_matrix_processed;
  input clear_color_processed;
  input camera_position_processed;
  input camera_rotation_processed;
  input model_position_processed;
  input model_rotation_processed;
  input model_scale_processed;
  input mesh_data_processed;
  input model_rendered;
  input frame_cleared;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_hpr ARVALID" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi_hpr, DATA_WIDTH 32, PROTOCOL AXI3, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_ONLY, HAS_BURST 1, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 0, HAS_BRESP 0, HAS_RRESP 0, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 16, PHASE 0.0, CLK_DOMAIN fp_gpu_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) output m_axi_hpr_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_hpr ARREADY" *) input m_axi_hpr_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_hpr ARADDR" *) output [31:0]m_axi_hpr_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_hpr ARBURST" *) output [1:0]m_axi_hpr_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_hpr ARSIZE" *) output [2:0]m_axi_hpr_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_hpr ARLEN" *) output [3:0]m_axi_hpr_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_hpr RVALID" *) input m_axi_hpr_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_hpr RREADY" *) output m_axi_hpr_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_hpr RDATA" *) input [31:0]m_axi_hpr_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_hpr RLAST" *) input m_axi_hpr_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_hpw AWVALID" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi_hpw, DATA_WIDTH 32, PROTOCOL AXI3, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE WRITE_ONLY, HAS_BURST 1, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 0, HAS_RRESP 0, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 16, PHASE 0.0, CLK_DOMAIN fp_gpu_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) output m_axi_hpw_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_hpw AWREADY" *) input m_axi_hpw_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_hpw AWADDR" *) output [31:0]m_axi_hpw_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_hpw AWBURST" *) output [1:0]m_axi_hpw_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_hpw AWSIZE" *) output [2:0]m_axi_hpw_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_hpw AWLEN" *) output [3:0]m_axi_hpw_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_hpw WVALID" *) output m_axi_hpw_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_hpw WREADY" *) input m_axi_hpw_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_hpw WDATA" *) output [31:0]m_axi_hpw_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_hpw WSTRB" *) output [3:0]m_axi_hpw_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_hpw WLAST" *) output m_axi_hpw_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_hpw BVALID" *) input m_axi_hpw_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_hpw BREADY" *) output m_axi_hpw_bready;

  wire \<const0> ;

  assign clear_frame = \<const0> ;
  assign m_axi_hpr_araddr[31] = \<const0> ;
  assign m_axi_hpr_araddr[30] = \<const0> ;
  assign m_axi_hpr_araddr[29] = \<const0> ;
  assign m_axi_hpr_araddr[28] = \<const0> ;
  assign m_axi_hpr_araddr[27] = \<const0> ;
  assign m_axi_hpr_araddr[26] = \<const0> ;
  assign m_axi_hpr_araddr[25] = \<const0> ;
  assign m_axi_hpr_araddr[24] = \<const0> ;
  assign m_axi_hpr_araddr[23] = \<const0> ;
  assign m_axi_hpr_araddr[22] = \<const0> ;
  assign m_axi_hpr_araddr[21] = \<const0> ;
  assign m_axi_hpr_araddr[20] = \<const0> ;
  assign m_axi_hpr_araddr[19] = \<const0> ;
  assign m_axi_hpr_araddr[18] = \<const0> ;
  assign m_axi_hpr_araddr[17] = \<const0> ;
  assign m_axi_hpr_araddr[16] = \<const0> ;
  assign m_axi_hpr_araddr[15] = \<const0> ;
  assign m_axi_hpr_araddr[14] = \<const0> ;
  assign m_axi_hpr_araddr[13] = \<const0> ;
  assign m_axi_hpr_araddr[12] = \<const0> ;
  assign m_axi_hpr_araddr[11] = \<const0> ;
  assign m_axi_hpr_araddr[10] = \<const0> ;
  assign m_axi_hpr_araddr[9] = \<const0> ;
  assign m_axi_hpr_araddr[8] = \<const0> ;
  assign m_axi_hpr_araddr[7] = \<const0> ;
  assign m_axi_hpr_araddr[6] = \<const0> ;
  assign m_axi_hpr_araddr[5] = \<const0> ;
  assign m_axi_hpr_araddr[4] = \<const0> ;
  assign m_axi_hpr_araddr[3] = \<const0> ;
  assign m_axi_hpr_araddr[2] = \<const0> ;
  assign m_axi_hpr_araddr[1] = \<const0> ;
  assign m_axi_hpr_araddr[0] = \<const0> ;
  assign m_axi_hpr_arburst[1] = \<const0> ;
  assign m_axi_hpr_arburst[0] = \<const0> ;
  assign m_axi_hpr_arlen[3] = \<const0> ;
  assign m_axi_hpr_arlen[2] = \<const0> ;
  assign m_axi_hpr_arlen[1] = \<const0> ;
  assign m_axi_hpr_arlen[0] = \<const0> ;
  assign m_axi_hpr_arsize[2] = \<const0> ;
  assign m_axi_hpr_arsize[1] = \<const0> ;
  assign m_axi_hpr_arsize[0] = \<const0> ;
  assign m_axi_hpr_arvalid = \<const0> ;
  assign m_axi_hpr_rready = \<const0> ;
  assign m_axi_hpw_awaddr[31] = \<const0> ;
  assign m_axi_hpw_awaddr[30] = \<const0> ;
  assign m_axi_hpw_awaddr[29] = \<const0> ;
  assign m_axi_hpw_awaddr[28] = \<const0> ;
  assign m_axi_hpw_awaddr[27] = \<const0> ;
  assign m_axi_hpw_awaddr[26] = \<const0> ;
  assign m_axi_hpw_awaddr[25] = \<const0> ;
  assign m_axi_hpw_awaddr[24] = \<const0> ;
  assign m_axi_hpw_awaddr[23] = \<const0> ;
  assign m_axi_hpw_awaddr[22] = \<const0> ;
  assign m_axi_hpw_awaddr[21] = \<const0> ;
  assign m_axi_hpw_awaddr[20] = \<const0> ;
  assign m_axi_hpw_awaddr[19] = \<const0> ;
  assign m_axi_hpw_awaddr[18] = \<const0> ;
  assign m_axi_hpw_awaddr[17] = \<const0> ;
  assign m_axi_hpw_awaddr[16] = \<const0> ;
  assign m_axi_hpw_awaddr[15] = \<const0> ;
  assign m_axi_hpw_awaddr[14] = \<const0> ;
  assign m_axi_hpw_awaddr[13] = \<const0> ;
  assign m_axi_hpw_awaddr[12] = \<const0> ;
  assign m_axi_hpw_awaddr[11] = \<const0> ;
  assign m_axi_hpw_awaddr[10] = \<const0> ;
  assign m_axi_hpw_awaddr[9] = \<const0> ;
  assign m_axi_hpw_awaddr[8] = \<const0> ;
  assign m_axi_hpw_awaddr[7] = \<const0> ;
  assign m_axi_hpw_awaddr[6] = \<const0> ;
  assign m_axi_hpw_awaddr[5] = \<const0> ;
  assign m_axi_hpw_awaddr[4] = \<const0> ;
  assign m_axi_hpw_awaddr[3] = \<const0> ;
  assign m_axi_hpw_awaddr[2] = \<const0> ;
  assign m_axi_hpw_awaddr[1] = \<const0> ;
  assign m_axi_hpw_awaddr[0] = \<const0> ;
  assign m_axi_hpw_awburst[1] = \<const0> ;
  assign m_axi_hpw_awburst[0] = \<const0> ;
  assign m_axi_hpw_awlen[3] = \<const0> ;
  assign m_axi_hpw_awlen[2] = \<const0> ;
  assign m_axi_hpw_awlen[1] = \<const0> ;
  assign m_axi_hpw_awlen[0] = \<const0> ;
  assign m_axi_hpw_awsize[2] = \<const0> ;
  assign m_axi_hpw_awsize[1] = \<const0> ;
  assign m_axi_hpw_awsize[0] = \<const0> ;
  assign m_axi_hpw_awvalid = \<const0> ;
  assign m_axi_hpw_bready = \<const0> ;
  assign m_axi_hpw_wdata[31] = \<const0> ;
  assign m_axi_hpw_wdata[30] = \<const0> ;
  assign m_axi_hpw_wdata[29] = \<const0> ;
  assign m_axi_hpw_wdata[28] = \<const0> ;
  assign m_axi_hpw_wdata[27] = \<const0> ;
  assign m_axi_hpw_wdata[26] = \<const0> ;
  assign m_axi_hpw_wdata[25] = \<const0> ;
  assign m_axi_hpw_wdata[24] = \<const0> ;
  assign m_axi_hpw_wdata[23] = \<const0> ;
  assign m_axi_hpw_wdata[22] = \<const0> ;
  assign m_axi_hpw_wdata[21] = \<const0> ;
  assign m_axi_hpw_wdata[20] = \<const0> ;
  assign m_axi_hpw_wdata[19] = \<const0> ;
  assign m_axi_hpw_wdata[18] = \<const0> ;
  assign m_axi_hpw_wdata[17] = \<const0> ;
  assign m_axi_hpw_wdata[16] = \<const0> ;
  assign m_axi_hpw_wdata[15] = \<const0> ;
  assign m_axi_hpw_wdata[14] = \<const0> ;
  assign m_axi_hpw_wdata[13] = \<const0> ;
  assign m_axi_hpw_wdata[12] = \<const0> ;
  assign m_axi_hpw_wdata[11] = \<const0> ;
  assign m_axi_hpw_wdata[10] = \<const0> ;
  assign m_axi_hpw_wdata[9] = \<const0> ;
  assign m_axi_hpw_wdata[8] = \<const0> ;
  assign m_axi_hpw_wdata[7] = \<const0> ;
  assign m_axi_hpw_wdata[6] = \<const0> ;
  assign m_axi_hpw_wdata[5] = \<const0> ;
  assign m_axi_hpw_wdata[4] = \<const0> ;
  assign m_axi_hpw_wdata[3] = \<const0> ;
  assign m_axi_hpw_wdata[2] = \<const0> ;
  assign m_axi_hpw_wdata[1] = \<const0> ;
  assign m_axi_hpw_wdata[0] = \<const0> ;
  assign m_axi_hpw_wlast = \<const0> ;
  assign m_axi_hpw_wstrb[3] = \<const0> ;
  assign m_axi_hpw_wstrb[2] = \<const0> ;
  assign m_axi_hpw_wstrb[1] = \<const0> ;
  assign m_axi_hpw_wstrb[0] = \<const0> ;
  assign m_axi_hpw_wvalid = \<const0> ;
  assign model_should_render = \<const0> ;
  assign new_camera_position = \<const0> ;
  assign new_camera_rotation = \<const0> ;
  assign new_clear_color = \<const0> ;
  assign new_mesh_data = \<const0> ;
  assign new_model_position = \<const0> ;
  assign new_model_rotation = \<const0> ;
  assign new_model_scale = \<const0> ;
  assign new_projection_matrix = \<const0> ;
  assign new_screen_size = \<const0> ;
  GND GND
       (.G(\<const0> ));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
