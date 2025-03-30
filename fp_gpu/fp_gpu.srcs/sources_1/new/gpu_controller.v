`timescale 1ns / 1ps

module gpu_controller #(
    parameter CONTROL_WORD_ADDR = 32'h40000000
)(
    input wire clk,
    input wire rst_n,

    // Control word signals
    output reg new_screen_size,
    output reg new_projection_matrix,
    output reg new_clear_color,
    output reg new_camera_position,
    output reg new_camera_rotation,
    output reg new_model_position,
    output reg new_model_rotation,
    output reg new_model_scale,
    output reg new_mesh_data,
    output reg model_should_render,
    output reg clear_frames,

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
    input wire m_axi_hpr_rlast,

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

localparam [2:0] IDLE_READ_STATE = 2'b000;
localparam [2:0] ADDR_READ_STATE = 2'b001;
localparam [2:0] DATA_READ_STATE = 2'b010;
localparam [2:0] DONE_READ_STATE = 2'b011;

localparam [2:0] IDLE_WRITE_STATE = 2'b000;
localparam [2:0] ADDR_WRITE_STATE = 2'b001;
localparam [2:0] DATA_WRITE_STATE = 2'b010;
localparam [2:0] DONE_WRITE_STATE = 2'b011;

reg [2:0] state = IDLE_READ_STATE;

endmodule
