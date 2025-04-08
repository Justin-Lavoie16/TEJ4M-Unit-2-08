/* -- compare01_GE.s */
.text
.global main
main:
    mov r1, #2       @ r1 <- 2
    mov r2, #2       @ r2 <- 2
    cmp r1, r2
    bge case_equal   @ Branch if greater or equal (N=V)
case_different:
    mov r0, #2
    b end
case_equal:
    mov r0, #1
end:
    bx lr
