// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Sun Mar 30 17:28:46 2025
// Host        : Diogenes_Urn running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Dev/masters_project/fp_gpu/fp_gpu.gen/sources_1/bd/fp_gpu/ip/fp_gpu_pixel_writer_0_0/fp_gpu_pixel_writer_0_0_sim_netlist.v
// Design      : fp_gpu_pixel_writer_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "fp_gpu_pixel_writer_0_0,pixel_writer,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "pixel_writer,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module fp_gpu_pixel_writer_0_0
   (clk,
    rst_n,
    s_axis_pixel_tvalid,
    s_axis_pixel_tready,
    s_axis_pixel_x,
    s_axis_pixel_y,
    s_axis_pixel_red,
    s_axis_pixel_green,
    s_axis_pixel_blue,
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
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF s_axis_pixel:m_axi_hpw, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN fp_gpu_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst_n RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_pixel TVALID" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_pixel, TDATA_NUM_BYTES 0, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN fp_gpu_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *) input s_axis_pixel_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_pixel TREADY" *) output s_axis_pixel_tready;
  input [31:0]s_axis_pixel_x;
  input [31:0]s_axis_pixel_y;
  input [7:0]s_axis_pixel_red;
  input [7:0]s_axis_pixel_green;
  input [7:0]s_axis_pixel_blue;
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

  wire clk;
  wire [31:0]m_axi_hpw_awaddr;
  wire [1:0]m_axi_hpw_awburst;
  wire [3:0]m_axi_hpw_awlen;
  wire m_axi_hpw_awready;
  wire [2:0]m_axi_hpw_awsize;
  wire m_axi_hpw_awvalid;
  wire m_axi_hpw_bready;
  wire m_axi_hpw_bvalid;
  wire [31:0]m_axi_hpw_wdata;
  wire m_axi_hpw_wlast;
  wire m_axi_hpw_wready;
  wire [3:0]m_axi_hpw_wstrb;
  wire m_axi_hpw_wvalid;
  wire rst_n;
  wire [7:0]s_axis_pixel_blue;
  wire [7:0]s_axis_pixel_green;
  wire [7:0]s_axis_pixel_red;
  wire s_axis_pixel_tready;
  wire s_axis_pixel_tvalid;
  wire [31:0]s_axis_pixel_x;
  wire [31:0]s_axis_pixel_y;

  (* FRAME_BUFFER_ADDR = "1610612848" *) 
  fp_gpu_pixel_writer_0_0_pixel_writer inst
       (.clk(clk),
        .m_axi_hpw_awaddr(m_axi_hpw_awaddr),
        .m_axi_hpw_awburst(m_axi_hpw_awburst),
        .m_axi_hpw_awlen(m_axi_hpw_awlen),
        .m_axi_hpw_awready(m_axi_hpw_awready),
        .m_axi_hpw_awsize(m_axi_hpw_awsize),
        .m_axi_hpw_awvalid(m_axi_hpw_awvalid),
        .m_axi_hpw_bready(m_axi_hpw_bready),
        .m_axi_hpw_bvalid(m_axi_hpw_bvalid),
        .m_axi_hpw_wdata(m_axi_hpw_wdata),
        .m_axi_hpw_wlast(m_axi_hpw_wlast),
        .m_axi_hpw_wready(m_axi_hpw_wready),
        .m_axi_hpw_wstrb(m_axi_hpw_wstrb),
        .m_axi_hpw_wvalid(m_axi_hpw_wvalid),
        .rst_n(rst_n),
        .s_axis_pixel_blue(s_axis_pixel_blue),
        .s_axis_pixel_green(s_axis_pixel_green),
        .s_axis_pixel_red(s_axis_pixel_red),
        .s_axis_pixel_tready(s_axis_pixel_tready),
        .s_axis_pixel_tvalid(s_axis_pixel_tvalid),
        .s_axis_pixel_x(s_axis_pixel_x),
        .s_axis_pixel_y(s_axis_pixel_y));
endmodule

(* FRAME_BUFFER_ADDR = "1610612848" *) (* ORIG_REF_NAME = "pixel_writer" *) 
module fp_gpu_pixel_writer_0_0_pixel_writer
   (clk,
    rst_n,
    s_axis_pixel_tvalid,
    s_axis_pixel_tready,
    s_axis_pixel_x,
    s_axis_pixel_y,
    s_axis_pixel_red,
    s_axis_pixel_green,
    s_axis_pixel_blue,
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
  input clk;
  input rst_n;
  input s_axis_pixel_tvalid;
  output s_axis_pixel_tready;
  input [31:0]s_axis_pixel_x;
  input [31:0]s_axis_pixel_y;
  input [7:0]s_axis_pixel_red;
  input [7:0]s_axis_pixel_green;
  input [7:0]s_axis_pixel_blue;
  output m_axi_hpw_awvalid;
  input m_axi_hpw_awready;
  output [31:0]m_axi_hpw_awaddr;
  output [1:0]m_axi_hpw_awburst;
  output [2:0]m_axi_hpw_awsize;
  output [3:0]m_axi_hpw_awlen;
  output m_axi_hpw_wvalid;
  input m_axi_hpw_wready;
  output [31:0]m_axi_hpw_wdata;
  output [3:0]m_axi_hpw_wstrb;
  output m_axi_hpw_wlast;
  input m_axi_hpw_bvalid;
  output m_axi_hpw_bready;


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
