# Roofline Analysis

The plotted accelerator point lands firmly in the memory-bound region of the roofline model. The gap between our theoretical compute peak and our attainable performance (6.77 GFLOP/s) exists because our application's arithmetic intensity (1.058 FLOP/byte) is far too low to saturate the core's computational capacity. At 100MHz, our 512-bit AXI4-Stream interface caps out at a projected 6.4 GB/s. 

Because we used the projected fallback path, the dominant uncertainty in this analysis is the actual effective bandwidth of the AXI interface when connected to a host memory system, which is often much lower than the theoretical 6.4 GB/s peak due to burst overhead and memory controller latency. To convert this projection into a true measurement, we must deploy the design to an FPGA SoC and measure end-to-end execution time with a hardware timer.
