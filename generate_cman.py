import matplotlib.pyplot as plt
import numpy as np

# Hardware Specifications
peak_compute = 50.0
mem_bandwidth = 6.4
ai_min = 0.33
ai_max = 2.78
ai_target = 1.058

# Set up Data Points
x = np.logspace(-2, 2, 500)
y_mem = mem_bandwidth * x
y_compute = np.full_like(x, peak_compute)
y_actual = np.minimum(y_mem, y_compute)

# Create Plot
fig, ax = plt.subplots(figsize=(10, 6))

ax.plot(x, y_mem, color='red', linestyle='--', linewidth=1.5, label=f'Memory Bound ({mem_bandwidth} GB/s)')
ax.plot(x, y_compute, color='blue', linestyle='--', linewidth=1.5, label=f'Compute Bound ({peak_compute} GFLOP/s)')
ax.plot(x, y_actual, color='black', linewidth=3, label='Hardware Ceiling')

# Shade Design Region
ax.fill_between(x, 10**-2, y_actual, where=((x >= ai_min) & (x <= ai_max)), 
                color='lightblue', alpha=0.4, label='CNN Design Region')

ax.axvline(x=ai_min, color='gray', linestyle=':', linewidth=2)
ax.axvline(x=ai_max, color='gray', linestyle=':', linewidth=2)

perf_target = mem_bandwidth * ai_target
ax.plot(ai_target, perf_target, marker='s', markersize=8, color='darkblue', 
        linestyle='None', label='Target Operating Point')

# Formatting - THIS IS THE CRITICAL PART FOR THE LOG SCALE
ax.set_xscale('log')
ax.set_yscale('log')
ax.set_xlim(10**-2, 10**2)
ax.set_ylim(10**-1, 10**3)

ax.set_xlabel('Arithmetic Intensity (FLOPs/Byte)', fontsize=12, fontweight='bold')
ax.set_ylabel('Performance (GFLOP/s)', fontsize=12, fontweight='bold')
ax.set_title('CNN Hardware Accelerator - Performance Roofline', fontsize=14, fontweight='bold', pad=15)

ax.grid(True, which="major", ls="-", color='lightgray', alpha=0.8)
ax.grid(True, which="minor", ls=":", color='lightgray', alpha=0.5)

ax.legend(loc='center left', bbox_to_anchor=(1, 0.5), fontsize=10, 
          frameon=True, edgecolor='black', fancybox=False)

# Save Image
plt.savefig('cman_roofline_sketch.png', dpi=300, bbox_inches='tight')
print("Plot successfully saved as cman_roofline_sketch.png")
