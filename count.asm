#include "4bc.asm"

ldi 0xf
st 0xf
ldi 3
st 0
ldi 1
st 1
add 0xe
ld 0
add 1
st 0
ld 0xf
add 0xf
jp 4
