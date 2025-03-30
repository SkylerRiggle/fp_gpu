// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Sun Mar 30 17:29:18 2025
// Host        : Diogenes_Urn running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Dev/masters_project/fp_gpu/fp_gpu.gen/sources_1/bd/fp_gpu/ip/fp_gpu_axi_interconnect_1_0/fp_gpu_axi_interconnect_1_0_sim_netlist.v
// Design      : fp_gpu_axi_interconnect_1_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "fp_gpu_axi_interconnect_1_0,axi_interconnect,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "axi_interconnect,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module fp_gpu_axi_interconnect_1_0
   (s_axi_hpr_arvalid,
    s_axi_hpr_arready,
    s_axi_hpr_araddr,
    s_axi_hpr_arburst,
    s_axi_hpr_arsize,
    s_axi_hpr_arlen,
    s_axi_hpr_rvalid,
    s_axi_hpr_rready,
    s_axi_hpr_rdata,
    s_axi_hpr_rlast,
    s_axi_hpw_awvalid,
    s_axi_hpw_awready,
    s_axi_hpw_awaddr,
    s_axi_hpw_awburst,
    s_axi_hpw_awsize,
    s_axi_hpw_awlen,
    s_axi_hpw_wvalid,
    s_axi_hpw_wready,
    s_axi_hpw_wdata,
    s_axi_hpw_wstrb,
    s_axi_hpw_wlast,
    s_axi_hpw_bvalid,
    s_axi_hpw_bready,
    m_axi_hp_arvalid,
    m_axi_hp_arready,
    m_axi_hp_araddr,
    m_axi_hp_arburst,
    m_axi_hp_arsize,
    m_axi_hp_arlen,
    m_axi_hp_rvalid,
    m_axi_hp_rready,
    m_axi_hp_rdata,
    m_axi_hp_rlast,
    m_axi_hp_awvalid,
    m_axi_hp_awready,
    m_axi_hp_awaddr,
    m_axi_hp_awburst,
    m_axi_hp_awsize,
    m_axi_hp_awlen,
    m_axi_hp_wvalid,
    m_axi_hp_wready,
    m_axi_hp_wdata,
    m_axi_hp_wstrb,
    m_axi_hp_wlast,
    m_axi_hp_bvalid,
    m_axi_hp_bready);
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_hpr ARVALID" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_hpr, DATA_WIDTH 32, PROTOCOL AXI3, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_ONLY, HAS_BURST 1, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 0, HAS_BRESP 0, HAS_RRESP 0, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 16, PHASE 0.0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input s_axi_hpr_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_hpr ARREADY" *) output s_axi_hpr_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_hpr ARADDR" *) input [31:0]s_axi_hpr_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_hpr ARBURST" *) input [1:0]s_axi_hpr_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_hpr ARSIZE" *) input [2:0]s_axi_hpr_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_hpr ARLEN" *) input [3:0]s_axi_hpr_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_hpr RVALID" *) output s_axi_hpr_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_hpr RREADY" *) input s_axi_hpr_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_hpr RDATA" *) output [31:0]s_axi_hpr_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_hpr RLAST" *) output s_axi_hpr_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_hpw AWVALID" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_hpw, DATA_WIDTH 32, PROTOCOL AXI3, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE WRITE_ONLY, HAS_BURST 1, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 0, HAS_RRESP 0, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 16, PHASE 0.0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input s_axi_hpw_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_hpw AWREADY" *) output s_axi_hpw_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_hpw AWADDR" *) input [31:0]s_axi_hpw_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_hpw AWBURST" *) input [1:0]s_axi_hpw_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_hpw AWSIZE" *) input [2:0]s_axi_hpw_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_hpw AWLEN" *) input [3:0]s_axi_hpw_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_hpw WVALID" *) input s_axi_hpw_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_hpw WREADY" *) output s_axi_hpw_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_hpw WDATA" *) input [31:0]s_axi_hpw_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_hpw WSTRB" *) input [3:0]s_axi_hpw_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_hpw WLAST" *) input s_axi_hpw_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_hpw BVALID" *) output s_axi_hpw_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_hpw BREADY" *) input s_axi_hpw_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_hp ARVALID" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi_hp, DATA_WIDTH 32, PROTOCOL AXI3, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 0, HAS_RRESP 0, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 16, PHASE 0.0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) output m_axi_hp_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_hp ARREADY" *) input m_axi_hp_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_hp ARADDR" *) output [31:0]m_axi_hp_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_hp ARBURST" *) output [1:0]m_axi_hp_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_hp ARSIZE" *) output [2:0]m_axi_hp_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_hp ARLEN" *) output [3:0]m_axi_hp_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_hp RVALID" *) input m_axi_hp_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_hp RREADY" *) output m_axi_hp_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_hp RDATA" *) input [31:0]m_axi_hp_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_hp RLAST" *) input m_axi_hp_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_hp AWVALID" *) output m_axi_hp_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_hp AWREADY" *) input m_axi_hp_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_hp AWADDR" *) output [31:0]m_axi_hp_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_hp AWBURST" *) output [1:0]m_axi_hp_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_hp AWSIZE" *) output [2:0]m_axi_hp_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_hp AWLEN" *) output [3:0]m_axi_hp_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_hp WVALID" *) output m_axi_hp_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_hp WREADY" *) input m_axi_hp_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_hp WDATA" *) output [31:0]m_axi_hp_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_hp WSTRB" *) output [3:0]m_axi_hp_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_hp WLAST" *) output m_axi_hp_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_hp BVALID" *) input m_axi_hp_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_hp BREADY" *) output m_axi_hp_bready;

  wire m_axi_hp_arready;
  wire m_axi_hp_awready;
  wire m_axi_hp_bvalid;
  wire [31:0]m_axi_hp_rdata;
  wire m_axi_hp_rlast;
  wire m_axi_hp_rvalid;
  wire m_axi_hp_wready;
  wire [31:0]s_axi_hpr_araddr;
  wire [1:0]s_axi_hpr_arburst;
  wire [3:0]s_axi_hpr_arlen;
  wire [2:0]s_axi_hpr_arsize;
  wire s_axi_hpr_arvalid;
  wire s_axi_hpr_rready;
  wire [31:0]s_axi_hpw_awaddr;
  wire [1:0]s_axi_hpw_awburst;
  wire [3:0]s_axi_hpw_awlen;
  wire [2:0]s_axi_hpw_awsize;
  wire s_axi_hpw_awvalid;
  wire s_axi_hpw_bready;
  wire [31:0]s_axi_hpw_wdata;
  wire s_axi_hpw_wlast;
  wire [3:0]s_axi_hpw_wstrb;
  wire s_axi_hpw_wvalid;

  assign m_axi_hp_araddr[31:0] = s_axi_hpr_araddr;
  assign m_axi_hp_arburst[1:0] = s_axi_hpr_arburst;
  assign m_axi_hp_arlen[3:0] = s_axi_hpr_arlen;
  assign m_axi_hp_arsize[2:0] = s_axi_hpr_arsize;
  assign m_axi_hp_arvalid = s_axi_hpr_arvalid;
  assign m_axi_hp_awaddr[31:0] = s_axi_hpw_awaddr;
  assign m_axi_hp_awburst[1:0] = s_axi_hpw_awburst;
  assign m_axi_hp_awlen[3:0] = s_axi_hpw_awlen;
  assign m_axi_hp_awsize[2:0] = s_axi_hpw_awsize;
  assign m_axi_hp_awvalid = s_axi_hpw_awvalid;
  assign m_axi_hp_bready = s_axi_hpw_bready;
  assign m_axi_hp_rready = s_axi_hpr_rready;
  assign m_axi_hp_wdata[31:0] = s_axi_hpw_wdata;
  assign m_axi_hp_wlast = s_axi_hpw_wlast;
  assign m_axi_hp_wstrb[3:0] = s_axi_hpw_wstrb;
  assign m_axi_hp_wvalid = s_axi_hpw_wvalid;
  assign s_axi_hpr_arready = m_axi_hp_arready;
  assign s_axi_hpr_rdata[31:0] = m_axi_hp_rdata;
  assign s_axi_hpr_rlast = m_axi_hp_rlast;
  assign s_axi_hpr_rvalid = m_axi_hp_rvalid;
  assign s_axi_hpw_awready = m_axi_hp_awready;
  assign s_axi_hpw_bvalid = m_axi_hp_bvalid;
  assign s_axi_hpw_wready = m_axi_hp_wready;
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
