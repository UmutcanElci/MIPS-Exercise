# Given an int array of 10 , Find number of even integers

.data 
arr: .word 1,5,6,3,4,64,32,13,32,92

.text
.globl main

main:
la $t1,arr
add $t2,$t0,$t0 # Count
addi $t3 , $t0,10 # Loop
loop:
lw $t4,0($t1) #get index
andi $t5, $t4,1
bne $t5,$t0,skip
addi $t2,$t2,1
skip:
addi $t1,$t1,4 #inc pointer
addi $t3,$t3,-1 # 
bne $t3,$t0,loop

li $v0, 1
move $a0, $t2
syscall
