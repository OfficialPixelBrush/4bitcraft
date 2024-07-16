7-Bit ROM
3-Bits for Instruction (8 Instructions)
4-Bits for Data

| #   | Instruction | Parameter |
| --- | ----------- | --------- |
| 000 | LDI         | Value     |
| 001 | LD          | Address   |
| 010 | ST          | Address   |
| 011 | JP          | Address   |
| 100 | ADD         | Address   |
| 101 | SUB         | Address   |
| 110 | NAND        | Address   |
| 111 | XOR         | Address   |

## Microcode

| #   | Register |
| --- | -------- |
| 00  | PROM/PC  |
| 01  | ALU      |
| 10  | ACC      |
| 11  | MEM      |
^ Forgot to account for Program Counter for Jumps :p
Each of these have an input and output mode

# Example Code
