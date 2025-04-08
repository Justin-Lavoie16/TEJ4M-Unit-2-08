/* -- compare01_NE.s */
.text
.global main
main:
    mov r1, #3       @ r1 <- 3
    mov r2, #2       @ r2 <- 2
    cmp r1, r2
    bne case_equal   @ Branch if not equal (Z=0)
case_different:
    mov r0, #2
    b end
case_equal:
    mov r0, #1
end:
    bx lr
