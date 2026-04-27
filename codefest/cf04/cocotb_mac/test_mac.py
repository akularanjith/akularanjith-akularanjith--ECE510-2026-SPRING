import cocotb
from cocotb.clock import Clock
from cocotb.triggers import RisingEdge, Timer

@cocotb.test()
async def test_mac_basic(dut):
    """Task 1: Basic functional test"""
    cocotb.start_soon(Clock(dut.clk, 10, unit="ns").start())
    dut.rst.value = 1
    await RisingEdge(dut.clk)
    dut.rst.value = 0
    dut.a.value = 3; dut.b.value = 4
    for expected in [12, 24, 36]:
        await RisingEdge(dut.clk)
        await Timer(1, unit="ns") # Allow register to settle
        assert dut.out.value.signed_integer == expected

@cocotb.test()
async def test_mac_overflow(dut):
    """Task 2: Overflow behavior check"""
    cocotb.start_soon(Clock(dut.clk, 10, unit="ns").start())
    dut.rst.value = 1
    await RisingEdge(dut.clk)
    dut.rst.value = 0
    dut.a.value = 127; dut.b.value = 127 # Maximize inputs
    for _ in range(10):
        await RisingEdge(dut.clk)
    cocotb.log.info(f"Final Value: {dut.out.value.signed_integer}")
