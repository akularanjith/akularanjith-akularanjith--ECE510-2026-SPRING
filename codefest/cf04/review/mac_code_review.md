
# MAC Module Code Review

**LLMs Evaluated:**
* **LLM A (Gemini):** Functional and Synthesizable.
* **LLM B (ChatGPT):** Failed due to structural and logic errors.

---

### Step 2: Compile Results
* **LLM A:** Compiled successfully. Status: `Done`.
* **LLM B:** FAILED. Status: `Fatal Error`.
  **Error Message:** `design.sv:7: error: out is not a valid l-value in mac`

### Step 3: Simulation Results
A custom testbench (`mac_tb.v`) was used to apply a specific sequence of stimulus to both modules.

**LLM A (Gemini) - Verified Output:**
- Time=15: a=3, b=4, out=12
- Time=25: a=3, b=4, out=24
- Time=35: a=3, b=4, out=36
- Time=45: rst=1, out=0 (Synchronous Reset Verified)
- Time=55: a=-5, b=2, out=-10 (Signed Multiplication Verified)
- Time=65: a=-5, b=2, out=-20

**LLM B (ChatGPT) - Verified Failure:**
- **Status:** FAILED. No simulation results generated due to elaboration errors.

---

### Step 4: Technical Issues Identified

#### Issue 1: Missing Port Direction and Type
* **(a) Exact offending line:** `out` (within the port list)
* **(b) Why it is wrong:** LLM B failed to specify the `output` direction and the `logic` data type. In SystemVerilog, a port without a direction is 
ambiguous. Furthermore, because the signal is driven within an `always_ff` block, it must be a variable type. This caused the "not a valid l-value" error, 
making the code non-synthesizable.
* **(c) Corrected version:**
  `output logic signed [31:0] out`

#### Issue 2: Improper Process Type for Accumulation
* **(a) Exact offending line:** `always_comb begin ... out = out + (a * b);`
* **(b) Why it is wrong:** A Multiply-Accumulate unit requires state memory to store the sum across cycles. Using `always_comb` for a feedback loop 
(`out = out + ...`) is a critical RTL violation that creates a combinational loop. This is physically impossible to synthesize and causes "sensitivity loops"
in simulators.
* **(c) Corrected version:**
  `always_ff @(posedge clk) begin if (rst) out <= 32'sd0; else out <= out + (32'(a) * 32'(b)); end`

#### Issue 3: Missing Hardware Signedness and Sign Extension
* **(a) Exact offending line:** `input logic [7:0] a;` and `out <= out + (a * b);`
* **(b) Why it is wrong:** Without the `signed` keyword, the hardware treats the inputs as unsigned magnitudes (e.g., -5 is treated as 251). Additionally, 
the lack of explicit casting for the 16-bit product causes incorrect zero-extension instead of sign-extension when adding to the 32-bit accumulator.
* **(c) Corrected version:**
  `input logic signed [7:0] a, b; ... out <= out + (32'(a) * 32'(b));`

---

### Final Assessment
LLM A (Gemini) provided a synthesizable, functionally correct Verilog module. LLM B (ChatGPT) failed to provide a valid hardware structure, violating both 
basic syntax and architectural requirements for sequential design.
