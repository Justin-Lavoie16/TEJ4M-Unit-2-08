/* -- compare01_VC.s */
.text
.global main
main:
    mov r1, #1
    mov r2, #1
    adds r1, r1, r2    @ No overflow (V=0)
    bvc case_equal     @ Branch if no overflow (V=0)
case_different:
    mov r0, #2
    b end
case_equal:
    mov r0, #1
end:
    bx lr
