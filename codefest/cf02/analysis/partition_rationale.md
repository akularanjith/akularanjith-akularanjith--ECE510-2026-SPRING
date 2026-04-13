
# HW/SW Partition Proposal for Indoor Localization CNN

(a) Hardware Acceleration Target
[cite_start]Based on the profiling analysis, the computationally dominant kernel is the Conv2D forward pass, specifically the `_im2col` spatial patch 
extraction and its resulting dense matrix multiplication[cite: 83, 84].I will accelerate this kernel by offloading it to a dedicated hardware chiplet. 
[cite_start]The roofline model supports this choice because the software implementation forces the CPU to execute nested spatial loops, severely 
bottlenecking throughput and keeping the application far below the hardware's theoretical compute ceiling[cite: 84].

(b) Software Baseline Responsibilities
The software baseline running on the host CPU will continue to handle data ingestion of the raw RSSI signal arrays, the MaxPool2D operations, ReLU 
activations, and the final Dense classification layers. These layers account for a minimal fraction of the total execution time and involve complex memory 
addressing that is less efficient to hardwire in RTL than standard convolutions.

(c) Interface Bandwidth Requirements
To prevent the hardware accelerator from becoming interface-bound, the system requires a high-throughput connection. Assuming a target hardware compute 
throughput of 80 GFLOP/s and an arithmetic intensity of roughly 1.058 FLOP/byte, the interface must sustain approximately 75.6 GB/s of memory bandwidth 
(80 / 1.058) to feed the MAC arrays without stalling. 

(d) Bound Classification
[cite_start]On my current CPU setup, the kernel is currently compute-bound due to the instruction overhead of Python loops in the `_im2col` function
[cite: 84]. By transferring the convolution to a pipelined hardware accelerator with dedicated SRAM for weight caching, the design will significantly 
increase performance. As shown on the roofline plot, at 80 GFLOP/s and 1.058 AI, the design sits above the laptop's bandwidth roof, meaning the accelerator
 will shift the bottleneck from compute-bound to memory-bound.
