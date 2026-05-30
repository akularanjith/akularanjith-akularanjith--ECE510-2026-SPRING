# Codefest 4 - CMAN: Manual INT8 Symmetric Quantization
ECE 410/510 | Hardware for AI and ML | Spring 2026

## Task 1 - Scale Factor (S)
* **Formula:** S = max(|W|) / 127
* **Max Absolute Value:** max(|W|) = 2.31 (Located at W[2][3])
* **Computed S:** 2.31 / 127 = 0.01818898

## Task 2 - Quantize (W_q)
* **Formula:** W_q = clamp(round(W / S), -128, 127)
* **Resulting INT8 Matrix:**
    [  47,  -66,   19,  115 ]
    [  -4,   50, -103,    7 ]
    [  85,    2,  -24, -127 ]
    [ -10,   57,   42,   30 ]

## Task 3 - Dequantize (W_deq)
* **Formula:** W_deq = W_q x S
* **Resulting FP32 Matrix:**
    [  0.854882,  -1.200472,   0.345591,   2.091732 ]
    [ -0.072756,   0.909449,  -1.873464,   0.127323 ]
    [  1.546063,   0.036378,  -0.436535,  -2.310000 ]
    [ -0.181890,   1.036772,   0.763937,   0.545669 ]

## Task 4 - Error Analysis
* **Largest Error Element:** W[0][3] (Original: 2.10, Recovered: 2.091732)
* **Max Absolute Error:** 0.008268
* **Mean Absolute Error (MAE):** 0.004326

## Task 5 - Bad Scale Experiment (S_bad = 0.01)
* **Clamped Elements:** 4 elements (2.10, -1.88, 1.55, -2.31) exceeded the INT8 range and were clipped to 127 or -128.
* **MAE (S_bad):** 0.171250 (Approx. 40x higher error than correct S).
* **One-Sentence Explanation:** When S is too small, dividing the weights by S produces values that exceed the INT8 clamp range of [-128, 127], 
causing significant weights to be permanently clipped to the boundary and resulting in high reconstruction error.
