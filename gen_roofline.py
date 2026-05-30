import numpy as np
import matplotlib
matplotlib.use('Agg')
import matplotlib.pyplot as plt

# ── Shared values ─────────────────────────────────────────────────────────────
hw_peak_gflops = 50.0      # GFLOP/s (Compute Ceiling)
hw_bw_gbs = 6.4            # GB/s (AXI4-Stream 512-bit)
hw_ridge = hw_peak_gflops / hw_bw_gbs

sw_peak_gflops = 100.0     # GFLOP/s (Intel Core i7)
sw_bw_gbs = 50.0           # GB/s 
sw_ridge = sw_peak_gflops / sw_bw_gbs

sw_ai = 1.058              # FLOP/byte 
sw_gflops = 0.02           # GFLOP/s 

hw_ai = 1.058              # FLOP/byte
hw_spi_gflops = hw_ai * hw_bw_gbs  # 6.77 GFLOP/s (Memory-bound)

# ── Helper: roofline ──────────────────────────────────────────────────────────
def roofline(ai_arr, peak, bw):
    return np.minimum(peak, ai_arr * bw)

# ═══════════════════════════════════════════════════════════════════════════════
fig, ax = plt.subplots(figsize=(9, 6))

ai_range = np.logspace(-1, 3, 1000)

# Rooflines
rl_hw = roofline(ai_range, hw_peak_gflops, hw_bw_gbs)
ax.loglog(ai_range, rl_hw, 'b-', linewidth=2.5, label='HW Accelerator (100 MHz, AXI4 512-bit)')

rl_sw = roofline(ai_range, sw_peak_gflops, sw_bw_gbs)
ax.loglog(ai_range, rl_sw, 'k--', linewidth=1.5, alpha=0.5, label='SW Baseline (Intel Core i7)')

# Ridge lines & Ceilings
ax.axvline(hw_ridge, color='b', linestyle=':', linewidth=1, alpha=0.5)
ax.axhline(hw_peak_gflops, color='b', linestyle=':', linewidth=1, alpha=0.3)

# AI vertical line
ax.axvline(hw_ai, color='red', linestyle='--', linewidth=1.2, alpha=0.7)
ax.text(hw_ai * 1.15, 2e-3, f'Target AI\n{hw_ai}', fontsize=8, color='red')

# Points
ax.plot(sw_ai, sw_gflops, 'ks', markersize=11, zorder=7,
        label=f'SW Baseline (measured)\nAI={sw_ai}, {sw_gflops} GFLOP/s')

ax.plot(hw_ai, hw_spi_gflops, 'b^', markersize=12, zorder=7,
        label=f'HW Projected (AXI-limited)\nAI={hw_ai}, {hw_spi_gflops:.2f} GFLOP/s')

ax.plot(hw_ai, hw_peak_gflops, 'b*', markersize=14, zorder=7,
        label=f'HW Projected (Compute ceiling)\n{hw_peak_gflops} GFLOP/s (no AXI overhead)')

# Annotations
ax.annotate('SW Baseline\n(Measured)', xy=(sw_ai, sw_gflops),
            xytext=(sw_ai*2, sw_gflops*0.5), fontsize=8,
            arrowprops=dict(arrowstyle='->', color='k', lw=1))
ax.annotate('HW Projected\n(AXI-limited)', xy=(hw_ai, hw_spi_gflops),
            xytext=(hw_ai*2, hw_spi_gflops*2), fontsize=8, color='blue',
            arrowprops=dict(arrowstyle='->', color='blue', lw=1))
ax.annotate('HW Projected\n(Compute ceiling)', xy=(hw_ai, hw_peak_gflops),
            xytext=(hw_ai*2, hw_peak_gflops*0.5), fontsize=8, color='blue',
            arrowprops=dict(arrowstyle='->', color='blue', lw=1))

ax.set_xlabel('Arithmetic Intensity (FLOP/byte)', fontsize=11)
ax.set_ylabel('Performance (GFLOP/s)', fontsize=11)
ax.set_title('Roofline Model: SW Baseline vs. Projected HW Accelerator', fontsize=12)
ax.legend(fontsize=8, loc='upper left')
ax.set_xlim(0.1, 100)
ax.set_ylim(1e-3, 200)
ax.grid(True, which='both', alpha=0.3, linestyle=':')

import os
os.makedirs('codefest/cf09/benchmarks', exist_ok=True)
plt.tight_layout()
plt.savefig('codefest/cf09/benchmarks/roofline_plot.png', dpi=150, bbox_inches='tight')
print("Successfully generated detailed plot: codefest/cf09/benchmarks/roofline_plot.png")
plt.close()
