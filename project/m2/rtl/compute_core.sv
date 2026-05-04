// ==============================================================================
// Module: compute_core
// Description: INT8 Multiply-Accumulate (MAC) Processing Element for CNN 
//              spatial feature extraction.
//
// Clock Domain: Single clock domain (clk). No clock crossings exist.
// Reset: Synchronous, active-high reset (rst).
//
// Ports:
//  - clk        : input  : 1-bit  : System clock.
//  - rst        : input  : 1-bit  : Synchronous active-high reset.
//  - weight     : input  : 8-bit  : Signed INT8 weight from the CNN filter.
//  - feature_in : input  : 8-bit  : Signed INT8 RSSI feature sample.
//  - valid_in   : input  : 1-bit  : Control signal; high when inputs are valid.
//  - acc_out    : output : 32-bit : Signed 32-bit accumulated partial sum.
// ==============================================================================

module compute_core #(
    parameter DATA_WIDTH = 8,
    parameter ACC_WIDTH = 32
)(
    input  logic clk,
    input  logic rst,
    input  logic signed [DATA_WIDTH-1:0] weight,
    input  logic signed [DATA_WIDTH-1:0] feature_in,
    input  logic valid_in,
    output logic signed [ACC_WIDTH-1:0] acc_out
);

    // Internal pipeline registers
    logic signed [DATA_WIDTH*2-1:0] product;

    // Synchronous MAC logic
    always_ff @(posedge clk) begin
        if (rst) begin
            product <= '0;
            acc_out <= '0;
        end else if (valid_in) begin
            // Stage 1: Multiply RSSI by CNN weight
            product <= weight * feature_in;
            // Stage 2: Accumulate into the 32-bit register
            acc_out <= acc_out + product;
        end
    end

endmodule
