`timescale 1ns / 1ps

module localization_core (
    input  wire         aclk,
    input  wire         aresetn,
    
    // AXI4-Stream Slave Interface (Receiving 2D Radio Map Features)
    input  wire [7:0]   s_axis_tdata,
    input  wire         s_axis_tvalid,
    output wire         s_axis_tready,
    input  wire         s_axis_tlast,
    
    // AXI4-Stream Master Interface (Sending 32-bit MAC Results)
    output wire [31:0]  m_axis_tdata,
    output wire         m_axis_tvalid,
    input  wire         m_axis_tready,
    output wire         m_axis_tlast
);

    // Instantiate the CNN AXI Interface (which holds the compute_core)
    // This directly links your top-level pins to the interface we verified tonight.
    interface cnn_mac_wrapper (
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
