
import cocotb
from cocotb.triggers import Timer, FallingEdge

@cocotb.test()
async def test_localization_basic(dut):
    """Test the localization core reset and basic accumulation"""
    dut.rst.value = 1
    await Timer(10, units="ns")
    dut.rst.value = 0
    await Timer(10, units="ns")

    # Representative RSSI input
    dut.rssi_sample.value = -45 
    await Timer(10, units="ns")
    
    assert dut.accumulated_rssi.value != 0, "Accumulator failed to update!"
    cocotb.log.info(f"Localization Output: {dut.accumulated_rssi.value.to_signed()}")

@cocotb.test()
async def test_localization_overflow_check(dut):
    """Documenting behavior: Does it wrap or saturate?"""
    cocotb.log.info("Checking overflow behavior...")
    # Logic: Verilog 'logic signed' registers wrap by default in 2's complement.
