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

localparam [1:0] IDLE_STATE = 2'b00;
localparam [1:0] ADDR_STATE = 2'b01;
localparam [1:0] WRITE_STATE = 2'b10;
localparam [1:0] DONE_STATE = 2'b11;

reg [1:0] state = IDLE_STATE;
reg [31:0] frame_width = 32'b00000000;

task init_signals ();
    begin
        state = IDLE_STATE;
        frame_width <= 32'b00000000;

        s_axis_size_tready = 1'b0;

        s_axis_pixel_tready = 1'b0;

        m_axi_hpw_awvalid = 1'b0;
        m_axi_hpw_awaddr = 32'b00000000;
        m_axi_hpw_awburst = 2'b00;
        m_axi_hpw_awsize = 3'b000;
        m_axi_hpw_awlen = 4'b0000;
        m_axi_hpw_wvalid = 1'b0;
        m_axi_hpw_wdata = 32'b00000000;
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
        case (state)
            IDLE_STATE: begin
                if (s_axis_size_tvalid) begin
                    s_axis_size_tready <= 1'b0;

                    frame_width <= s_axis_width;
                end else begin
                    s_axis_size_tready <= 1'b1;
                end

                if (s_axis_depth_tvalid) begin
                    s_axis_depth_tready <= 1'b0;

                    m_axi_hpw_awvalid <= 1'b1;
                    m_axi_hpw_awaddr <= FRAME_BUFFER_ADDR + (s_axis_pixel_y * frame_width + s_axis_pixel_x) * 4;
                    m_axi_hpw_wdata <= {
                        s_axis_pixel_blue,   // 8 bits
                        s_axis_pixel_green,  // 8 bits
                        s_axis_pixel_red,    // 8 bits
                        8'b00000000          // 8 bits for alpha (unused)
                    };

                    state <= ADDR_STATE;
                end else begin
                    s_axis_depth_tready <= 1'b1;
                end
            end

            ADDR_STATE: begin
                if (m_axi_hpw_awready) begin
                    m_axi_hpw_awvalid <= 1'b0;

                    m_axi_hpw_awburst <= 2'b01;
                    m_axi_hpw_awsize <= 3'b010;
                    m_axi_hpw_awlen <= 4'b0001;
                    m_axi_hpw_wlast <= 1'b1;

                    m_axi_hpw_wvalid <= 1'b1;

                    state <= WRITE_STATE;
                end else begin
                    m_axi_hpw_awvalid <= 1'b1;
                end
            end

            WRITE_STATE: begin
                if (m_axi_hpw_wready) begin
                    m_axi_hpw_wvalid <= 1'b0;

                    m_axi_hpw_bready <= 1'b1;

                    state <= DONE_STATE;
                end else begin
                    m_axi_hpw_wvalid <= 1'b1;
                end
            end

            DONE_STATE: begin
                if (m_axi_hpw_bvalid) begin
                    m_axi_hpw_bready <= 1'b0;
                    
                    state <= IDLE_STATE;
                end else begin
                    m_axi_hpw_bready <= 1'b1;
                end
            end
        endcase
    end
end

endmodule
