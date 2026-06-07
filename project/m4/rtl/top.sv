`timescale 1ns / 1ps

module top (
    input  logic        aclk,
    input  logic        aresetn,
    
    // Top-Level AXI4-Stream Slave (Input)
    input  logic [15:0] s_axis_tdata,
    input  logic        s_axis_tvalid,
    output logic        s_axis_tready,
    
    // Top-Level AXI4-Stream Master (Output)
    output logic [31:0] m_axis_tdata,
    output logic        m_axis_tvalid,
    input  logic        m_axis_tready
);

    // Internal routing wires connecting interface to compute core
    logic [7:0] internal_rssi;
    logic [7:0] internal_weight;
    logic       internal_valid;
    logic       internal_ready;

    // Instantiate the AXI Interface
    interface_unit u_interface (
        .aclk          (aclk),
        .aresetn       (aresetn),
        .s_axis_tdata  (s_axis_tdata),
        .s_axis_tvalid (s_axis_tvalid),
        .s_axis_tready (s_axis_tready),
        .rssi_out      (internal_rssi),
        .weight_out    (internal_weight),
        .valid_out     (internal_valid),
        .core_ready    (internal_ready)
    );

    // Instantiate the Compute Core
    compute_core u_compute (
        .aclk          (aclk),
        .aresetn       (aresetn),
        .rssi_in       (internal_rssi),
        .weight_in     (internal_weight),
        .valid_in      (internal_valid),
        .core_ready    (internal_ready),
        .psum_out      (m_axis_tdata),
        .psum_valid    (m_axis_tvalid),
        .m_axis_tready (m_axis_tready)
    );

endmodule
