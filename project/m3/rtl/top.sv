`timescale 1ns / 1ps

/*
 * Module: top
 * Description: Integrated top-level module for the CNN MAC Hardware Accelerator.
 *
 * Port List Documentation (M3 Requirement):
 * -----------------------------------------------------------------------------
 * Name            | Direction | Width | Role
 * ----------------|-----------|-------|----------------------------------------
 * aclk            | input     | 1     | Master system clock.
 * aresetn         | input     | 1     | Active-low synchronous reset.
 * s_axis_tdata    | input     | 16    | AXI4-Stream slave data (INT8 features/weights).
 * s_axis_tvalid   | input     | 1     | AXI4-Stream slave valid signal.
 * s_axis_tready   | output    | 1     | AXI4-Stream slave ready signal.
 * s_axis_tlast    | input     | 1     | AXI4-Stream slave last signal.
 * m_axis_tdata    | output    | 32    | AXI4-Stream master data (INT32 MAC result).
 * m_axis_tvalid   | output    | 1     | AXI4-Stream master valid signal.
 * m_axis_tready   | input     | 1     | AXI4-Stream master ready signal.
 * m_axis_tlast    | output    | 1     | AXI4-Stream master last signal.
 * -----------------------------------------------------------------------------
 *
 * Glue Logic Identification (M3 Requirement):
 * None required.
 */

module top (
    input  wire         aclk,
    input  wire         aresetn,
    
    // AXI4-Stream Slave Interface (Updated to 16 bits to match M2 core)
    input  wire [15:0]  s_axis_tdata,
    input  wire         s_axis_tvalid,
    output wire         s_axis_tready,
    input  wire         s_axis_tlast,
    
    // AXI4-Stream Master Interface
    output wire [31:0]  m_axis_tdata,
    output wire         m_axis_tvalid,
    input  wire         m_axis_tready,
    output wire         m_axis_tlast
);

    axis_interface cnn_mac_wrapper (
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

endmodule
