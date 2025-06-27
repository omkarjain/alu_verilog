# alu_verilog
Simple 4-bit ALU in Verilog with testbench and GTKWave output
# 4-bit ALU in Verilog

This project implements a simple 4-bit Arithmetic Logic Unit (ALU) using Verilog HDL.  
It supports the following operations based on a 3-bit opcode:

| Opcode | Operation  |
|--------|------------|
| 000    | A + B      |
| 001    | A - B      |
| 010    | A & B      |
| 011    | A | B      |
| 100    | A ^ B      |
| 101    | ~A         |
| 110    | A << 1     |
| 111    | A >> 1     |

## 💡 Files

- `alu.v` – Main ALU module with opcode-based operations
- `alu_tb.v` – Testbench to simulate different operations
- `.gitignore` – Excludes compiled and temporary files
- `README.md` – Project documentation

## 🛠️ Tools Used

- Icarus Verilog (iverilog)
- GTKWave
- Git & GitHub

## ▶️ How to Simulate

```bash
iverilog -o alu_test alu.v alu_tb.v
vvp alu_test
gtkwave dump.vcd
