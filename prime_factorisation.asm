@ ARMv7 assembly

.section .data
    divisor:    .word 2
    numberList: .space 100      @ Space to store list of factors
    idx:        .word 0         @ Index to keep track of list position
    number:    .word 0x20000000 @ read rom address sepcified

.section .text
.global main

main:
    @ Read an integer from memory
    LDR r1, =number
    LDR r1, [r1]

    LDR r2, =divisor
    LDR r2, [r2]

start_outer_loop:
    @ Check if the number is greater than 1
    CMP r1, #1
    BLE exit_program

start_inner_loop:
    @ Check if the number is divisible by the current divisor
    MOV r3, r1
    MOV r4, r2
    BL divide
    CMP r1, r3
    BNE increment_divisor

    @ Store the divisor in the list
    LDR r5, =numberList
    LDR r6, =idx
    LDR r6, [r6]
    STR r4, [r5, r6, LSL #2]
    ADD r6, r6, #1
    STR r6, [r6]

    @ Divide the number by the divisor
    B start_inner_loop

increment_divisor:
    ADD r2, r2, #1
    B start_inner_loop

exit_program:
    MOV r7, #1 @ Exit syscall number
    SVC 0 @ Make the syscall

divide:
    CMP r4, #0 @ to avoid division by 0
    BEQ divide_exit

    MOV r0, r3            
    MOV r1, r4
    BL divide_helper
    B divide_exit

divide_exit:
    BX lr

divide_helper:
    BL __aeabi_idiv
    BX lr

.section .bss
    number:     .word 0
