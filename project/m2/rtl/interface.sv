module axis_interface #(
    parameter DATA_WIDTH = 8,
    parameter ACC_WIDTH = 32
)(
    input  logic aclk,
    input  logic aresetn,
    input  logic [15:0] s_axis_tdata,
    input  logic s_axis_tvalid,
    output logic s_axis_tready,
    input  logic s_axis_tlast,
    output logic [ACC_WIDTH-1:0] m_axis_tdata,
    output logic m_axis_tvalid,
    input  logic m_axis_tready,
    output logic m_axis_tlast
);
    logic [ACC_WIDTH-1:0] core_acc_out;
    logic [1:0] valid_pipe;
    logic [1:0] last_pipe;

    assign s_axis_tready = m_axis_tready;

    compute_core #(
        .DATA_WIDTH(DATA_WIDTH),
        .ACC_WIDTH(ACC_WIDTH)
    ) core_inst (
        .clk(aclk),
        .rst(~aresetn),
        .weight(s_axis_tdata[15:8]),
        .feature_in(s_axis_tdata[7:0]),
        .valid_in(s_axis_tvalid && s_axis_tready),
        .acc_out(core_acc_out)
    );

    always_ff @(posedge aclk) begin
        if (!aresetn) begin
            valid_pipe <= 2'b00;
            last_pipe  <= 2'b00;
        end else if (m_axis_tready) begin
            valid_pipe <= {valid_pipe[0], s_axis_tvalid};
            last_pipe  <= {last_pipe[0], s_axis_tlast};
        end
    end

    assign m_axis_tdata  = core_acc_out;
    assign m_axis_tvalid = valid_pipe[1];
    assign m_axis_tlast  = last_pipe[1];
endmodule