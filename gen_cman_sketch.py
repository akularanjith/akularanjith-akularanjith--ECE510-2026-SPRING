import numpy as np
import matplotlib
matplotlib.use('Agg')
import matplotlib.pyplot as plt
import os

# Parameters
AI_lower = 0.33
AI_upper = 2.78
peak_gflops = 50.0
bw_gbs = 6.4
ridge_point = peak_gflops / bw_gbs # ~7.81

# Create the plot with a white background and no grid
fig, ax = plt.subplots(figsize=(8, 6), facecolor='white')

# Define x-axis range for the lines
x_slant = [0.1, ridge_point]
y_slant = [0.1 * bw_gbs, peak_gflops]

x_flat = [ridge_point, 100]
y_flat = [peak_gflops, peak_gflops]

# Draw the Roofline (Slant and Flat) in basic black
ax.plot(x_slant, y_slant, 'k-', linewidth=2)
ax.plot(x_flat, y_flat, 'k-', linewidth=2)

# Mark the Ridge Point
ax.plot(ridge_point, peak_gflops, 'ko', markersize=5)
ax.text(ridge_point, peak_gflops * 1.2, f'Ridge Point\n({ridge_point:.1f}, {peak_gflops})', ha='center', fontsize=10)

# Draw and label AI bounds (as simple vertical lines)
ax.vlines(x=AI_lower, ymin=1e-3, ymax=AI_lower * bw_gbs, color='k', linestyle='--', linewidth=1.5)
ax.text(AI_lower, (AI_lower * bw_gbs) * 1.5, f'AI_low = {AI_lower}', ha='center', va='bottom', fontsize=10)

ax.vlines(x=AI_upper, ymin=1e-3, ymax=AI_upper * bw_gbs, color='k', linestyle='--', linewidth=1.5)
ax.text(AI_upper, (AI_upper * bw_gbs) * 1.5, f'AI_high = {AI_upper}', ha='center', va='bottom', fontsize=10)

# Mark the Attainable Performance Range (Thick line on the slant)
ax.plot([AI_lower, AI_upper], [AI_lower * bw_gbs, AI_upper * bw_gbs], 'k-', linewidth=5)
ax.text(AI_upper * 1.2, AI_upper * bw_gbs, 'Attainable\nPerformance', va='center', fontsize=10)

# Formatting to look like a sketch
ax.set_xscale('log')
ax.set_yscale('log')
ax.set_xlim(0.1, 100)
ax.set_ylim(1e-1, 100)

# Remove top and right spines (borders) for a cleaner look
ax.spines['top'].set_visible(False)
ax.spines['right'].set_visible(False)

# Simple Labels
ax.set_xlabel('Arithmetic Intensity (FLOP/byte)', fontsize=12)
ax.set_ylabel('Performance (GFLOP/s)', fontsize=12)
ax.set_title('CMAN Roofline Sketch', fontsize=14, pad=20)

# Save the plot
os.makedirs('codefest/cf09', exist_ok=True)
plt.tight_layout()
plt.savefig('codefest/cf09/cman_roofline_sketch.png', dpi=150, bbox_inches='tight')
print("Successfully generated minimalist sketch: codefest/cf09/cman_roofline_sketch.png")
plt.close()
