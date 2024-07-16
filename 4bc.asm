#once
#bankdef prom
{
    #addr 0x00
    #addr_end 0x10
    #outp 0
    #bits 7
    #fill
}


#ruledef
{
    ldi {value: u4} => 0x0`3 @ value
    ld {address: u4} => 0x1`3 @ address
    st {address: u4} => 0x2`3 @ address
    jp {address: u4} => 0x3`3 @ address
    add {address: u4} => 0x4`3 @ address
    sub {address: u4} => 0x5`3 @ address
    nand {address: u4} => 0x6`3 @ address
    jpn {address: u4} => 0x7`3 @ address
}
