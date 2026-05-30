
# GEMM CUDA Analysis

**(a) Why the naive kernel is memory-bound:**
In my testing, the naive kernel achieved 20.83 GFLOP/s. It is heavily memory-bound because its Arithmetic Intensity is only 0.25 FLOP/byte. 
On the Tesla T4, the ridge point is roughly 25.3 FLOP/byte. Because the kernel requires a massive amount of DRAM traffic-fetching a full row and column for 
every single multiply-accumulate-the compute cores spend most of their time waiting for data from the relatively slow global memory, leading to low 
hardware utilization.

**(b) How tiling reduces DRAM traffic:**
Tiling reduces DRAM traffic by loading data into the fast, on-chip __shared__ memory. Instead of every thread fetching data from DRAM individually, a block 
of threads collaboratively loads an 8x8 tile. This allows each piece of data to be reused 8 times by the threads in the block. This increases the 
Arithmetic Intensity to 2.0 FLOP/byte, which significantly reduces the pressure on the DRAM bandwidth and allows for better performance.

**(c) Did the tiled kernel achieve expected improvements?**
Yes, the tiled kernel improved performance to 91.23 GFLOP/s, a 4.3x speedup over the naive version. However, it is still far below the T4's theoretical 
peak of 8,100 GFLOP/s. This is because at T=8, the kernel is still memory-bound according to my roofline plot. To reach the compute-bound region, we would 
need to implement more advanced techniques like thread coarsening or larger tile sizes (like T=16 or T=32) to better saturate the hardware, as T=8 results 
in smaller thread blocks that may not fully hide memory latency.
