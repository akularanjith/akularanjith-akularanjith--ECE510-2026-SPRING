# Milestone 2: Compute Core and AXI-Stream Interface

## 1. Reproducibility: Simulator and Environment
To ensure reproducibility, this project uses standard open-source tools compatible with Linux/WSL environments.
* **Simulator:** Icarus Verilog (`iverilog`)
* **Version:** 11.0 (stable) or newer
* **Waveform Viewer:** GTKWave (used for signal verification and annotation)
* **Language:** SystemVerilog (IEEE 1800-2012)

## 2. Build Instructions (Clean Clone)
Follow these steps to reproduce the simulation results from a fresh clone of the repository. Ensure you are in the `project/m2/` directory.

### A. Prerequisites
No Python dependencies or external pre/post-processing scripts are required. The testbenches are self-checking and calculate expected results internally 
using SystemVerilog.

### B. Compiling and Running Compute Core Simulation
This testbench isolates the `compute_core` and verifies a representative Multiply-Accumulate (MAC) vector.
```bash
# Compile
iverilog -g2012 -o sim/compute_core.vvp rtl/compute_core.sv tb/tb_compute_core.sv

# Run and generate log
vvp sim/compute_core.vvp > sim/compute_core_run.log
