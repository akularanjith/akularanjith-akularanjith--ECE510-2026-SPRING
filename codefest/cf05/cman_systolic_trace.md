# CMAN Codefeast #5
# CMAN Codefeast #5

### 1) PE Diagram
**Draw the $2\times2$ array of processing elements (PEs). [cite_start]Label each PE with its preloaded weight: PE[0][0] = B[0][0] = 5, 
PE[0][1] = B[0][1] = 6, PE[1][0] = B[1][0] = 7, PE[1][1] = B[1][1] = 8.**

+----------+----------+
| PE[0][0] | PE[0][1] |
|  w = 5   |  w = 6   |
|----------|----------|
| PE[1][0] | PE[1][1] |
|  w = 7   |  w = 8   |
+----------+----------+

2) Trace Table
Fill in a cycle-by-cycle table (columns: Cycle, Input to row 0, Input to row 1, PE[0][0] partial sum, PE[0][1] partial sum, PE[1][0] partial sum, 
PE[1][1] partial sum, Output C values). Trace at least 4 cycles.

CycleRow 0 InputRow 1 InputPE[0][0] PSPE[0][1] PSPE[1][0] PSPE[1][1] PSOutput C
1A[0][0] = 1A[0][0] x 5 = 5A[0][0] x 6 = 6
2A[1][0] = 3A[0][1] = 2A[1][0] x 5 = 15A[1][0] x 6 = 185 + (2 x 7) = 196 + (2 x 8) = 22[19, 22]
3A[1][1] = 415 + (4 x 7) = 4318 + (4 x 8) = 50[43, 50]


3) Count Metrics
(a) Total MAC operations performed; (b) number of times each input value is reused; (c) number of off-chip memory accesses for A, B (as inputs), 
and C (as output).
Total Number of MACs   Let $C_i$ be the number of MACs for the $i$-th cycle.$$\begin{aligned}
\text{MACs} &= C_1 + C_2 + C_3 + C_4 \\
&= 2 + 4 + 2 + 0 \\
&= 8
\end{aligned}$$
Number of Times Each Input Value is Reused
By looking at the table from Question 2, we see each input is reused twice
Number of Off-chip Memory Accesses
Let $M$ denote the off-chip memory accesses.
$$\begin{aligned}
M &= A + B + C \\
&= 4\text{ (reads)} + 4\text{ (reads)} + 4\text{ (writes)} \\
&= 12\text{ (memory accesses)}
\end{aligned}$$

4) Output-Stationary Comparison

If this were output-stationary instead, which values would stay fixed in the PEs? Give a one-sentence answer.

In an output-stationary dataflow, the partial sums (the values for Matrix C) would stay fixed in the PEs until the accumulation is complete.



