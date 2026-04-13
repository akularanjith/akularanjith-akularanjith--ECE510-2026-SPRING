import matplotlib.pyplot as plt
import matplotlib.patches as patches
import os

# Create figure and hide axes
fig, ax = plt.subplots(figsize=(10, 6))
ax.axis('off')

# 1. Host (CPU/Laptop)
host = patches.Rectangle((0.05, 0.35), 0.25, 0.3, linewidth=2, edgecolor='black', facecolor='#e2e2e2')
ax.add_patch(host)
ax.text(0.175, 0.5, '1. Host\n(CPU/Laptop)', fontsize=14, fontweight='bold', ha='center', va='center')

# 2. Interface (AXI4-Stream)
# Draw double-sided arrow to represent the bus
ax.arrow(0.3, 0.52, 0.12, 0, head_width=0.04, head_length=0.03, fc='black', ec='black', linewidth=3)
ax.arrow(0.45, 0.48, -0.12, 0, head_width=0.04, head_length=0.03, fc='black', ec='black', linewidth=3)
ax.text(0.375, 0.43, '2. Interface\n(AXI4-Stream)', fontsize=12, ha='center', va='center', fontweight='bold', color='#b22222')

# 3. Chiplet Boundary (Dashed Box)
chiplet = patches.Rectangle((0.48, 0.1), 0.48, 0.8, linewidth=3, edgecolor='black', facecolor='#f9f9f9', linestyle='--')
ax.add_patch(chiplet)
ax.text(0.72, 0.95, '3. Chiplet Boundary', fontsize=14, fontweight='bold', ha='center', va='center')

# 4. On-Chip Memory (SRAM)
sram = patches.Rectangle((0.52, 0.2), 0.18, 0.6, linewidth=2, edgecolor='black', facecolor='#cce5ff')
ax.add_patch(sram)
ax.text(0.61, 0.5, '5. On-Chip\nMemory\n(SRAM)', fontsize=12, fontweight='bold', ha='center', va='center')

# 5. Compute Engine (MAC Array)
mac = patches.Rectangle((0.75, 0.2), 0.18, 0.6, linewidth=2, edgecolor='black', facecolor='#ccffcc')
ax.add_patch(mac)
ax.text(0.84, 0.5, '4. Compute\nEngine\n(MAC Array)', fontsize=12, fontweight='bold', ha='center', va='center')

# Internal Data Flow Arrows
ax.arrow(0.7, 0.6, 0.03, 0, head_width=0.03, head_length=0.02, fc='black', ec='black', linewidth=2)
ax.arrow(0.75, 0.4, -0.03, 0, head_width=0.03, head_length=0.02, fc='black', ec='black', linewidth=2)
ax.text(0.725, 0.65, 'Weights/Data', fontsize=9, ha='center')
ax.text(0.725, 0.35, 'Results', fontsize=9, ha='center')

# Save the file to the correct directory
os.makedirs(os.path.join('project', 'ml'), exist_ok=True)
save_path = os.path.join('project', 'ml', 'system_diagram.png')
plt.savefig(save_path, bbox_inches='tight', dpi=300)
print(f"\nSUCCESS! System diagram saved to: {save_path}\n")
