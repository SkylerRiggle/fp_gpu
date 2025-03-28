`timescale 1ns / 1ps

module axi_encoder #(
    parameter ADDRESS_BYTES = 4,
    parameter DATA_BYTES = 4
)(
    input clk,
    input rst_n,

    // Master write interface
    output wire m_axi_hpw_awvalid,
    input wire m_axi_hpw_awready,
    output wire [(ADDRESS_BYTES * 8) - 1:0] m_axi_hpw_awaddr,
    output wire [1:0] m_axi_hpw_awburst,
    output wire [2:0] m_axi_hpw_awsize,
    output wire [3:0] m_axi_hpw_awlen,
    output wire m_axi_hpw_wvalid,
    input wire m_axi_hpw_wready,
    output wire [(DATA_BYTES * 8) - 1:0] m_axi_hpw_wdata,
    output wire [DATA_BYTES - 1:0] m_axi_hpw_wstrb,
    output wire m_axi_hpw_wlast,
    input wire m_axi_hpw_bvalid,
    output wire m_axi_hpw_bready
);

endmodule
