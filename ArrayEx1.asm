.data 
arr1: .word 12,34,55
arr2: .word one,two,three

one: .asciiz "One : \n"
two: .asciiz "Two : \n"
three: .asciiz "Three : \n"

.text
main:
la $s0,arr1
lw $t0,0($s0)
lw $t1,4($s0)
lw $t2,8($s0)

li $v0,4
la $s1, arr2

lw $a0, 0($s1)
syscall

lw $a0,4($s1)
syscall

lw $a0, 8($s1)

la $t0, arr2
li $v0,4
li $t1,0
li $t2,8


loop:
lw $a0, arr2($t1)
syscall

addi $t1,$t1,4

ble $t1,$t2,loop
