.data 
string1: .asciiz "Number of integers(N)"
string2: .asciiz "Sum = "

         .text
         .globl  main

main:
la $a0,string1
li $v0,4
syscall

li $v0,5
syscall

move $t0,$v0 # N value

#Registers
li $t1,0 # loop inc
li $t2,0 # sum


loop: 
addi $t1,$t1,1 # t1 = t1 + 1 inc loop 
add $t2,$t2,$t1 # sum = sum + i($t1)
beq $t0,$t1,exit # if t0 = t1 (N = i), go to exit
j loop # jump back too loop

exit:
la $a0,string2
li $v0,4
syscall
  
move $a0 , $t2
li $v0,1
syscall
