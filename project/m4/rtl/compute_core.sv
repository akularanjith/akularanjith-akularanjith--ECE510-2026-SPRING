`timescale 1ns / 1ps

module compute_core (
    input  logic        aclk,
    input  logic        aresetn,
    
    // Data from Interface
    input  logic [7:0]  rssi_in,
    input  logic [7:0]  weight_in,
    input  logic        valid_in,
    output logic        core_ready,
    
    // AXI4-Stream Master Interface (Output back to host)
    output logic [31:0] psum_out,      // 32-bit verified accumulator output
    output logic        psum_valid,
    input  logic        m_axis_tready
);

    // 16-bit wire to hold the direct result of INT8 x INT8
    logic signed [15:0] mult_result;
    
    // 32-bit verified partial sum accumulator register
    logic signed [31:0] accumulator;

    // The MAC array is ready when the downstream output is ready
    assign core_ready = m_axis_tready;
    
    // INT8 Combinational Multiplication
    // Treating the RSSI signal and CNN weight as signed integers
    assign mult_result = $signed(rssi_in) * $signed(weight_in);

    always_ff @(posedge aclk) begin
        if (!aresetn) begin
            accumulator <= 32'b0;
            psum_valid  <= 1'b0;
        end else if (valid_in && core_ready) begin
            // Safely accumulate the 16-bit multiplication into the 32-bit bucket
            accumulator <= accumulator + $signed(mult_result);
            psum_valid  <= 1'b1;
        end else if (m_axis_tready) begin
            psum_valid  <= 1'b0;
        end
    end

    // Assign final running total to the output port
    assign psum_out = accumulator;

endmodule
