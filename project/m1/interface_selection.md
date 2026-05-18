
# Interface Selection

1.Chosen Interface:** AXI4-Stream 

2.Host Platform Assumed:** FPGA SoC (e.g., Xilinx Zynq) acting as the host for the hardware accelerator.

3. Bandwidth Requirement Calculation:

To support the target operating point of 80 GFLOP/s at the identified arithmetic intensity, the required bandwidth is calculated as follows:
Target Throughput: 80 GFLOP/s
Arithmetic Intensity (AI): 1.058 FLOP/byte
Required Bandwidth: $80 \text{ GFLOP/s} \div 1.058 \text{ FLOP/byte} \approx \mathbf{75.61 \text{ GB/s}}$

4. Bottleneck Status and Quantified Impact:
[cite_start]The required bandwidth of 75.61 GB/s is significantly higher than the capacity of the chosen interface[cite: 107]. 

Interface Capacity: A standard AXI4-Stream interface (512-bit width at 300 MHz) provides approximately 19.2 GB/s of peak bandwid
Bottleneck Status: This design is severely interface-bound on the roofline model.
Quantified Impact: Without on-chip data reuse/SRAM caching, the attainable performance is capped by the interface at:
$$19.2 \text{ GB/s} \cdot 1.058 \text{ FLOP/byte} \approx \mathbf{20.31 \text{ GFLOP/s}}$$

Conclusion:
To reach the 80 GFLOP/s target, the hardware architecture must prioritize on-chip memory reuse to increase the effective arithmetic intensity and reduce 
the reliance on external interface bandwidth.
