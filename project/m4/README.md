# Milestone 4: Simulation and Synthesis

This directory contains the final synthesis, RTL source code, testbenches, and benchmarking results for the ILS accelerator.

## 1. File Catalog
- project/m4/rtl/top.sv - Top-level integrated module connecting the interface and compute core.
- project/m4/rtl/compute_core.sv - MAC array, 32-bit verified accumulator, and pipelining logic.
- project/m4/rtl/interface_unit.sv - AXI4-Stream slave interface logic with input staging registers.
- project/m4/tb/tb_top.sv - End-to-end co-simulation testbench driving the AXI4-Stream interface.
- project/m4/report/design_justification.pdf - Final 2,000+ word design justification report.
- project/m4/report/figures/ - Directory containing referenced figures (Roofline, Waveforms, Architecture Diagrams).
- project/m4/bench/benchmark.md - Analysis of throughput, energy efficiency, and speedup vs software baseline.
- project/m4/bench/benchmark_data.csv - Raw CSV measurement data used for performance calculations.
- project/m4/bench/roofline_final.png - Visual plot of the target performance vs. interface bottlenecks.
- project/m4/synth/config.json - OpenLane 2 configuration defining top module, constraints, and 20.0ns clock period.
- project/m4/synth/area_report.txt - Post-routing standard cell area and module utilization report (stat.rpt).
- project/m4/synth/timing_report.txt - Post-routing setup timing report (nom_ss_100C_1v60/max.rpt).
- project/m4/synth/power_report.txt - Dynamic and static power analysis report.
- project/m4/synth/openlane_run.log - Full capture of the OpenLane 2 synthesis and routing flow.
