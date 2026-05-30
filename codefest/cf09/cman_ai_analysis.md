# CMAN Arithmetic Intensity Analysis

## 1. Kernel Definition
* **Dominant Kernel:** 1D Convolution (MAC operations) within the CNN compute core.
* **Dimensions:** * Filter Size ($K$): 3
  * Input Channels ($C_{in}$): 1
  * Output Channels ($C_{out}$): 16
  * Input Sequence Length ($L$): 200
* **Data Types:** 16-bit integers (2 bytes) for both activations and weights.

## 2. FLOPs Count (Operations)
For a 1D convolution, the number of Multiply-Accumulate (MAC) operations is:
$$\text{MACs} = L \times K \times C_{in} \times C_{out}$$
$$\text{MACs} = 200 \times 3 \times 1 \times 16 = 9,600 \text{ MACs}$$
Since 1 MAC = 2 FLOPs (one multiply, one add):
$$\text{Total FLOPs} = 9,600 \times 2 = \mathbf{19,200 \text{ FLOPs}}$$

## 3. Byte Transfers & AI Calculations (The Reuse Pattern)
The appropriate reuse pattern for this 1D Convolution is **Output Stationary / Filter Reuse**.

**Lower Bound (No Data Reuse):**
Every MAC requires fetching 1 activation (2 bytes), 1 weight (2 bytes), and writing 1 partial sum (2 bytes).
* **Bytes** = $9,600 \text{ MACs} \times 6 \text{ bytes/MAC} = 57,600 \text{ bytes}$
* **AI (Lower Bound)** = $19,200 \text{ FLOPs} \div 57,600 \text{ bytes} = \mathbf{0.33 \text{ FLOP/byte}}$

**Upper Bound (Perfect Weight & Activation Reuse):**
Weights are loaded once. Activations are loaded once. Outputs are written once.
* **Weight Bytes** = $K \times C_{in} \times C_{out} \times 2 = 3 \times 1 \times 16 \times 2 = 96 \text{ bytes}$
* **Activation Bytes** = $L \times C_{in} \times 2 = 200 \times 1 \times 2 = 400 \text{ bytes}$
* **Output Bytes** = $L \times C_{out} \times 2 = 200 \times 16 \times 2 = 6,400 \text{ bytes}$
* **Total Bytes** = $96 + 400 + 6,400 = 6,896 \text{ bytes}$
* **AI (Upper Bound)** = $19,200 \text{ FLOPs} \div 6,896 \text{ bytes} = \mathbf{2.78 \text{ FLOP/byte}}$

## 4. Bottleneck Identification & Improvement Suggestion
* **Current Limiting Factor:** The design is currently limited by **hardware interface bandwidth**. At our 100MHz target, the peak compute capacity is massive, but our attainable performance is choked by the rate at which the AXI4-Stream interface can supply data to the core (capped at ~6.4 GB/s).
* **Highest-Leverage Change:** The single most effective improvement would be to implement a **Line Buffer / SRAM caching system** on-chip. By storing the input sequence and weights locally, we can achieve the "Upper Bound" arithmetic intensity (2.78 FLOP/byte), significantly reducing the required off-chip memory bandwidth and allowing the MAC units to operate closer to their peak frequency without stalling for data.
