
module mac (
    input  logic clk,
    input  logic rst,
    input  logic signed [7:0] a,
    input  logic signed [7:0] b,
    out                         // ERROR: Missing port direction and type
);

    // This will fail because 'out' isn't defined as an output or a logic type
    always_ff @(posedge clk) begin
        if (rst) out <= 32'sd0;
        else out <= out + (a * b);
    end

endmodule
