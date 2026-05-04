`timescale 1ns/1ps

module tb_interface();
    logic aclk = 0;
    logic aresetn = 0;
    logic [15:0] s_axis_tdata = 0;
    logic s_axis_tvalid = 0;
    logic s_axis_tready;
    logic s_axis_tlast = 0;
    logic [31:0] m_axis_tdata;
    logic m_axis_tvalid;
    logic m_axis_tready = 1;
    logic m_axis_tlast;

    axis_interface dut (.*);

    always #5 aclk = ~aclk;

    initial begin
        $dumpfile("sim/dump_interface.vcd");
        $dumpvars(0, tb_interface);
        
        aresetn = 0; #20;
        aresetn = 1; #10;

        s_axis_tvalid = 1; s_axis_tdata = 16'h0AFB; #10;
        s_axis_tdata = 16'h1403; s_axis_tlast = 1; #10;
        s_axis_tvalid = 0; s_axis_tlast = 0;

        wait(m_axis_tvalid == 1); #20;

        if (m_axis_tdata !== 0)
            $display("PASS: Interface AXI-Stream simulation successful!");
        else
            $display("FAIL: No data output");

        $finish;
    end
endmodule