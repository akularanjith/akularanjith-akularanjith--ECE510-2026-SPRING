`timescale 1ns / 1ps

module tb_top();

    // Clock and Reset
    reg         aclk;
    reg         aresetn;

    // AXI4-Stream Slave
    reg  [15:0] s_axis_tdata;
    reg         s_axis_tvalid;
    wire        s_axis_tready;
    reg         s_axis_tlast;

    // AXI4-Stream Master
    wire [31:0] m_axis_tdata;
    wire        m_axis_tvalid;
    reg         m_axis_tready;
    wire        m_axis_tlast;

    integer i;
    reg signed [7:0] features [0:8];
    reg signed [7:0] weights  [0:8];

    // Instantiate Top Module
    top dut (
        .aclk(aclk),
        .aresetn(aresetn),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tvalid(s_axis_tvalid),
        .s_axis_tready(s_axis_tready),
        .s_axis_tlast(s_axis_tlast),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tvalid(m_axis_tvalid),
        .m_axis_tready(m_axis_tready),
        .m_axis_tlast(m_axis_tlast)
    );

    // Clock Generation
    initial begin
        aclk = 0;
        forever #5 aclk = ~aclk;
    end

    // VCD Dumping
    initial begin
        $dumpfile("m3/sim/cosim.vcd");
        $dumpvars(0, tb_top);
    end

    // Test Stimulus
    initial begin
        // Manually load the array. 9th feature is 0 so expected sum is exactly -4
        features[0] = 1; features[1] = -2; features[2] = 3;
        features[3] = -4; features[4] = 5; features[5] = -6;
        features[6] = 7; features[7] = -8; features[8] = 0;

        weights[0] = 1; weights[1] = 1; weights[2] = 1;
        weights[3] = 1; weights[4] = 1; weights[5] = 1;
        weights[6] = 1; weights[7] = 1; weights[8] = 1;

        // Initialize signals
        aresetn = 0;
        s_axis_tdata = 0;
        s_axis_tvalid = 0;
        s_axis_tlast = 0;
        m_axis_tready = 1; 

        // Assert reset
        #20 aresetn = 1;
        #10;

        // --- HOST WRITE TRANSACTION ---
        for (i = 0; i < 9; i = i + 1) begin
            // Pack the data and assert valid
            s_axis_tdata = {features[i], weights[i]}; 
            s_axis_tvalid = 1;
            s_axis_tlast = (i == 8) ? 1'b1 : 1'b0;
            
            // Wait for the clock edge
            @(posedge aclk);
            
            // If core is not ready, hold the data until it is
            while (s_axis_tready == 0) begin
                @(posedge aclk);
            end
        end
        
        // Deassert signals after loop finishes
        s_axis_tvalid = 0;
        s_axis_tlast = 0;

        // --- HOST READ TRANSACTION & VERIFICATION ---
        wait(m_axis_tvalid == 1);
        @(posedge aclk);
        
        // Expected INT32 MAC Result: -4 (32'hfffffffc)
        if (m_axis_tdata == 32'hfffffffc) begin
            $display("========================================");
            $display("PASS");
            $display("========================================");
        end else begin
            $display("========================================");
            $display("FAIL: Expected fffffffc, Got %h", m_axis_tdata);
            $display("========================================");
        end

        #20 $finish;
    end
endmodule
