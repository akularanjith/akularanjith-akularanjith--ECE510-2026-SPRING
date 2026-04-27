
module localization_core #(
    parameter WIDTH = 8
)(
    input  logic clk,
    input  logic rst,
    input  logic signed [WIDTH-1:0] rssi_sample,
    output logic signed [31:0] accumulated_rssi
);
    // Standard 32-bit register (will wrap on overflow)
    always_ff @(posedge clk) begin
        if (rst) accumulated_rssi <= 32'sd0;
        else     accumulated_rssi <= accumulated_rssi + rssi_sample;
    end
endmodule
