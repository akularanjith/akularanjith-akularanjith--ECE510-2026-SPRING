
# CMAN: DRAM Traffic Analysis

**Constants:**
* Matrix Size (N): 32
* Data Type: FP32 (4 bytes per element)
* Compute: 10 TFLOP/s
* Bandwidth: 320 GB/s
* Total FLOPs: 2 * N^3 = 65,536 FLOPs

### 1. Naive Triple Loop Traffic
* **Formula:** 2 * N^3 element accesses * 4 bytes/element.
* **Calculation:** 2 * 32^3 * 4 = 262,144 bytes.

### 2. Tiled Loop Traffic (T = 8)
* **Formula:** 2 * (N/T) * N^2 element accesses * 4 bytes/element.
* **Calculation:** 2 * (32/8) * 32^2 * 4 = 32,768 bytes.

### 3. Traffic Ratio
* **Ratio:** N = 32.
* **Justification:** In the naive approach, every element is fetched from DRAM N times, whereas an ideal tiled approach (where T=N) fetches every element 
only once, resulting in a traffic reduction factor exactly equal to the matrix dimension N.

### 4. Execution Time & Bounds
* **Compute Time:** 65,536 FLOPs / 10e12 FLOP/s = 6.55 ns.
* **Naive Execution Time:** 262,144 Bytes / 320 GB/s = 819.2 ns.
* **Naive Bound:** Heavily Memory-Bound.
* **Tiled Execution Time:** 32,768 Bytes / 320 GB/s = 102.4 ns.
* **Tiled Bound:** Still Memory-Bound, but significantly closer to the compute ridge point.
