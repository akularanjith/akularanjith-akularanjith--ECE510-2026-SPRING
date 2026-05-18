
# Heilmeier Questions

### 1. What are you trying to do?
I am developing a hardware accelerator for an Indoor Localization Convolutional Neural Network (CNN). Specifically, the project targets the acceleration 
of the `Conv2D._im2col` kernel, which is responsible for the spatial patch extraction and matrix formatting required during the convolution layers.

### 2. What is done today, and what are the limits of current practice?
Currently, the indoor localization CNN runs entirely in software on a standard CPU. Based on my profiling data, the limits of this current practice are 
severely exposed by the spatial transformation functions. Training the model for 10 epochs takes ~10.9 seconds, and the cProfile output proves that the 
nested Python loops inside the `_im2col` (and `_col2im`) functions act as a massive compute bottleneck. The instruction overhead of managing these loops 
completely dominates the execution time, preventing the CPU from efficiently performing the core matrix mathematics.

### 3. What is new in your approach and why do you think it will be successful?
My approach eliminates the software loop overhead by moving the `_im2col` matrix formatting and subsequent convolution math to a custom hardware 
accelerator.This will be successful because it directly attacks the bottleneck identified in profiling. Based on my roofline model analysis, the kernel 
has an arithmetic intensity of 1.058 FLOP/byte. The current software implementation is inefficient, running at a fraction of a GFLOP/s 
(e.g., ~0.5 GFLOP/s). By utilizing dedicated hardware with on-chip SRAM, the accelerator will push performance up to a target throughput of 80 GFLOP/s, 
effectively breaking through the standard memory bandwidth roof and shifting the operation much closer to the theoretical compute ceiling.
