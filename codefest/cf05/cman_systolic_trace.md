# CMAN Codefeast #5

A $2\times2$ weight-stationary systolic array computes $C = A \times B$ where: $A = [[1, 2], [3, 4]]$, $B = [[5, 6], [7, 8]]$, expected $C = [[19, 22], [43, 50]]$. In weight-stationary dataflow, weights are pre-loaded into PEs and stay fixed; inputs stream in from the left; partial sums accumulate downward.

### 1) PE Diagram
**Draw the $2\times2$ array of processing elements (PEs). Label each PE with its preloaded weight.**

```text
+----------+----------+
| PE[0][0] | PE[0][1] |
|  w = 5   |  w = 6   |
|----------|----------|
| PE[1][0] | PE[1][1] |
|  w = 7   |  w = 8   |
+----------+----------+
```
### 2) Trace Table
**Fill in a cycle-by-cycle table. Trace at least 4 cycles.**

| Cycle | Row 0 Input | Row 1 Input | PE[0][0] PS | PE[0][1] PS | PE[1][0] PS | PE[1][1] PS | Output C |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| 1 | A[0][0] = 1 | | 1 x 5 = 5 | 1 x 6 = 6 | | | |
| 2 | A[1][0] = 3 | A[0][1] = 2 | 3 x 5 = 15 | 3 x 6 = 18 | 5 + (2 x 7) = 19 | 6 + (2 x 8) = 22 | [19, 22] |
| 3 | | A[1][1] = 4 | | | 15 + (4 x 7) = 43 | 18 + (4 x 8) = 50 | [43, 50] |
| 4 | | | | | | | |

### 3) Count Metrics
**(a) Total MAC operations; (b) Input value reuse; (c) Off-chip memory accesses.**

**Total Number of MACs**

$$
\begin{aligned}
\text{MACs} &= C_1 + C_2 + C_3 + C_4 \\
&= 2 + 4 + 2 + 0 \\
&= 8
\end{aligned}
$$

**Number of Times Each Input Value is Reused**
By looking at the table from Question 2, we see each input is reused twice.

**Number of Off-chip Memory Accesses**

$$
\begin{aligned}
M &= A + B + C \\
&= 4\text{ (reads)} + 4\text{ (reads)} + 4\text{ (writes)} \\
&= 12\text{ (memory accesses)}
\end{aligned}
$$

### 4) Output-Stationary Comparison
**If this were output-stationary instead, which values would stay fixed in the PEs?**

In an output-stationary dataflow, the partial sums (the values for Matrix C) would stay fixed in the PEs until the accumulation is complete.