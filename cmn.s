mov r1, #5
cmn r1, #5     @ Effectively compares r1 with -5
beq case_equal @ Will branch if r1 == -5
