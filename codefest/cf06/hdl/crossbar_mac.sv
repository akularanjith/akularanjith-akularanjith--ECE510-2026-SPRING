module crossbar_mac (
    input  logic clk,
    input  logic rst,
    input  logic signed [7:0] in0, in1, in2, in3,
    input  logic signed [7:0] w00, w01, w02, w03,
    input  logic signed [7:0] w10, w11, w12, w13,
    input  logic signed [7:0] w20, w21, w22, w23,
    input  logic signed [7:0] w30, w31, w32, w33,
    output logic signed [15:0] out0, out1, out2, out3
);
    always_ff @(posedge clk or posedge rst) begin
        if (rst) begin
            out0 <= 16'd0; out1 <= 16'd0; out2 <= 16'd0; out3 <= 16'd0;
        end else begin
            // Accumulate each column manually
            out0 <= (in0 * w00) + (in1 * w10) + (in2 * w20) + (in3 * w30);
            out1 <= (in0 * w01) + (in1 * w11) + (in2 * w21) + (in3 * w31);
            out2 <= (in0 * w02) + (in1 * w12) + (in2 * w22) + (in3 * w32);
            out3 <= (in0 * w03) + (in1 * w13) + (in2 * w23) + (in3 * w33);
        end
    end
endmodule
