.text
@ .global _start
@ _start:

    // mov r8, #0x74
    // movt r8, #1
    mov r8, #0x400        // add inst addr 0x0
    ldr r9, [r8]        // add inst e2808001  add     r8, r0, #1
    add r9, r9, #1      // add inst e2808002  add     r8, r0, #2
    str r9, [r8]

    mov r0, #1          // print hello world
    ldr r1, =message
    ldr r2, =len
    mov r7, #4
    swi 0

    mov r7, #1
    // swi 0            // do not stop!

.data
message:
    .asciz "hello world I am translator\n"
len = .-message         // current addr - message addr



