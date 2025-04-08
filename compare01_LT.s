/* -- compare01_LT.s */
.text
.global main
main:
    mov r1, #1       @ r1 <- 1
    mov r2, #2       @ r2 <- 2
    cmp r1, r2
    blt case_equal   @ Branch if less than (N!=V)
case_different:
    mov r0, #2
    b end
case_equal:
    mov r0, #1
end:
    bx lr
