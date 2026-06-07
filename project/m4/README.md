# Milestone 4: Simulation and Synthesis

This directory contains the final synthesis, RTL source code, testbenches, and benchmarking results for the ILS accelerator.

## 1. File Catalog
- project/m4/rtl/top.sv - Top-level integrated module connecting the interface and compute core.
- project/m4/rtl/compute_core.sv - MAC array, 32-bit verified accumulator, and pipelining logic.
- project/m4/rtl/interface.sv - AXI4-Stream slave interface logic.
- project/m4/tb/tb_top.sv - End-to-end co-simulation testbench.
- project/m4/report/design_justification.pdf - Final design justification report.
- project/m4/report/figures/algorithm_diagram.png - Algorithm Dataflow Diagram.
- project/m4/report/figures/final_waveform.png - Final Hardware Waveform (GTKWave dump).
- project/m4/report/figures/roofline_final.png - Roofline Model performance plot (Report Figure).
- project/m4/report/figures/system_diagram.jpg - System Block Diagram.
- project/m4/bench/benchmark.md - Analysis of throughput, energy efficiency, and speedup.
- project/m4/bench/benchmark_data.csv - Raw CSV measurement data.
- project/m4/bench/roofline_final.png - Roofline Model performance plot (Benchmarking data).
- project/m4/synth/config.json - OpenLane 2 configuration file.
- project/m4/synth/area_report.txt - Post-routing standard cell area report.
- project/m4/synth/timing_report.txt - Post-routing setup timing report.
- project/m4/synth/power_report.txt - Power estimation report.
- project/m4/synth/openlane_run.log - Full synthesis and routing log.
