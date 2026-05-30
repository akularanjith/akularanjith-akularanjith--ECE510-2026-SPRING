# Remaining Tasks for M4

1. **Optimize Critical Path Timing:** Refactor the combinatorial logic chain in `compute_core.sv` between input `s_axis_tdata[15]` and register `_1317_` by inserting pipeline registers to resolve the setup violation at 100MHz.
2. **Relax Synthesis Constraints:** If pipelining does not fully resolve the violation, adjust the `config.json` OpenLane clock period constraint from 10.0ns to 12.0ns and verify the impact on overall throughput.
3. **Enhance Testbench Coverage:** Expand the Python cocotb testbench to inject randomized backpressure on the AXI4-Stream `m_axis_tready` signal, ensuring the compute core stalls correctly without data loss.
