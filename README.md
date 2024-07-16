# 4BitCraft
A extremely limited, Harvard architecture CPU, designed to be built in Minecraft Beta 1.7.3
# Instruction Set
3-Bits for Instruction (8 Instructions)
4-Bits for Data

| #   | Instruction | Parameter | Function                             |
| --- | ----------- | --------- | ------------------------------------ |
| 000 | LDI         | Value     | Loads Value into Accumulator         |
| 001 | LD          | Address   | Loads Value from Memory Location     |
| 010 | ST          | Address   | Stores Value in Memory Location      |
| 011 | JP          | Address   | Jumps to Address if Carry is set     |
| 100 | ADD         | Address   | Adds with Memory Location            |
| 101 | SUB         | Address   | Subtracts with Memory Location       |
| 110 | NAND        | Address   | NANDs with Memory Location           |
| 111 | JPN         | Address   | Jumps to Address if Carry is not set |

# Microcode
Each Register can either input or output to the shared data bus.
The only special case is the PC and PROM. The PC cannot output to the Data bus, likewise, the PROM cannot receive input from the Data bus. Additionally, MEM and ALU can *theoretically* receive Input from the Data bus, but the Hardware is designed to only connect directly to where they get data from.

| #           | Register |                      |
| ----------- | -------- | -------------------- |
| 00 (Output) | PROM     | Outputs Instructions |
| 00 (Input)  | PC       | Counts through PROM  |
| 01          | ALU      | Buffers ALU Output   |
| 10          | ACC      | Main Register        |
| 11          | MEM      | Memory               |
# Example Code
See `count.asm` and `fibo.asm`