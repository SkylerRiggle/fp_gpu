`timescale 1ns / 1ps

module frame_memory_generator #(
    parameter [8:0] FRAME_WIDTH = 420,
    parameter [8:0] FRAME_HEIGHT = 240
)(
    // Pixel Write Interface
    input wire commit,
    input wire [8:0] x_idx,
    input wire [8:0] y_idx,
    input wire [7:0] red_byte,
    input wire [7:0] green_byte,
    input wire [7:0] blue_byte,
    
    // Memory Interface
    output wire [31:0] m_axis_s2mm_tdata,
    output wire [3:0] m_axis_s2mm_tkeep,
    output wire m_axis_s2mm_tlast,
    input wire m_axis_s2mm_tready,
    output wire m_axis_s2mm_tvalid
);

reg [23:0] frame_buffer [0:FRAME_WIDTH * FRAME_HEIGHT];

always @(posedge commit) begin
    if (x_idx < FRAME_WIDTH && y_idx < FRAME_HEIGHT) begin
        frame_buffer[x_idx + (y_idx * FRAME_WIDTH)] <= {
            red_byte,
            green_byte,
            blue_byte
        };
    end
end

endmodule
