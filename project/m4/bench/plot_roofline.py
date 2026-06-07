import matplotlib.pyplot as plt
import numpy as np

# i7-12700H target specs
peak_flops = 500.0  # GFLOP/s
peak_bw = 76.8      # GB/s

# Calculate Ridge Point
ridge_point = peak_flops / peak_bw
ai_vals = np.logspace(-2, 2, 500)
perf_bound = np.minimum(peak_flops, peak_bw * ai_vals)

# AI derived from your M1 Interface Selection
ai_target = 1.058

# M1 and M4 Performance (GFLOP/s)
m1_perf = (183.18 * 2) / 1e9  # extremely slow python baseline
m4_perf = 100 / 1000.0        # 100 MFLOP/s

plt.figure(figsize=(10, 6))
plt.loglog(ai_vals, perf_bound, 'k-', linewidth=2, label='i7-12700H Roofline')
plt.scatter([ai_target], [m1_perf], color='red', s=100, label='M1 Software Baseline', zorder=5)
plt.scatter([ai_target], [m4_perf], color='green', s=100, label='M4 Hardware Accelerator', zorder=5)

plt.title('Final Roofline Model: Indoor Localization MAC Engine')
plt.xlabel('Arithmetic Intensity (FLOP/byte)')
plt.ylabel('Performance (GFLOP/s)')
plt.grid(True, which="both", ls="--", alpha=0.5)
plt.legend()
plt.tight_layout()

plt.savefig('project/m4/bench/roofline_final.png')
print("Roofline plot saved successfully!")
