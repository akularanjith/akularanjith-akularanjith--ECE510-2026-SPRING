
import torch
import torch.nn as nn
import sys

device = torch.device("cuda" if torch.cuda.is_available() else "cpu")
if device.type != 'cuda':
    print("No GPU found.")
    sys.exit()

print(f"Device: {torch.cuda.get_device_name(0)}")

model = nn.Sequential(
    nn.Linear(4, 5),
    nn.ReLU(),
    nn.Linear(5, 1)
).to(device)

x = torch.randn(16, 4).to(device)
output = model(x)

print(f"Output Shape: {list(output.shape)}")
print(f"Output Device: {output.device}")
