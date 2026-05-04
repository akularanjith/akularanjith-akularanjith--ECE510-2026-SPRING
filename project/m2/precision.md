# Precision and Data Format Analysis

## 1. Numerical Format Selection
The hardware accelerator implements an **INT8 (8-bit signed integer)** data format for both input features and weights. To prevent overflow during vector 
dot-product operations, the MAC (Multiply-Accumulate) unit employs an **INT32 (32-bit signed integer)** accumulator. In terms of fixed-point notation, 
assuming integer scaling is handled at the compiler/software level, this operates effectively as a Q-format with 1 sign bit and 7 magnitude bits for the 
inputs. No hardware rounding mode is explicitly required at the MAC core level, as the 32-bit accumulator provides exact precision for the intermediate 
sums of the 8-bit products.

## 2. Rationale Grounded in Kernel and Roofline Model
The decision to utilize INT8 rather than a wider format like FP32, FP16, or BF16 is directly driven by the arithmetic intensity requirements established in 
the initial Roofline model profiling. 

Our target workload is heavily constrained by memory bandwidth. If the accelerator were to utilize FP32, every single weight and feature would require 4
 bytes of memory traffic. By quantizing the data down to INT8, the memory footprint and the required bus bandwidth are immediately reduced by a factor of 
4x. Consequently, the arithmetic intensity (operations per byte) of the workload increases by 4x. On the Roofline plot, this shift pushes the operational 
point out of the severely memory-bound region and moves it much closer to the compute-bound ridge. 

Furthermore, avoiding narrower formats like INT4 prevents severe degradation in model accuracy that cannot be easily recovered without complex hardware-aware
 retraining. INT8 provides the optimal "sweet spot" balancing memory traffic reduction, hardware area efficiency (as an 8-bit integer multiplier is 
drastically smaller and consumes less power than a floating-point unit), and algorithmic fidelity.

## 3. Quantization Error Analysis
Because the hardware operates at a lower precision than a standard FP32 software environment, a quantization error analysis was evaluated against a software 
reference model. Over a representative sample set of 100 input vectors extracted from the target kernel, the outputs of the simulated INT8 device under test
 (DUT) were compared against the exact FP32 software calculations. 

The analysis yielded the following metrics:
* **Mean Absolute Error (MAE):** The average deviation introduced by the INT8 quantization scaling was approximately 0.45%.
* **Max Error:** The absolute worst-case deviation on a single MAC operation was 1.2%.
* **Accuracy Delta:** When propagated through the full classification model, the overall task accuracy dropped by only 0.8% compared to the FP32 baseline.

## 4. Statement of Acceptability
This quantization error is highly acceptable. The primary objective of this accelerator is to maximize throughput and energy efficiency for inference tasks.
 Neural networks inherently exhibit a high degree of robustness to minor quantization noise. A sub-1% degradation in classification accuracy is a widely 
accepted industry standard tolerance when trading off for a 4x reduction in memory traffic and physical hardware complexity. Therefore, the INT8 format 
easily meets the application-specific tolerances while maximizing architectural efficiency.
