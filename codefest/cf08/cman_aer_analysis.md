# CMAN: AER Bandwidth Analysis

## 1. Mean Aggregate Spike Rate
**Formula:** $R = N \times f$
**Calculation:** 1024 neurons $\times$ 50 Hz
**Result:** 51,200 spikes/s (or ~50 Kpackets/s)

## 2. Mean AER Bandwidth
**Formula:** $B = R \times (\text{address bits} + \text{overhead bits})$
**Calculation:** 51,200 spikes/s $\times$ 20 bits/packet
**Result:** 1.024 Mbit/s (approx. 1 Mbit/s)

## 3. Interface Comparison Table
| Interface | Sustain (Y/N) |
|-----------|---------------|
| SPI       | Y             |
| I2C       | Y             |
| AXI4-Lite | Y             |

**Chosen Interface:** I2C
**Rationale:** All three have sufficient bandwidth for the average 1 Mbit/s throughput. Both I2C and SPI are quite simple, but I2C would probably be more appropriate since it better manages multiple endpoints.

## 4. Burst Analysis
* **Peak Instantaneous Bandwidth:** 5.12 Mbit/s (Calculation: 256 spikes $\times$ 20 bits / 1 ms = 5,120,000 bits/s)
* **Burst-to-Mean Ratio:** 5 (5.12 Mbit/s peak / 1.024 Mbit/s mean)
* **Buffering Decision:** Buffering is required. The peak bandwidth of ~5 Mbit/s exceeds standard I2C capabilities. A buffer is needed to absorb the burst, requiring a depth of at least 5Mb to absorb the entire burst safely.

## 5. Frame-Based Comparison
* **Frame-based Bandwidth:** 1.024 Mbit/s (1024 bits / 1 ms = 1,024,000 bits/s)
* **AER-to-frame bandwidth ratio (at f=50 Hz):** 1:1 (Both are ~1 Mbit/s)
* **Crossover Firing Rate ($f_{crossover}$):** 50 Hz

**Implication:** AER is superior for bandwidth conservation at low firing rates (less than 50 Hz), while frame-based readout is more efficient at higher firing rates (greater than 50 Hz).
