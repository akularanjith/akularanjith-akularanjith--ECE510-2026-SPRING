
# Arithmetic Intensity Calculation for Dominant Kernel

**Dominant Kernel Identification:**
The dominant kernel is the Conv2D forward pass (specifically `_im2col`), accounting for approximately 94% of the total execution time based on the cProfile 
output.

### 1. FLOPs Calculation
We calculate the total floating-point operations analytically for the convolution operation:
* **Formula:** $FLOPs = 2 \cdot N \cdot C_{in} \cdot k^2 \cdot H_{out} \cdot W_{out} \cdot C_{out}$
* **Substitution:** $2 \cdot 32 \cdot 1 \cdot 9 \cdot 256 \cdot 8 = 1,179,648$ FLOPs

### 2. Bytes Transferred (FP64 / 8 bytes per element)
We assume a DRAM access model with no reuse, reflecting the duplication of data during the `im2col` process:
* **Load Input Patch:** $N \cdot C_{in} \cdot k^2 \cdot H_{out} \cdot W_{out} = 32 \cdot 1 \cdot 9 \cdot 256 = 73,728$ elements
* **Load Weights:** $C_{out} \cdot C_{in} \cdot k^2 = 8 \cdot 1 \cdot 9 = 72$ elements
* **Store Output:** $N \cdot C_{out} \cdot H_{out} \cdot W_{out} = 32 \cdot 8 \cdot 256 = 65,536$ elements
* **Total Elements:** $73,728 + 72 + 65,536 = 139,336$ elements

**Total Bytes:** $139,336 \cdot 8 = 1,114,688$ Bytes

### 3. Arithmetic Intensity (AI)
    AI=Flops/Bytes
* **AI:** $1,179,648 \text{ FLOPs} / 1,114,688 \text{ Bytes} = 1.058 \text{ FLOP/byte}$
