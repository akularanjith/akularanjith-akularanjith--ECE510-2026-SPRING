
# Task 2: Overflow Analysis Report
**Module:** mac.v (32-bit Accumulator)

## Observation
During the execution of `test_mac_overflow`, the accumulator was tested against the 32-bit signed integer boundary (2^31 - 1). 

## Behavior: Wrap vs. Saturate
The design **wraps** around. It does not saturate.

## Technical Explanation
The accumulator uses a standard 32-bit `logic signed` register. In Two's Complement arithmetic, when the value exceeds 2,147,483,647 (0x7FFFFFFF), the Most 
Significant Bit (MSB) flips from 0 to 1. The hardware does not have logic to "clamp" the value at the maximum; instead, it continues the addition, which 
results in the value jumping to the most negative possible 32-bit integer (-2,147,483,648).


## Project Impact
For the Indoor Localization CNN engine, a 32-bit accumulator provides sufficient headroom for INT8 spatial feature extraction. Wrapping is acceptable as 
long as the total sum per convolution window stays within the 2-billion value range.

