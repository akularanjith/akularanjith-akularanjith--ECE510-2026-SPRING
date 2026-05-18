import numpy as np

def preprocess_rssi_to_radiomap(raw_rssi_vector, grid_size=(4, 4)):
    """
    Converts a 1D array of raw RSSI signals into a 2D Radio Map for the CNN.
    This creates the spatial feature map required for the Conv2D._im2col kernel.
    """
    rssi_array = np.array(raw_rssi_vector, dtype=np.int8) 
    
    # Reshape the 1D array into a 2D grid
    radio_map_2d = rssi_array.reshape(grid_size)
    
    return radio_map_2d
