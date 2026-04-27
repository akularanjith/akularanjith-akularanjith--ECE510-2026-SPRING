
module mac (
    input  logic clk,
    input  logic rst,
    input  logic signed [7:0] a,
    input  logic signed [7:0] b,
    output logic signed [31:0] out
);

    // Synchronous sequential logic for accumulation
    always_ff @(posedge clk) begin
        if (rst) begin
            // Reset the accumulator to 0 on the clock edge
            out <= 32'sd0;
        end else begin
            // Multiply-Accumulate logic:
            // Casts 8-bit inputs to 32-bit signed values to ensure proper sign extension
            out <= out + (32'(a) * 32'(b));
        end
    end

endmodule
