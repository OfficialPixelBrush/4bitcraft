#include "4bc.asm"

ldi 2   ; 0: 2 -> Acc
st 0    ; 1: Acc -> Mem[0]
ldi 1   ; 2: 1 -> Acc
st 1    ; 3: Acc -> Mem[1]

loop:
ld 0    ; 4: Mem[0] -> Acc
add 1   ; 5: Acc + Mem[1] -> Acc
st 0    ; 6: Acc -> Mem[0]
jpn loop; 7: Jump to loop label
