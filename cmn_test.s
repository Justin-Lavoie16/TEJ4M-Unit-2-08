/* -- cmn_test.s */
.text
.global main
main:
    mov r1, #5         @ r1 = 5
    cmn r1, #5         @ Compare r1 with -5 (5 + 5 = 10)
    beq case_equal     @ Branch if equal (should NOT branch)
    blt case_less      @ Branch if less than (should NOT branch)
    bgt case_greater   @ Branch if greater than (SHOULD branch)

case_equal:
    mov r0, #1         @ Equal case
    b end

case_less:
    mov r0, #2         @ Less than case
    b end

case_greater:
    mov r0, #3         @ Greater than case

end:
    bx lr
