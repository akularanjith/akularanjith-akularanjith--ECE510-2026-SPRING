# CMAN - Sparsity Breakeven Analysis

**Parameters Given:** Matrix size $N = 512$, Sparsity $s$ = fraction of zeros ($0 \le s \le 1$). Total number of matrix elements is $N^2$. The number of non-zero elements (NNZ) is $N^2(1 - s)$.

---

### 1. Expressions for Compute and Memory (for $N = 512$)

Assuming 1 MAC (Multiply-Accumulate) operation equals 2 FLOPs (1 multiplication + 1 addition):

* **(a) Dense MVM compute (FLOPs):**
  * Generic Expression: $2N^2$
  * Evaluated for $N = 512$: $2 \times 512^2 = 524,288$ FLOPs

* **(b) Dense memory bytes:**
  * Generic Expression (4 bytes per FP32 element): $4N^2$
  * Evaluated for $N = 512$: $4 \times 512^2 = 1,048,576$ bytes ($\approx 1.05$ MB)

* **(c) Sparse compute (FLOPs):**
  * Generic Expression: $2N^2(1 - s)$
  * Evaluated for $N = 512$: $524,288(1 - s)$ FLOPs

* **(d) Sparse memory bytes:**
  * CSR format requires 4 bytes for values (FP32), 4 bytes for column indices (INT32) per non-zero element, and 4 bytes per row pointer (length $N + 1$, INT32).
  * Generic Expression: $8N^2(1 - s) + 4(N + 1)$
  * Evaluated for $N = 512$: $2,097,152(1 - s) + 2,052$ bytes

---

### 2. Theoretical Speedup (Compute FLOPs Ratio)

The theoretical compute speedup represents the ratio of Dense FLOPs to Sparse FLOPs:

$$\text{Speedup} = \frac{2N^2}{2N^2(1 - s)} = \frac{1}{1 - s}$$

To find the sparsity level $s$ where the FLOPs speedup equals $2\times$:

$$\frac{1}{1 - s} = 2 \implies 1 - s = 0.5 \implies s = 0.5$$

* **Answer:** A $2\times$ compute speedup is achieved at **$s = 0.5$ (50% sparsity)**.

---

### 3. Memory Breakeven Sparsity

The memory breakeven point occurs when the storage footprints for the sparse CSR format and the dense format are identical.

**Derivation:**
$$Sparse\ Memory = Dense\ Memory$$
$$8N^2(1 - s) + 4(N + 1) = 4N^2$$

Divide the entire equation by 4 to simplify:
$$2N^2(1 - s) + (N + 1) = N^2$$
$$2N^2 - 2N^2s + N + 1 = N^2$$
$$-2N^2s = -N^2 - N - 1$$
$$s = \frac{N^2 + N + 1}{2N^2} = 0.5 + \frac{N + 1}{2N^2}$$

**Calculation for $N = 512$:**
$$s = 0.5 + \frac{512 + 1}{2(512^2)} = 0.5 + \frac{513}{524,288}$$
$$s \approx 0.5 + 0.000978 = 0.500978$$

* **Answer:** The memory breakeven sparsity level is **$s \approx 0.501$ (or 50.1% sparsity)**. Above this threshold, the sparse CSR format uses less memory than dense storage.

---

### 4. End-to-End Speedup at $s = 0.9$ (Memory-Bound Case)

In a memory-bandwidth-limited system, execution time scales directly with the number of bytes transferred over the bus ($Time \propto Bytes$). Assuming hardware perfectly skips processing and transferring zero elements, the end-to-end speedup is the ratio of Dense Memory Bytes to Sparse Memory Bytes.

* **Dense Memory Footprint:** $4 \times 512^2 = 1,048,576$ bytes
* **Sparse Memory Footprint (at $s = 0.9$):**
  $$2,097,152 \times (1 - 0.9) + 2,052 = 209,715.2 + 2,052 = 211,767.2\text{ bytes}$$

**Speedup Ratio:**
$$\text{Speedup} = \frac{1,048,576}{211,767.2} \approx 4.9515\times$$

* **Answer:** For a system limited by a 320 GB/s memory bandwidth, the perfect architectural execution speedup at 90% sparsity is **~4.95×**.
