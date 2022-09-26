.text
.global _start
_start:
    add r8, r0, #1     // r8 = 1, should be 2
    add r1, r0, #1
    add r1, r0, #1
    add r1, r0, #1      // cache line aligned

//    add r8, r0, #1      // r8 = 1
    add r8, r8, #48     // r8 = '1'
    ldr r9, =num
    str r8, [r9]

    mov r0, #1
    ldr r1, =num        // print r8
    mov r2, #1
    mov r7, #4
    swi 0

    mov r0, #1
    ldr r1, =message
    ldr r2, =len
    mov r7, #4
    swi 0

    mov r7, #1
    swi 0

.data
message:
    .asciz "hello world I am yanyue\n"
num:
    .ascii " "
len = .-message


