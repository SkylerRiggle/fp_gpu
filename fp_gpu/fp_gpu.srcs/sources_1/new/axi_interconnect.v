`timescale 1ns / 1ps

module axi_interconnect #(
    parameter ADDRESS_BYTES = 4,
    parameter DATA_BYTES = 4
)(
    input wire clk,
    input wire rst_n,

    // Master read interface
    output reg m_axi_hp0_arvalid,
    input wire m_axi_hp0_arready,
    output reg [(ADDRESS_BYTES * 4) - 1:0] m_axi_hp0_araddr,
    output reg [1:0] m_axi_hp0_arburst,
    output reg [2:0] m_axi_hp0_arsize,
    output reg [3:0] m_axi_hp0_arlen,
    input wire m_axi_hp0_rvalid,
    output reg m_axi_hp0_rready,
    input wire [(DATA_BYTES * 4) - 1:0] m_axi_hp0_rdata,
    input wire m_axi_hp0_rlast,

    // Master write interface
    output reg m_axi_hp0_awvalid,
    input wire m_axi_hp0_awready,
    output reg [(ADDRESS_BYTES * 4) - 1:0] m_axi_hp0_awaddr,
    output reg [1:0] m_axi_hp0_awburst,
    output reg [2:0] m_axi_hp0_awsize,
    output reg [3:0] m_axi_hp0_awlen,
    output reg m_axi_hp0_wvalid,
    input wire m_axi_hp0_wready,
    output reg [(DATA_BYTES * 4) - 1:0] m_axi_hp0_wdata,
    output reg [DATA_BYTES - 1:0] m_axi_hp0_wstrb,
    output reg m_axi_hp0_wlast,
    input wire m_axi_hp0_bvalid,
    output reg m_axi_hp0_bready
);

endmodule
