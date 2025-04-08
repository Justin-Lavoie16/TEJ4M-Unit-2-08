mov r1, #0b1010
tst r1, #0b0010 @ Test if bit 1 is set
bne bit_set     @ Branch if bit 1 is set (non-zero result)
