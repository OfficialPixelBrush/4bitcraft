; .---------------------------------------------------------.
; | Fibonacci Sequence for the Beta 1.7.3 Redstone Computer |
; '---------------------------------------------------------'
;               - Made by PixelBrushArt -
;
;      (Partly inspired by past minimal CPU attempts,
;        which were all inspired by the Zilog Z80)

; Necessary for customasm to know the syntax
#include "4bc.asm"

ldi 0   ; 0: Load 0 into the Accumulator
st 0    ; 1: Store this to Memory Location 0
ldi 1   ; 2: Load 1 into the Accumulator
st 1    ; 3: Store this to Memory Location 1

loop:   ;    This is the main Fibonacci loop
ld 0    ; 4: Load the Contents of Memory Location 0 into the Accumulator
add 1   ; 5: Add whatever is in Memory Location 1 to the Accumulator
st 2    ; 6: Store the result in Memory Location 2
ld 1    ; 7: Mem[1] -> Acc
st 0    ; 8: Acc -> Mem[0]
ld 2    ; 9: Mem[2] -> Acc
st 1    ; A: Acc -> Mem[1]
jpn loop; B: If the carry flag is not set, loop around

end:
jp end  ; C: If the carry flag is set, get stuck forever