/* -- compare01_PL.s */
.text
.global main
main:
    mov r1, #1       @ r1 <- 1 (positive)
    mov r2, #0       @ r2 <- 0
    cmp r1, r2
    bpl case_equal   @ Branch if positive or zero (N=0)
case_different:
    mov r0, #2
    b end
case_equal:
    mov r0, #1
end:
    bx lr
