.data
array: .word 10, 50, 72, 54, 12, 43, 63, 23, 75, 22

.text
.globl main
main:
    la $t1, array    # Load the array address into $t1
    lw $t2, 0($t1)   # Load the first element of the array into $t2 as the initial maximum value

loop:
    addi $t1, $t1, 4   # Move to the next element in the array
    lw $t3, 0($t1)     # Load the current element into $t3

    slt $t4, $t3, $t2  # Compare the current element with the current maximum
    bne $t4, $zero, skip # If the current element is not greater than the current maximum, skip updating the maximum

    move $t2, $t3   # Update the maximum value to the current element
    skip:
    bne $t1, $zero, loop # Continue looping if there are more elements in the array

    # Print the maximum value
    li $v0, 1
    move $a0, $t2
    syscall

    # Exit
    li $v0, 10
    syscall
