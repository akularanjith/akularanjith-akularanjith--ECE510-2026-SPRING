# CMAN Codefeast #5

A $2\times2$ weight-stationary systolic array computes $C = A \times B$ where: $A = [[1, 2], [3, 4]]$, $B = [[5, 6], [7, 8]]$, expected 
$C = [[19, 22], [43, 50]]$. In weight-stationary dataflow, weights are pre-loaded into PEs and stay fixed; inputs stream in from the left; 
partial sums accumulate downward.

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

### 2) Trace Table
**Fill in a cycle-by-cycle table. Trace at least 4 cycles.**

Cycle,Row 0 Input,Row 1 Input,PE[0][0] PS,PE[0][1] PS,PE[1][0] PS,PE[1][1] PS,Output C
1,A[0][0] = 1,,1 x 5 = 5,1 x 6 = 6,,,
2,A[1][0] = 3,A[0][1] = 2,3 x 5 = 15,3 x 6 = 18,5 + (2 x 7) = 19,6 + (2 x 8) = 22,"[19, 22]"
3,,A[1][1] = 4,,,15 + (4 x 7) = 43,18 + (4 x 8) = 50,"[43, 50]"
4,,,,,,,

Count: (a) total MAC operations performed; (b) number of times each input value is reused; (c) number of off-chip memory accesses for A, B (as inputs), and C (as output).
(a) Total Number of MACs

Let 
C
i
 be the number of MACs for the 
i
 th cycle.

MACs
=
C
1
+
C
2
+
C
3
+
C
4
=
2
+
4
+
2
+
0
=
8

The total number of MACs is 
MACs
=
8
.

(b) Number of Times Each input Value is Reused

By looking at the table from Quesiton 2, we see each input is reaused twice.

(c) Number of Off-chip Memory Accesses for A, B (as inputs), and C (as output),

Let M denote the off-chip memory accesses.

M
=
A
+
B
+
C
=
4
(reads)
+
4
(reads)
+
4
(writes)
=
12
(memory accesses)

if this were output-stationary instead, which values would stay fixed in the PEs? Give a one-sentence answer
In this case, the PE holds onto its accumulating partial sum--the output values of C--instead of the weights staying fixed in the PEs, while the A inputs and the B weights stream through the PE.