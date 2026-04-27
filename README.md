
# akularanjith-akularanjith--ECE510-2026-SPRING
**Ranjith Akula** **ECE 510 Spring 2026**

## Tentative Project Topic: Convolutional neural network with backpropagation training
A hardware-accelerated CNN localization engine-featuring spatial feature extraction layers (2D convolutions and pooling)-connected to a host via AXI4-Stream.
This VLSI-optimized pipeline processes noisy RSSI fingerprints into radio maps and predicts precise (x, y) coordinates for real-time indoor positioning.

---

## COPT Part B: Architectural Justifications

### Precision Selection (INT8)
I have chosen **INT8 (8-bit signed integer)** precision for the compute core. My prior quantization analysis showed that moving from floating-point to 
INT8 resulted in a **Mean Absolute Error (MAE) of only 0.0043**, which is negligible for the accuracy required in RSSI-based radio maps. This allows for 
significantly reduced power consumption and area on the FPGA/ASIC compared to floating-point units.

### Interface Selection (AXI4-Stream)
The host-to-accelerator communication will use **AXI4-Stream**. This was selected to handle the high-throughput, continuous nature of raw signal data packets
. It ensures the pipeline remains saturated without the overhead of address-based memory mapping or complex bus arbitration.

### Bandwidth & Arithmetic Intensity Justification
The choice of AXI4-Stream is necessitated by the project's **arithmetic intensity**. Because the CNN layers require a high volume of input features 
(RSSI fingerprints) to perform relatively few operations per byte of data, the system is bandwidth-constrained. AXI4-Stream allows for a "fire-and-forget" 
data flow that minimizes latency, ensuring the localization engine remains fully saturated during real-time processing.

---

## Functional Description & Interface Logic
The `localization_core.sv` module serves as the primary accumulator for the spatial feature extraction pipeline. It ingests 8-bit signed RSSI samples and 
maintains a 32-bit partial sum to prevent overflow during intermediate convolution operations. 

### Overflow Behavior Note
Based on simulation analysis (Task 2), the 32-bit accumulator follows standard **Two's Complement** logic and **wraps** when exceeding the signed 32-bit 
maximum (2,147,483,647). This behavior is documented in the simulation logs provided in the `cocotb_mac` directory.


