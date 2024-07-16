#include "4bc.asm"

ldi 0
st 0 ; first
ldi 1
st 1 ; second

loop:
ld 0
add 1 ; nxt = first + second
st 2
ld 1
st 0
ld 2
st 1
jpn loop
end:
jp end