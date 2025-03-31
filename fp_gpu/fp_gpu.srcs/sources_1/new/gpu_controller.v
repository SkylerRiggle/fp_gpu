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
    output reg clear_frame,

    input wire screen_size_processed,
    input wire projection_matrix_processed,
    input wire clear_color_processed,
    input wire camera_position_processed,
    input wire camera_rotation_processed,
    input wire model_position_processed,
    input wire model_rotation_processed,
    input wire model_scale_processed,
    input wire mesh_data_processed,
    input wire model_rendered,
    input wire frame_cleared,

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

    // Master write interface
    output reg m_axi_hpw_awvalid,
    input wire m_axi_hpw_awready,
    output reg [31:0] m_axi_hpw_awaddr,
    output reg [1:0] m_axi_hpw_awburst,
    output reg [2:0] m_axi_hpw_awsize,
    output reg [3:0] m_axi_hpw_awlen,
    output reg m_axi_hpw_wvalid,
    input wire m_axi_hpw_wready,
    output reg [31:0] m_axi_hpw_wdata,
    output reg [3:0] m_axi_hpw_wstrb,
    output reg m_axi_hpw_wlast,
    input wire m_axi_hpw_bvalid,
    output reg m_axi_hpw_bready
);

localparam [1:0] IDLE_STATE = 2'b00;
localparam [1:0] ADDR_STATE = 2'b01;
localparam [1:0] ACTION_STATE = 2'b10;
localparam [1:0] DONE_STATE = 2'b11;

reg [1:0] rw_state = IDLE_STATE;

task init_signals ();
    begin
        rw_state = IDLE_STATE;
        
        new_screen_size = 1'b0;
        new_projection_matrix = 1'b0;
        new_clear_color = 1'b0;
        new_camera_position = 1'b0;
        new_camera_rotation = 1'b0;
        new_model_position = 1'b0;
        new_model_rotation = 1'b0;
        new_model_scale = 1'b0;
        new_mesh_data = 1'b0;
        model_should_render = 1'b0;
        clear_frame = 1'b0;

        m_axi_hpr_arvalid = 1'b0;
        m_axi_hpr_araddr = 32'h00000000;
        m_axi_hpr_arburst = 2'b00;
        m_axi_hpr_arsize = 3'b000;
        m_axi_hpr_arlen = 4'b0000;
        m_axi_hpr_rready = 1'b0;

        m_axi_hpw_awvalid = 1'b0;
        m_axi_hpw_awaddr = 32'h00000000;
        m_axi_hpw_awburst = 2'b00;
        m_axi_hpw_awsize = 3'b000;
        m_axi_hpw_awlen = 4'b0000;
        m_axi_hpw_wvalid = 1'b0;
        m_axi_hpw_wdata = 32'h00000000;
        m_axi_hpw_wstrb = 4'b0000;
        m_axi_hpw_wlast = 1'b0;
        m_axi_hpw_bready = 1'b0;
    end
endtask

initial begin
    init_signals();
end

always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        init_signals();
    end else begin

    end
end

endmodule
