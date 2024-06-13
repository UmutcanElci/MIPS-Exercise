.data 
arr1: .word 1,53,67,2,44,7,12,8,34,73

.text
.globl main

main:
la $t1, arr1 # Load the array
lw $t2, 0($t1)
add $t0,$zero,$zero # Initilize index to 0
addi $t3,$zero,10 # Loop counter

loop:
    lw $t4, 0($t1)      # Load the current element
    bgt $t4, $t2, update_max # If current > max, update max
    addi $t1, $t1, 4    # Move to the next element
    addi $t0, $t0, 1    # Increment index
    bne $t0, $t3, loop  # Repeat until end of array
    j end_loop

update_max:
    move $t2, $t4       # Update max
    addi $t1, $t1, 4    # Move to the next element
    addi $t0, $t0, 1    # Increment index
    bne $t0, $t3, loop  # Repeat until end of array

end_loop:
    # Print the maximum value
    li $v0, 1
    move $a0, $t2
    syscall






