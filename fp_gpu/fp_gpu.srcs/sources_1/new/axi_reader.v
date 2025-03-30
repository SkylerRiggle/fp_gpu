`timescale 1ns / 1ps

module axi_reader (
    input wire clk,
    input wire rst_n,

    // Input address
    input wire s_axis_addr_tvalid,
    output reg s_axis_addr_tready,
    input wire [31:0] s_axis_addr_tdata,

    // Output values
    output reg m_axis_out_tvalid,
    input wire m_axis_out_tready,
    output reg [31:0] m_axis_out_tdata,

    // Master read interface
    output reg m_axi_hpr_arvalid,
    input wire m_axi_hpr_arready,
    output reg [31:0] m_axi_hpr_araddr,
    output reg [1:0] m_axi_hpr_arburst,
    output reg [2:0] m_axi_hpr_arsize,
    output reg [3:0] m_axi_hpr_arlen,
    input wire m_axi_hpr_rvalid,
    output reg m_axi_hpr_rready,
    input wire [31:0] m_axi_hpr_rdata
);

localparam [1:0] IDLE_STATE = 2'b00;
localparam [1:0] ADDR_STATE = 2'b01;
localparam [1:0] READ_STATE = 2'b10;
localparam [1:0] DONE_STATE = 2'b11;

reg [1:0] state = IDLE_STATE;

task init_signals ();
    begin
        state = IDLE_STATE;

        s_axis_addr_tready = 1'b0;

        m_axis_out_tvalid = 1'b0;
        m_axis_out_tdata = 32'b00000000;

        m_axi_hpr_arvalid = 1'b0;
        m_axi_hpr_araddr = 32'b00000000;
        m_axi_hpr_arburst = 2'b00;
        m_axi_hpr_arsize = 3'b000;
        m_axi_hpr_arlen = 4'b0000;
        m_axi_hpr_rready = 1'b0;
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
                if (s_axis_addr_tvalid) begin
                    s_axis_addr_tready <= 1'b0;

                    m_axi_hpr_araddr <= s_axis_addr_tdata;
                    m_axi_hpr_arvalid <= 1'b1;
                    state <= ADDR_STATE;
                end else begin
                    s_axis_addr_tready <= 1'b1;
                end
            end

            ADDR_STATE: begin
                if (m_axi_hpr_arready) begin
                    m_axi_hpr_arvalid <= 1'b0;

                    m_axi_hpr_arburst <= 2'b01;
                    m_axi_hpr_arsize <= 3'b010;
                    m_axi_hpr_arlen <= 4'b0000;

                    m_axi_hpr_rready <= 1'b1;
                    state <= READ_STATE;
                end else begin
                    m_axi_hpr_arvalid <= 1'b1;
                end
            end

            READ_STATE: begin
                if (m_axi_hpr_rvalid) begin
                    m_axi_hpr_rready <= 1'b0;

                    m_axis_out_tvalid <= 1'b1;
                    m_axis_out_tdata <= m_axi_hpr_rdata;

                    state <= DONE_STATE;
                end else begin
                    m_axi_hpr_rready <= 1'b1;
                end
            end

            DONE_STATE: begin
                if (m_axis_out_tready) begin
                    m_axis_out_tvalid <= 1'b0;

                    state <= IDLE_STATE;
                end else begin
                    m_axis_out_tvalid <= 1'b1;
                end
            end
        endcase
    end
end

endmodule
