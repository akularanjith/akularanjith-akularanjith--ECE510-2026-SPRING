
module mac_tb;
    logic clk;
    logic rst;
    logic signed [7:0] a;
    logic signed [7:0] b;
    logic signed [31:0] out;

    // Instantiate the Unit Under Test (UUT)
    mac uut (.*);

    // Clock generation (10ns period)
    initial clk = 0;
    always #5 clk = ~clk;

    // --- ADDED FOR WAVEFORMS ---
    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0, mac_tb);
    end
    // ---------------------------

    initial begin
        // Initialize
        rst = 1; a = 0; b = 0;
        #10; 
        
        // Start Simulation
        rst = 0;
        $display("--- Starting Simulation ---");
        $monitor("Time=%0t | rst=%b | a=%d | b=%d | out=%d", $time, rst, a, b, out);

        // Task: Apply [a=3, b=4] for 3 cycles
        a = 3; b = 4;
        #30; 

        // Task: Assert rst
        rst = 1;
        #10;
        rst = 0;

        // Task: Apply [a=-5, b=2] for 2 cycles
        a = -5; b = 2;
        #20;

        $display("--- Simulation Finished ---");
        $finish;
    end
endmodule
