/* -- compare01_VS.s */
.text
.global main
main:
    mov r1, #0x7FFFFFFF @ Max positive 32-bit int
    mov r2, #1
    adds r1, r1, r2    @ This will overflow (V=1)
    bvs case_equal     @ Branch if overflow (V=1)
case_different:
    mov r0, #2
    b end
case_equal:
    mov r0, #1
end:
    bx lr
