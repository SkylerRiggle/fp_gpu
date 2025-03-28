`timescale 1ns / 1ps

module axi_decoder #(
    parameter ADDRESS_BYTES = 4,
    parameter DATA_BYTES = 4
)(
    input clk,
    input rst_n,

    // Master read interface
    output wire m_axi_hpr_arvalid,
    input wire m_axi_hpr_arready,
    output wire [(ADDRESS_BYTES * 8) - 1:0] m_axi_hpr_araddr,
    output wire [1:0] m_axi_hpr_arburst,
    output wire [2:0] m_axi_hpr_arsize,
    output wire [3:0] m_axi_hpr_arlen,
    input wire m_axi_hpr_rvalid,
    output wire m_axi_hpr_rready,
    input wire [(DATA_BYTES * 8) - 1:0] m_axi_hpr_rdata,
    input wire m_axi_hpr_rlast
);

endmodule
