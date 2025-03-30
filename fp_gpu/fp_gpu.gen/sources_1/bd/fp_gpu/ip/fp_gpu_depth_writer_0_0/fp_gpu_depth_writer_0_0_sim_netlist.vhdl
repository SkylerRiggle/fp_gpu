-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
-- Date        : Sun Mar 30 17:28:47 2025
-- Host        : Diogenes_Urn running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Dev/masters_project/fp_gpu/fp_gpu.gen/sources_1/bd/fp_gpu/ip/fp_gpu_depth_writer_0_0/fp_gpu_depth_writer_0_0_sim_netlist.vhdl
-- Design      : fp_gpu_depth_writer_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fp_gpu_depth_writer_0_0 is
  port (
    clk : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    s_axis_depth_tvalid : in STD_LOGIC;
    s_axis_depth_tready : out STD_LOGIC;
    s_axis_pixel_x : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_pixel_y : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_depth_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_hpw_awvalid : out STD_LOGIC;
    m_axi_hpw_awready : in STD_LOGIC;
    m_axi_hpw_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_hpw_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_hpw_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_hpw_awlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_hpw_wvalid : out STD_LOGIC;
    m_axi_hpw_wready : in STD_LOGIC;
    m_axi_hpw_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_hpw_wstrb : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_hpw_wlast : out STD_LOGIC;
    m_axi_hpw_bvalid : in STD_LOGIC;
    m_axi_hpw_bready : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of fp_gpu_depth_writer_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of fp_gpu_depth_writer_0_0 : entity is "fp_gpu_depth_writer_0_0,depth_writer,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of fp_gpu_depth_writer_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of fp_gpu_depth_writer_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of fp_gpu_depth_writer_0_0 : entity is "depth_writer,Vivado 2024.2";
end fp_gpu_depth_writer_0_0;

architecture STRUCTURE of fp_gpu_depth_writer_0_0 is
  component fp_gpu_depth_writer_0_0_depth_writer is
  port (
    clk : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    s_axis_depth_tvalid : in STD_LOGIC;
    s_axis_depth_tready : out STD_LOGIC;
    s_axis_pixel_x : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_pixel_y : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_depth_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_hpw_awvalid : out STD_LOGIC;
    m_axi_hpw_awready : in STD_LOGIC;
    m_axi_hpw_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_hpw_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_hpw_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_hpw_awlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_hpw_wvalid : out STD_LOGIC;
    m_axi_hpw_wready : in STD_LOGIC;
    m_axi_hpw_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_hpw_wstrb : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_hpw_wlast : out STD_LOGIC;
    m_axi_hpw_bvalid : in STD_LOGIC;
    m_axi_hpw_bready : out STD_LOGIC
  );
  end component fp_gpu_depth_writer_0_0_depth_writer;
  attribute FRAME_BUFFER_ADDR : integer;
  attribute FRAME_BUFFER_ADDR of inst : label is 1610612848;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF s_axis_depth:m_axi_hpw, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN fp_gpu_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axi_hpw_awready : signal is "xilinx.com:interface:aximm:1.0 m_axi_hpw AWREADY";
  attribute X_INTERFACE_INFO of m_axi_hpw_awvalid : signal is "xilinx.com:interface:aximm:1.0 m_axi_hpw AWVALID";
  attribute X_INTERFACE_MODE of m_axi_hpw_awvalid : signal is "master";
  attribute X_INTERFACE_PARAMETER of m_axi_hpw_awvalid : signal is "XIL_INTERFACENAME m_axi_hpw, DATA_WIDTH 32, PROTOCOL AXI3, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE WRITE_ONLY, HAS_BURST 1, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 0, HAS_RRESP 0, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 16, PHASE 0.0, CLK_DOMAIN fp_gpu_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axi_hpw_bready : signal is "xilinx.com:interface:aximm:1.0 m_axi_hpw BREADY";
  attribute X_INTERFACE_INFO of m_axi_hpw_bvalid : signal is "xilinx.com:interface:aximm:1.0 m_axi_hpw BVALID";
  attribute X_INTERFACE_INFO of m_axi_hpw_wlast : signal is "xilinx.com:interface:aximm:1.0 m_axi_hpw WLAST";
  attribute X_INTERFACE_INFO of m_axi_hpw_wready : signal is "xilinx.com:interface:aximm:1.0 m_axi_hpw WREADY";
  attribute X_INTERFACE_INFO of m_axi_hpw_wvalid : signal is "xilinx.com:interface:aximm:1.0 m_axi_hpw WVALID";
  attribute X_INTERFACE_INFO of rst_n : signal is "xilinx.com:signal:reset:1.0 rst_n RST";
  attribute X_INTERFACE_MODE of rst_n : signal is "slave";
  attribute X_INTERFACE_PARAMETER of rst_n : signal is "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axis_depth_tready : signal is "xilinx.com:interface:axis:1.0 s_axis_depth TREADY";
  attribute X_INTERFACE_INFO of s_axis_depth_tvalid : signal is "xilinx.com:interface:axis:1.0 s_axis_depth TVALID";
  attribute X_INTERFACE_MODE of s_axis_depth_tvalid : signal is "slave";
  attribute X_INTERFACE_PARAMETER of s_axis_depth_tvalid : signal is "XIL_INTERFACENAME s_axis_depth, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN fp_gpu_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency width format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {float {sigwidth {attribs {resolve_type generated dependency fractwidth format long minimum {} maximum {}} value 24}}}}} TDATA_WIDTH 32 TUSER {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} struct {field_underflow {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value underflow} enabled {attribs {resolve_type generated dependency underflow_enabled format bool minimum {} maximum {}} value false} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency underflow_bitwidth format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} field_overflow {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value overflow} enabled {attribs {resolve_type generated dependency overflow_enabled format bool minimum {} maximum {}} value false} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency overflow_bitwidth format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type generated dependency overflow_bitoffset format long minimum {} maximum {}} value 0}}} field_invalid_op {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value invalid_op} enabled {attribs {resolve_type generated dependency invalid_op_enabled format bool minimum {} maximum {}} value false} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency invalid_op_bitwidth format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type generated dependency invalid_op_bitoffset format long minimum {} maximum {}} value 0}}} field_div_by_zero {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value div_by_zero} enabled {attribs {resolve_type generated dependency div_by_zero_enabled format bool minimum {} maximum {}} value false} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency div_by_zero_bitwidth format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type generated dependency div_by_zero_bitoffset format long minimum {} maximum {}} value 0}}} field_accum_input_overflow {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value accum_input_overflow} enabled {attribs {resolve_type generated dependency accum_input_overflow_enabled format bool minimum {} maximum {}} value false} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency accum_input_overflow_bitwidth format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type generated dependency accum_input_overflow_bitoffset format long minimum {} maximum {}} value 0}}} field_accum_overflow {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value accum_overflow} enabled {attribs {resolve_type generated dependency accum_overflow_enabled format bool minimum {} maximum {}} value false} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency accum_overflow_bitwidth format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type generated dependency accum_overflow_bitoffset format long minimum {} maximum {}} value 0}}} field_a_tuser {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value a_tuser} enabled {attribs {resolve_type generated dependency a_tuser_enabled format bool minimum {} maximum {}} value false} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency a_tuser_bitwidth format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type generated dependency a_tuser_bitoffset format long minimum {} maximum {}} value 0}}} field_b_tuser {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value b_tuser} enabled {attribs {resolve_type generated dependency b_tuser_enabled format bool minimum {} maximum {}} value false} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency b_tuser_bitwidth format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type generated dependency b_tuser_bitoffset format long minimum {} maximum {}} value 0}}} field_c_tuser {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value c_tuser} enabled {attribs {resolve_type generated dependency c_tuser_enabled format bool minimum {} maximum {}} value false} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency c_tuser_bitwidth format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type generated dependency c_tuser_bitoffset format long minimum {} maximum {}} value 0}}} field_operation_tuser {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value operation_tuser} enabled {attribs {resolve_type generated dependency operation_tuser_enabled format bool minimum {} maximum {}} value false} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency operation_tuser_bitwidth format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type generated dependency operation_tuser_bitoffset format long minimum {} maximum {}} value 0}}}}}} TUSER_WIDTH 0}, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axi_hpw_awaddr : signal is "xilinx.com:interface:aximm:1.0 m_axi_hpw AWADDR";
  attribute X_INTERFACE_INFO of m_axi_hpw_awburst : signal is "xilinx.com:interface:aximm:1.0 m_axi_hpw AWBURST";
  attribute X_INTERFACE_INFO of m_axi_hpw_awlen : signal is "xilinx.com:interface:aximm:1.0 m_axi_hpw AWLEN";
  attribute X_INTERFACE_INFO of m_axi_hpw_awsize : signal is "xilinx.com:interface:aximm:1.0 m_axi_hpw AWSIZE";
  attribute X_INTERFACE_INFO of m_axi_hpw_wdata : signal is "xilinx.com:interface:aximm:1.0 m_axi_hpw WDATA";
  attribute X_INTERFACE_INFO of m_axi_hpw_wstrb : signal is "xilinx.com:interface:aximm:1.0 m_axi_hpw WSTRB";
  attribute X_INTERFACE_INFO of s_axis_depth_tdata : signal is "xilinx.com:interface:axis:1.0 s_axis_depth TDATA";
begin
inst: component fp_gpu_depth_writer_0_0_depth_writer
     port map (
      clk => clk,
      m_axi_hpw_awaddr(31 downto 0) => m_axi_hpw_awaddr(31 downto 0),
      m_axi_hpw_awburst(1 downto 0) => m_axi_hpw_awburst(1 downto 0),
      m_axi_hpw_awlen(3 downto 0) => m_axi_hpw_awlen(3 downto 0),
      m_axi_hpw_awready => m_axi_hpw_awready,
      m_axi_hpw_awsize(2 downto 0) => m_axi_hpw_awsize(2 downto 0),
      m_axi_hpw_awvalid => m_axi_hpw_awvalid,
      m_axi_hpw_bready => m_axi_hpw_bready,
      m_axi_hpw_bvalid => m_axi_hpw_bvalid,
      m_axi_hpw_wdata(31 downto 0) => m_axi_hpw_wdata(31 downto 0),
      m_axi_hpw_wlast => m_axi_hpw_wlast,
      m_axi_hpw_wready => m_axi_hpw_wready,
      m_axi_hpw_wstrb(31 downto 0) => m_axi_hpw_wstrb(31 downto 0),
      m_axi_hpw_wvalid => m_axi_hpw_wvalid,
      rst_n => rst_n,
      s_axis_depth_tdata(31 downto 0) => s_axis_depth_tdata(31 downto 0),
      s_axis_depth_tready => s_axis_depth_tready,
      s_axis_depth_tvalid => s_axis_depth_tvalid,
      s_axis_pixel_x(31 downto 0) => s_axis_pixel_x(31 downto 0),
      s_axis_pixel_y(31 downto 0) => s_axis_pixel_y(31 downto 0)
    );
end STRUCTURE;
