# 4-Bit Arithmetic Logic Unit (ALU) Design Using Vivado

## Overview

This project implements a 4-bit Arithmetic Logic Unit (ALU) using Verilog HDL and verifies its functionality through simulation in Xilinx Vivado.

The ALU performs arithmetic and bitwise logical operations based on a control signal (`SEL`). It demonstrates fundamental digital design concepts used in processors, microcontrollers, and FPGA-based systems.

## Objectives

- Design a 4-bit ALU using Verilog HDL.
- Implement arithmetic and bitwise logical operations.
- Develop a testbench to verify the ALU functionality.
- Simulate the design using Xilinx Vivado.
- Analyze output waveforms for different input combinations and control signals.

## ALU Operations

The ALU selects an operation based on the `SEL` control input.

| SEL | Operation | Description |
|---|---|---|
| `000` | ADD | Adds inputs A and B |
| `001` | SUB | Subtracts B from A |
| `010` | AND | Performs bitwise AND |
| `011` | OR | Performs bitwise OR |
| `100` | XOR | Performs bitwise XOR |
| `101` | NOT | Performs bitwise NOT |

*Note: The opcode assignments should be verified against the Verilog source code. The NOT operation is assumed to operate on input A.*

## Design Flow

1. Created the ALU module using Verilog HDL.
2. Defined arithmetic and logical operations using control signals.
3. Developed a testbench with different input combinations.
4. Simulated the design in Xilinx Vivado.
5. Analyzed the simulation waveforms and checked the output values.

## Simulation Results

The following table shows example results for inputs `A = 0101` and `B = 0011`.

| A | B | SEL | Operation | Result |
|---|---|---|---|---|
| `0101` | `0011` | `000` | Addition | `1000` |
| `0101` | `0011` | `001` | Subtraction | `0010` |
| `0101` | `0011` | `010` | AND | `0001` |
| `0101` | `0011` | `011` | OR | `0111` |

These examples illustrate the expected outputs for the listed operations. The complete operation set should be verified using the project's testbench.

## Applications

- Digital Signal Processing
- Embedded Systems
- Microprocessors and Microcontrollers
- FPGA-Based Designs
- Computer Architecture

## Future Improvements

- Extend the design to 8-bit and 16-bit ALUs.
- Add carry, overflow, and zero flag generation.
- Implement the design on FPGA hardware.
- Integrate the ALU into a simple processor design.

## Conclusion

This project demonstrates the design and simulation of a 4-bit ALU using Verilog HDL and Xilinx Vivado. It provides a foundation for understanding arithmetic operations, bitwise logic, control signals, and processor datapath design.
