`timescale 1ns/1ps

module tb_compute_core();
    // Testbench signals
    logic clk;
    logic rst;
    logic signed [7:0] weight;
    logic signed [7:0] feature_in;
    logic valid_in;
    logic signed [31:0] acc_out;

    // Instantiate the Compute Core (DUT)
    compute_core #(.DATA_WIDTH(8), .ACC_WIDTH(32)) dut (
        .clk(clk),
        .rst(rst),
        .weight(weight),
        .feature_in(feature_in),
        .valid_in(valid_in),
        .acc_out(acc_out)
    );

    // Clock generation (10ns period)
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    // Simulation sequence
    initial begin
        $dumpfile("sim/dump.vcd");
        $dumpvars(0, tb_compute_core);

        // 1. Apply Reset
        rst = 1;
        valid_in = 0;
        weight = 8'sd0;
        feature_in = 8'sd0;
        #20;
        rst = 0;
        #10;

        // 2. Input 1: Weight = 10, RSSI = -5 (product: -50)
        valid_in = 1;
        weight = 8'sd10;
        feature_in = -8'sd5;
        #10; 
        
        // 3. Input 2: Weight = 20, RSSI = 3 (product: 60)
        weight = 8'sd20;
        feature_in = 8'sd3;
        #10;

        // -> NEW: Flush the pipeline (1 extra cycle for the last addition)
        weight = 8'sd0;
        feature_in = 8'sd0;
        #10;
        
        valid_in = 0; // Stop pipeline
        #10;

        // 4. Independent Reference Check
        if (acc_out === 32'sd10) begin
            $display("========================================");
            $display("PASS: Compute core matched expected output (10).");
            $display("========================================");
        end else begin
            $display("FAIL: Expected 10, got %d", acc_out);
        end

        #20 $finish;
    end
endmodule
