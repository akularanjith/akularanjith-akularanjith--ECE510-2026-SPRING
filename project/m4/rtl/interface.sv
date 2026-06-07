`timescale 1ns / 1ps

module interface_unit (
    input  logic        aclk,
    input  logic        aresetn,
    
    // AXI4-Stream Slave Interface (Input from host)
    input  logic [15:0] s_axis_tdata,  // Upper 8 bits = RSSI, Lower 8 bits = Weight
    input  logic        s_axis_tvalid,
    output logic        s_axis_tready,
    
    // Handshake to Compute Core
    output logic [7:0]  rssi_out,
    output logic [7:0]  weight_out,
    output logic        valid_out,
    input  logic        core_ready
);

    // Pipeline register to prevent the setup violations seen in M3
    logic [15:0] tdata_reg;
    logic        tvalid_reg;

    // Always ready to accept data if the core is ready
    assign s_axis_tready = core_ready;

    always_ff @(posedge aclk) begin
        if (!aresetn) begin
            tdata_reg  <= 16'b0;
            tvalid_reg <= 1'b0;
        end else if (s_axis_tvalid && s_axis_tready) begin
            tdata_reg  <= s_axis_tdata;
            tvalid_reg <= 1'b1;
        end else if (core_ready) begin
            tvalid_reg <= 1'b0; // Clear valid if core consumes it but no new data arrives
        end
    end

    // Route the pipelined INT8 data to the compute core
    assign rssi_out   = tdata_reg[15:8];
    assign weight_out = tdata_reg[7:0];
    assign valid_out  = tvalid_reg;

endmodule
