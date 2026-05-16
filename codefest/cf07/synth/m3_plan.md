# Milestone 3 Synthesis Plan (Option B)

Because my actual project compute core was not fully ready for physical synthesis, I utilized the Codefest 06 crossbar design (Option B) to validate my OpenLane 2 toolchain. I plan to successfully run synthesis on my actual project core by Wednesday, May 20th, ahead of the M3 deadline.

I expect my actual compute core synthesis to look significantly different. The overall cell count and silicon area will be larger due to the control state machines and tracking registers. Furthermore, the critical path will shift from parallel combinational multipliers into the iterative sequential loops used for localization calculation.

This fallback exercise was highly valuable. The severe setup and slew violations (-3.84ns WNS) demonstrated exactly how unpipelined arithmetic operations cause timing failures. I will use this knowledge to ensure my M3 core is properly pipelined.
