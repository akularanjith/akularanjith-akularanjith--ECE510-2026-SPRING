# Milestone 3: Automation, Linting, and Synthesis Flow
Target Core: INT8 Multiply-Accumulate (MAC) Compute Engine (`compute_core.sv`)
Interface: AXI4-Stream Bus Wrapper (`interface.sv`)

## Automation Strategy
1. **Linting & Elaborating**: Verify the data paths for the `Conv2D._im2col` parallel array using strict Verilator compliance checks.
2. **Logic Synthesis**: Utilize the OpenLane2/Yosys automation flow to target the 80 GFLOP/s hardware threshold.
3. **Timing Optimization**: Map standard cells to ensure minimal negative slack under high clock frequencies to meet physical design guidelines.
