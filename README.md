# 4-Bit Arithmetic Logic Unit (ALU) Design using Vivado

## Overview

This project implements a 4-bit Arithmetic Logic Unit (ALU) using Verilog HDL and simulates its functionality using Xilinx Vivado.

The ALU performs multiple arithmetic and logical operations based on the control input (opcode). It serves as a fundamental component of processors, microcontrollers, and digital systems.

---

## Objectives

- Design a 4-bit ALU using Verilog HDL
- Implement arithmetic and logical operations
- Verify functionality through simulation
- Analyze output behavior for different control signals

---



## Design Flow

1. Created ALU module in Verilog HDL.
2. Defined arithmetic and logical operations using control signals.
3. Developed a testbench to verify functionality.
4. Simulated the design in Vivado.
5. Analyzed waveforms and validated outputs.

---

## Simulation Results

The simulation confirms correct execution of all supported ALU operations.

Example:

| A | B | SEL | Operation | Result |
|---|---|-----|-----------|--------|
| 0101 | 0011 | 000 | Addition | 1000 |
| 0101 | 0011 | 001 | Subtraction | 0010 |
| 0101 | 0011 | 010 | AND | 0001 |
| 0101 | 0011 | 011 | OR | 0111 |

---



## Applications

- Digital Signal Processing
- Embedded Systems
- Microprocessors
- FPGA-Based Designs
- Computer Architecture

---

## Future Improvements

- 8-bit and 16-bit ALU implementation
- Overflow and Zero flag generation
- FPGA hardware implementation
- Integration with a simple processor design

---

## Conclusion

A 4-bit ALU was successfully designed and simulated using Verilog HDL in Xilinx Vivado. The implementation demonstrates fundamental arithmetic and logical operations and provides a foundation for understanding processor datapath design and digital system development.
