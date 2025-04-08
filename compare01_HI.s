/* -- compare01_HI.s */
.text
.global main
main:
    mov r1, #3       @ r1 <- 3
    mov r2, #2       @ r2 <- 2
    cmp r1, r2
    bhi case_equal   @ Branch if higher (C=1 and Z=0)
case_different:
    mov r0, #2
    b end
case_equal:
    mov r0, #1
end:
    bx lr
