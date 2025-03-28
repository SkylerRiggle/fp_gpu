`timescale 1ns / 1ps

module axi_interconnect #(
    parameter ADDRESS_BYTES = 4,
    parameter DATA_BYTES = 4
)(
    // Slave read interface
    input wire s_axi_hpr_arvalid,
    output wire s_axi_hpr_arready,
    input wire [(ADDRESS_BYTES * 8) - 1:0] s_axi_hpr_araddr,
    input wire [1:0] s_axi_hpr_arburst,
    input wire [2:0] s_axi_hpr_arsize,
    input wire [3:0] s_axi_hpr_arlen,
    output wire s_axi_hpr_rvalid,
    input wire s_axi_hpr_rready,
    output wire [(DATA_BYTES * 8) - 1:0] s_axi_hpr_rdata,
    output wire s_axi_hpr_rlast,

    // Slave write interface
    input wire s_axi_hpw_awvalid,
    output wire s_axi_hpw_awready,
    input wire [(ADDRESS_BYTES * 8) - 1:0] s_axi_hpw_awaddr,
    input wire [1:0] s_axi_hpw_awburst,
    input wire [2:0] s_axi_hpw_awsize,
    input wire [3:0] s_axi_hpw_awlen,
    input wire s_axi_hpw_wvalid,
    output wire s_axi_hpw_wready,
    input wire [(DATA_BYTES * 8) - 1:0] s_axi_hpw_wdata,
    input wire [DATA_BYTES - 1:0] s_axi_hpw_wstrb,
    input wire s_axi_hpw_wlast,
    output wire s_axi_hpw_bvalid,
    input wire s_axi_hpw_bready,

    // Master read interface
    output wire m_axi_hp_arvalid,
    input wire m_axi_hp_arready,
    output wire [(ADDRESS_BYTES * 8) - 1:0] m_axi_hp_araddr,
    output wire [1:0] m_axi_hp_arburst,
    output wire [2:0] m_axi_hp_arsize,
    output wire [3:0] m_axi_hp_arlen,
    input wire m_axi_hp_rvalid,
    output wire m_axi_hp_rready,
    input wire [(DATA_BYTES * 8) - 1:0] m_axi_hp_rdata,
    input wire m_axi_hp_rlast,

    // Master write interface
    output wire m_axi_hp_awvalid,
    input wire m_axi_hp_awready,
    output wire [(ADDRESS_BYTES * 8) - 1:0] m_axi_hp_awaddr,
    output wire [1:0] m_axi_hp_awburst,
    output wire [2:0] m_axi_hp_awsize,
    output wire [3:0] m_axi_hp_awlen,
    output wire m_axi_hp_wvalid,
    input wire m_axi_hp_wready,
    output wire [(DATA_BYTES * 8) - 1:0] m_axi_hp_wdata,
    output wire [DATA_BYTES - 1:0] m_axi_hp_wstrb,
    output wire m_axi_hp_wlast,
    input wire m_axi_hp_bvalid,
    output wire m_axi_hp_bready
);

// Slave to master read channel connection
assign m_axi_hp_arvalid = s_axi_hpr_arvalid;
assign s_axi_hpr_arready = m_axi_hp_arready;
assign m_axi_hp_araddr = s_axi_hpr_araddr;
assign m_axi_hp_arburst = s_axi_hpr_arburst;
assign m_axi_hp_arsize = s_axi_hpr_arsize;
assign m_axi_hp_arlen = s_axi_hpr_arlen;
assign s_axi_hpr_rvalid = m_axi_hp_rvalid;
assign m_axi_hp_rready = s_axi_hpr_rready;
assign s_axi_hpr_rdata = m_axi_hp_rdata;
assign s_axi_hpr_rlast = m_axi_hp_rlast;

// Slave to master write channel connection
assign m_axi_hp_awvalid = s_axi_hpw_awvalid;
assign s_axi_hpw_awready = m_axi_hp_awready;
assign m_axi_hp_awaddr = s_axi_hpw_awaddr;
assign m_axi_hp_awburst = s_axi_hpw_awburst;
assign m_axi_hp_awsize = s_axi_hpw_awsize;
assign m_axi_hp_awlen = s_axi_hpw_awlen;
assign m_axi_hp_wvalid = s_axi_hpw_wvalid;
assign s_axi_hpw_wready = m_axi_hp_wready;
assign m_axi_hp_wdata = s_axi_hpw_wdata;
assign m_axi_hp_wstrb = s_axi_hpw_wstrb;
assign m_axi_hp_wlast = s_axi_hpw_wlast;
assign s_axi_hpw_bvalid = m_axi_hp_bvalid;
assign m_axi_hp_bready = s_axi_hpw_bready;

endmodule
