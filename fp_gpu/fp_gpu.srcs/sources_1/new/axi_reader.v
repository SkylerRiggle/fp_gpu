`timescale 1ns / 1ps

module axi_reader (
    input wire clk,
    input wire rst_n,

    // Master read interface
    output reg m_axi_hpr_arvalid,
    input wire m_axi_hpr_arready,
    output reg [31:0] m_axi_hpr_araddr,
    output reg [1:0] m_axi_hpr_arburst,
    output reg [2:0] m_axi_hpr_arsize,
    output reg [3:0] m_axi_hpr_arlen,
    input wire m_axi_hpr_rvalid,
    output reg m_axi_hpr_rready,
    input wire [31:0] m_axi_hpr_rdata,
    input wire m_axi_hpr_rlast
);

endmodule
