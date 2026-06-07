`timescale 1ns / 1ps

module tb_top();

    // 12ns clock period (83.33 MHz)
    logic aclk;
    logic aresetn;
    
    // AXI4-Stream Slave Interface (Input)
    logic [15:0] s_axis_tdata;
    logic        s_axis_tvalid;
    logic        s_axis_tready;
    
    // AXI4-Stream Master Interface (Output)
    logic [31:0] m_axis_tdata;
    logic        m_axis_tvalid;
    logic        m_axis_tready;

    // Instantiate the Top Module
    top dut (
        .aclk(aclk),
        .aresetn(aresetn),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tvalid(s_axis_tvalid),
        .s_axis_tready(s_axis_tready),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tvalid(m_axis_tvalid),
        .m_axis_tready(m_axis_tready)
    );

    // Clock Generation
    initial begin
        aclk = 0;
        forever #6 aclk = ~aclk; 
    end

    // Test Sequence
    initial begin
        // Setup waveform dumping for GTKWave
        $dumpfile("project/m4/sim/waveform.vcd");
        $dumpvars(0, tb_top);

        // 1. Initialize and Reset
        aresetn = 0;
        s_axis_tvalid = 0;
        s_axis_tdata = 0;
        m_axis_tready = 1; // Always ready to receive output

        #24; // Wait two clock cycles
        @(negedge aclk);
        aresetn = 1;

        // 2. Stress Test: Feed Maximum INT8 Values (127 x 127)
        // Using negedge prevents simulator race conditions
        @(negedge aclk);
        s_axis_tdata  = {8'd127, 8'd127}; 
        s_axis_tvalid = 1;
        
        // 3. Feed a second set of values (2 x 3)
        @(negedge aclk);
        s_axis_tdata  = {8'd2, 8'd3};
        
        // 4. Stop sending data
        @(negedge aclk);
        s_axis_tvalid = 0;

        // Wait for the pipeline and accumulator to process
        #100;
        
        // 5. Verification Check
        // 127*127 + 2*3 = 16129 + 6 = 16135
        if (m_axis_tdata === 32'd16135) begin
            $display("========================================");
            $display("SIMULATION RESULT: PASS");
            $display("Expected 32-bit Accumulator Output: 16135");
            $display("Actual 32-bit Accumulator Output:   %0d", m_axis_tdata);
            $display("========================================");
        end else begin
            $display("========================================");
            $display("SIMULATION RESULT: FAIL");
            $display("Expected: 16135, Got: %0d", m_axis_tdata);
            $display("========================================");
        end

        $finish;
    end

endmodule
