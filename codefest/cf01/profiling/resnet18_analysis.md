# ResNet-18 Profiling Analysis

## Top 5 MAC-Intensive Layers

| Layer Name / Type | MACs (Mult-Adds) | Parameter Count |
| :--- | :--- | :--- |
| Conv2d: 1-1 | 118,013,952 | 9,408 |
| Conv2d: 3-1 | 115,605,504 | 36,864 |
| Conv2d: 3-4 | 115,605,504 | 36,864 |
| Conv2d: 3-7 | 115,605,504 | 36,864 |
| Conv2d: 3-10 | 115,605,504 | 36,864 |

## Arithmetic Intensity Calculation
**Most MAC-Intensive Layer:** Conv2d: 1-1

**1. MACs (Mult-Adds):** 118,013,952

**2. Weights Memory:**
* Parameter count = 9,408
* 9,408 * 4 bytes/param = 37,632 bytes

**3. Activations Memory (Input + Output):**
* Input Shape: [1, 3, 224, 224] -> 1 * 3 * 224 * 224 = 150,528 elements
* Output Shape: [1, 64, 112, 112] -> 1 * 64 * 112 * 112 = 802,816 elements
* Total Elements: 150,528 + 802,816 = 953,344 elements
* 953,344 elements * 4 bytes/element = 3,813,376 bytes

**4. Total Memory (Weights + Activations):**
* 37,632 + 3,813,376 = 3,851,008 bytes

**5. Arithmetic Intensity (AI):**
* AI = (2 * MACs) / Total Memory Bytes
* AI = (2 * 118,013,952) / 3,851,008
* AI = 236,027,904 / 3,851,008
* AI = 61.29 FLOPs/byte