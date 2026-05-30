module mac (
    input  logic clk,
    input  logic rst,
    input  logic signed [7:0] a,
    input  logic signed [7:0] b,
    output logic signed [31:0] out
);

    logic signed [31:0] prod;

    // Combinational logic for multiplication
    assign prod = a * b;

    // Sequential logic for accumulation
    always_ff @(posedge clk) begin
        if (rst) begin
            out <= 32'sd0;
        end else begin
            out <= out + prod;
        end
    end

    // --- COPT Verification Block ---
    // This allows cocotb to record signals for GTKWave
    initial begin
        $dumpfile("dump.vcd"); // Creates the wave file
        $dumpvars(0, mac);      // Dumps all signals in this module
    end

endmodule