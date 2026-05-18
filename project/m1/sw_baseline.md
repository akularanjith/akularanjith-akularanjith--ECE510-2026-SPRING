
# Software Baseline Benchmark

**Platform & Configuration:**
* **CPU Model:** Intel Core i7-12700H
* **OS:** Windows 11
* **Python Version:** Python 3.11.2
* **Batch Size:** 32

**Execution Time:**
* **Metric:** Median wall-clock time over 10 runs.
* **Result:** 10.918 seconds (Total for 10 epochs).
* **Per-Epoch Time:** 1.0918 seconds.

**Throughput & Memory:**
* **Throughput:** 183.18 samples/sec (Calculated as 200 samples per epoch / 1.0918 seconds).
* **Memory Usage:** ~150 MB peak RSS (Resident Set Size).

**Reproducibility Note:**
The benchmark was performed using the `cnn_baseline.py` script provided in the repository, utilizing synthetic RSSI signal data generated with a fixed 
seed to ensure consistent complexity across all 10 runs.
