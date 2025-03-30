-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
-- Date        : Sun Mar 30 17:28:46 2025
-- Host        : Diogenes_Urn running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Dev/masters_project/fp_gpu/fp_gpu.gen/sources_1/bd/fp_gpu/ip/fp_gpu_pixel_writer_0_0/fp_gpu_pixel_writer_0_0_sim_netlist.vhdl
-- Design      : fp_gpu_pixel_writer_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fp_gpu_pixel_writer_0_0 is
  port (
    clk : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    s_axis_pixel_tvalid : in STD_LOGIC;
    s_axis_pixel_tready : out STD_LOGIC;
    s_axis_pixel_x : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_pixel_y : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_pixel_red : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_pixel_green : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_pixel_blue : in STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_hpw_awvalid : out STD_LOGIC;
    m_axi_hpw_awready : in STD_LOGIC;
    m_axi_hpw_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_hpw_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_hpw_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_hpw_awlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_hpw_wvalid : out STD_LOGIC;
    m_axi_hpw_wready : in STD_LOGIC;
    m_axi_hpw_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_hpw_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_hpw_wlast : out STD_LOGIC;
    m_axi_hpw_bvalid : in STD_LOGIC;
    m_axi_hpw_bready : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of fp_gpu_pixel_writer_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of fp_gpu_pixel_writer_0_0 : entity is "fp_gpu_pixel_writer_0_0,pixel_writer,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of fp_gpu_pixel_writer_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of fp_gpu_pixel_writer_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of fp_gpu_pixel_writer_0_0 : entity is "pixel_writer,Vivado 2024.2";
end fp_gpu_pixel_writer_0_0;

architecture STRUCTURE of fp_gpu_pixel_writer_0_0 is
  component fp_gpu_pixel_writer_0_0_pixel_writer is
  port (
    clk : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    s_axis_pixel_tvalid : in STD_LOGIC;
    s_axis_pixel_tready : out STD_LOGIC;
    s_axis_pixel_x : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_pixel_y : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_pixel_red : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_pixel_green : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_pixel_blue : in STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_hpw_awvalid : out STD_LOGIC;
    m_axi_hpw_awready : in STD_LOGIC;
    m_axi_hpw_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_hpw_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_hpw_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_hpw_awlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_hpw_wvalid : out STD_LOGIC;
    m_axi_hpw_wready : in STD_LOGIC;
    m_axi_hpw_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_hpw_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_hpw_wlast : out STD_LOGIC;
    m_axi_hpw_bvalid : in STD_LOGIC;
    m_axi_hpw_bready : out STD_LOGIC
  );
  end component fp_gpu_pixel_writer_0_0_pixel_writer;
  attribute FRAME_BUFFER_ADDR : integer;
  attribute FRAME_BUFFER_ADDR of inst : label is 1610612848;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF s_axis_pixel:m_axi_hpw, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN fp_gpu_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
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
  attribute X_INTERFACE_INFO of s_axis_pixel_tready : signal is "xilinx.com:interface:axis:1.0 s_axis_pixel TREADY";
  attribute X_INTERFACE_INFO of s_axis_pixel_tvalid : signal is "xilinx.com:interface:axis:1.0 s_axis_pixel TVALID";
  attribute X_INTERFACE_MODE of s_axis_pixel_tvalid : signal is "slave";
  attribute X_INTERFACE_PARAMETER of s_axis_pixel_tvalid : signal is "XIL_INTERFACENAME s_axis_pixel, TDATA_NUM_BYTES 0, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN fp_gpu_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axi_hpw_awaddr : signal is "xilinx.com:interface:aximm:1.0 m_axi_hpw AWADDR";
  attribute X_INTERFACE_INFO of m_axi_hpw_awburst : signal is "xilinx.com:interface:aximm:1.0 m_axi_hpw AWBURST";
  attribute X_INTERFACE_INFO of m_axi_hpw_awlen : signal is "xilinx.com:interface:aximm:1.0 m_axi_hpw AWLEN";
  attribute X_INTERFACE_INFO of m_axi_hpw_awsize : signal is "xilinx.com:interface:aximm:1.0 m_axi_hpw AWSIZE";
  attribute X_INTERFACE_INFO of m_axi_hpw_wdata : signal is "xilinx.com:interface:aximm:1.0 m_axi_hpw WDATA";
  attribute X_INTERFACE_INFO of m_axi_hpw_wstrb : signal is "xilinx.com:interface:aximm:1.0 m_axi_hpw WSTRB";
begin
inst: component fp_gpu_pixel_writer_0_0_pixel_writer
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
      m_axi_hpw_wstrb(3 downto 0) => m_axi_hpw_wstrb(3 downto 0),
      m_axi_hpw_wvalid => m_axi_hpw_wvalid,
      rst_n => rst_n,
      s_axis_pixel_blue(7 downto 0) => s_axis_pixel_blue(7 downto 0),
      s_axis_pixel_green(7 downto 0) => s_axis_pixel_green(7 downto 0),
      s_axis_pixel_red(7 downto 0) => s_axis_pixel_red(7 downto 0),
      s_axis_pixel_tready => s_axis_pixel_tready,
      s_axis_pixel_tvalid => s_axis_pixel_tvalid,
      s_axis_pixel_x(31 downto 0) => s_axis_pixel_x(31 downto 0),
      s_axis_pixel_y(31 downto 0) => s_axis_pixel_y(31 downto 0)
    );
end STRUCTURE;
