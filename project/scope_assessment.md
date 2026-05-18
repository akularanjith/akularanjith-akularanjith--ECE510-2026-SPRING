# Project Scope Assessment: CNN Hardware Accelerator for Indoor Localization

## 1. Project Objective
The objective of this project is to design, verify, and implement a high-performance hardware accelerator for indoor localization. The architecture has successfully pivoted from a K-Nearest Neighbors (KNN) framework to a Convolutional Neural Network (CNN) based spatial processing engine. The core compute element is a heavily pipelined Multiply-Accumulate (MAC) unit designed to process 2D Radio Map grids.

## 2. Key Performance Targets
* **Throughput Goal:** 80 GFLOP/s.
* **Data Precision:** Strict INT8 (8-bit signed integer) quantization for features and weights, optimizing logic footprint and dynamic power while maintaining localization accuracy.
* **Accumulator:** 32-bit signed integer register to safely prevent overflow during parallel dot-product operations.

## 3. Hardware Architecture & Interfaces
* **Compute Engine:** Parallel INT8 MAC arrays.
* **System Bus:** AXI4-Stream interface (valid/ready handshaking with tlast frame indicators) to ensure seamless data streaming between the software testbench and the hardware execution pipeline.
* **Top-Level Wrapper:** `localization_core.sv` serves as the primary module, wrapping the AXI4-Stream interface and the underlying MAC calculation matrix.

## 4. Verification Strategy
* **Software Baseline:** A Python-based golden model (`test_localization.py`) utilizing NumPy to simulate the exact INT8 quantization and 32-bit accumulation happening in the hardware.
* **Hardware Simulation:** SystemVerilog testbenches verified via Icarus Verilog, with raw timing data dumped to `.vcd` files.
* **Visual Proof:** GTKWave analysis to explicitly prove proper valid/ready handshaking and flawless two's complement arithmetic execution.

## 5. Milestone Breakdown
* **Milestone 1:** Establish basic math sub-modules and finalize the INT8 quantization strategy.
* **Milestone 2:** Implement the full CNN MAC core, wrap it in the AXI4-Stream interface, and verify the physical timing waves (GTKWave).
