module crossbar_tb;
    logic clk;
    logic rst;
    
    logic signed [7:0] in0, in1, in2, in3;
    logic signed [7:0] w00, w01, w02, w03;
    logic signed [7:0] w10, w11, w12, w13;
    logic signed [7:0] w20, w21, w22, w23;
    logic signed [7:0] w30, w31, w32, w33;
    
    logic signed [15:0] out0, out1, out2, out3;

    // Connect everything explicitly
    crossbar_mac dut (.*);

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
        // Initialize Reset
        rst = 1;
        
        // Load Weights manually
        w00 =  1; w01 = -1; w02 =  1; w03 = -1;
        w10 =  1; w11 =  1; w12 = -1; w13 = -1;
        w20 = -1; w21 =  1; w22 =  1; w23 = -1;
        w30 = -1; w31 = -1; w32 = -1; w33 =  1;

        // Apply Inputs
        in0 = 10; in1 = 20; in2 = 30; in3 = 40;

        // Release reset cleanly *between* clock edges
        #12 rst = 0;

        // Wait for computation
        #30;
        
        $display("-------------------------------------------------");
        $display(" Crossbar MAC Simulation Results");
        $display("-------------------------------------------------");
        $display("Expected : out[0]=-40, out[1]=  0, out[2]=-20, out[3]=-20");
        $display("Actual   : out[0]=%3d, out[1]=%3d, out[2]=%3d, out[3]=%3d", 
                  out0, out1, out2, out3);
        
        if (out0 == -40 && out1 == 0 && out2 == -20 && out3 == -20)
            $display("STATUS   : PASS");
        else
            $display("STATUS   : FAIL");
        $display("-------------------------------------------------");

        $finish;
    end
endmodule
