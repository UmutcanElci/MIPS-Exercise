.data
array: .word 17,5,92,87,41,30,23,55,72,36
size: .word 10

.text

main:
lw $s3 , size # outer loop
addi $s3, $s3, -1 

outer: 
bge $zero, $s3, outer_end
li $s0,0 # set inner loop counter
li $s1,0 # set current element offset


addi $s3,$s3,-1
j outer

outer_end:

inner: 
bge $s0,$s3,inner_end
lw $t7, array($s1)
lw $t8, array + 4($s1)

ble $t7,$t8, no_swap

sw $t8, array($s1)
sw $t7, array + 4($s1)

no_swap:
addi $s1,$s1,4
addi $s0,$s0,1

inner_end:




