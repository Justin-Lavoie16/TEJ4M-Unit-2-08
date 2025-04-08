/* -- tst_test.s */
.text
.global main
main:
    mov r1, #0b1010    @ Binary 1010 (decimal 10)
    tst r1, #0b0010    @ Test bit 1 (2nd bit from right)
    bne bit_set        @ Branch if bit is set
    
bit_clear:
    mov r0, #0         @ Bit is clear
    b end

bit_set:
    mov r0, #1         @ Bit is set

end:
    bx lr
