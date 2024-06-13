.data
  array:  .word 1, 5, 3, 8, 2, 12, 6, 9, 4, 7  # Declare your array of 10 numbers
  result: .asciiz "The sum of the array is: "  # String to display the result

.text
.globl main 
main:
  li   $t0, 0         # $t0 will store the sum (initialize to zero)
  la   $t1, array     # $t1 holds the base address of the array
  li   $t2, 10        # $t2 is the counter for the loop

loop:
  lw   $t3, 0($t1)    # Load a word (number) from the array into $t3
  add  $t0, $t0, $t3  # Add the number to the sum
  addi $t1, $t1, 4    # Move to the next element in the array (increment address by 4)
  addi $t2, $t2, -1   # Decrement the counter
  bne  $t2, $zero, loop  # Branch to 'loop' if the counter is not zero

  # Now the sum is in $t0,  let's display the result:
  la   $a0, result    # Load the address of the result string
  li   $v0, 4         # System call code for print string
  syscall

  move $a0, $t0       # Move the sum into $a0
  li   $v0, 1         # System call code for print integer
  syscall

  