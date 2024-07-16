
# ruledef register
{
	pc => 0
	prom => 0
    alu => 1
    acc => 2
    mem => 3
}

#ruledef
{
    o{ro: register} i{ri:register}=> ro`2 @ ri`2
    nop => 0x2`2 @ 0x1`2 ; oacc ialu
}

; LDI
oprom iacc
oalu ipc
nop
nop

; LD
omem iacc
oalu ipc
nop
nop

; ST
oacc imem
oalu ipc
nop
nop

; JP
oalu ipc
nop
nop
nop

; ADD
omem ialu
oalu iacc
oalu ipc
nop

; SUB
omem ialu
oalu iacc
oalu ipc
nop

; NAND
omem ialu
oalu iacc
oalu ipc
nop

; JPN
oalu ipc
nop
nop
nop
