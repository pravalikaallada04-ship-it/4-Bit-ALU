# 4-Bit ALU in Verilog

## Overview

This project implements a 4-bit Arithmetic Logic Unit (ALU) using Verilog HDL.
The ALU performs multiple arithmetic and logical operations based on a
3-bit operation select input.

## Features

- 4-bit data processing
- Arithmetic operations
- Logical operations
- Carry output
- Verilog HDL implementation
- Comprehensive testbench
- Simulation waveform
- Expected output

## Operations

| Sel | Operation | Description |
|-----|-----------|-------------|
| 000 | ADD | A + B |
| 001 | SUB | A - B |
| 010 | AND | A & B |
| 011 | OR  | A | B |
| 100 | XOR | A ^ B |
| 101 | NOT | ~A |
| 110 | Shift Left | A << 1 |
| 111 | Shift Right | A >> 1 |

## Inputs

| Signal | Width | Description |
|--------|-------|-------------|
| `A` | 4 | First input |
| `B` | 4 | Second input |
| `Sel` | 3 | Operation selection |

## Outputs

| Signal | Width | Description |
|--------|-------|-------------|
| `Result` | 4 | ALU result |
| `Carry` | 1 | Carry output |

## Tools Used

- Verilog HDL
- ModelSim / Vivado / Icarus Verilog
- GTKWave

## Project Files

- `alu_4bit.v` - ALU design
- `alu_4bit_tb.v` - Testbench
- `simulation/waveform.png` - Simulation waveform
- `simulation/output.log` - Simulation output

## Simulation

The testbench verifies all eight ALU operations using different input
combinations and checks the resulting output and carry.