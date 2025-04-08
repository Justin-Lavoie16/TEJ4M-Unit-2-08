/* -- compare01_MI.s */
.text
.global main
main:
    mov r1, #-1      @ r1 <- -1 (negative)
    mov r2, #0       @ r2 <- 0
    cmp r1, r2
    bmi case_equal   @ Branch if negative (N=1)
case_different:
    mov r0, #2
    b end
case_equal:
    mov r0, #1
end:
    bx lr
