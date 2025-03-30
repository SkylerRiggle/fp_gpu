`timescale 1ns / 1ps

module pixel_writer #(
    parameter FRAME_BUFFER_ADDR = 32'h60000070
)(
    input wire clk,
    input wire rst_n,

    // Input frame size
    input wire s_axis_size_tvalid,
    output reg s_axis_size_tready,
    input wire [31:0] s_axis_width,
    input wire [31:0] s_axis_height,

    // Pixel input
    input wire s_axis_pixel_tvalid,
    output reg s_axis_pixel_tready,
    input wire [31:0] s_axis_pixel_x,
    input wire [31:0] s_axis_pixel_y,
    input wire [7:0] s_axis_pixel_red,
    input wire [7:0] s_axis_pixel_green,
    input wire [7:0] s_axis_pixel_blue,

    // Master write interface
    output wire m_axi_hpw_awvalid,
    input wire m_axi_hpw_awready,
    output wire [31:0] m_axi_hpw_awaddr,
    output wire [1:0] m_axi_hpw_awburst,
    output wire [2:0] m_axi_hpw_awsize,
    output wire [3:0] m_axi_hpw_awlen,
    output wire m_axi_hpw_wvalid,
    input wire m_axi_hpw_wready,
    output wire [31:0] m_axi_hpw_wdata,
    output wire [3:0] m_axi_hpw_wstrb,
    output wire m_axi_hpw_wlast,
    input wire m_axi_hpw_bvalid,
    output wire m_axi_hpw_bready
);

endmodule
