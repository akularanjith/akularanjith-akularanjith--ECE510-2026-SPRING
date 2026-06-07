# M4 Benchmark Comparison

## Measured Accelerator Throughput
* **Clock Period:** 20.0 ns (50 MHz frequency).
* **Throughput:** 50,000,000 RSSI samples/sec (100 MFLOP/s).
* **Measurement Method:** Derived from the post-synthesis clock frequency and the hardware simulation waveform, which proves the fully pipelined datapath accepts and computes one new valid input every clock cycle.

## Speedup vs M1 Software Baseline
* **M1 Software Baseline Throughput:** 183.18 samples/sec.
* **M4 Accelerator Throughput:** 50,000,000 samples/sec.
* **Speedup Ratio:** (50,000,000 / 183.18) = **272,955x** speedup.
* **Analysis:** The massive speedup is due to transitioning from a high-level sequential Python loop on an OS task scheduler to a dedicated, pipelined INT8 MAC hardware execution matrix.

## Energy Comparison
The M4 hardware accelerator is orders of magnitude more energy-efficient. The OpenROAD synthesis power report estimates dynamic power in the low milliwatt range for the layout, whereas the M1 software baseline was executed on an Intel Core i7-12700H CPU, which has a base thermal design power (TDP) of 45W.
