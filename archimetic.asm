.data 
value: .word 12
Z: .word 0

.globl main
.text 

main:
li $t2,25 # (load immediate load a constant value dricatly into a register) so in $t2 value is 25
lw $t3,value # (load word) value(variable) is a word....
add $t4,$t2,$t3 #(sum action) we sum the these two address values $t2 = 25 $t3 = 12 $t5 = 0x00000025(hexadecimal)
sub $t5, $t2, $t3 # (sub action) $t5 = 0x000000d
sw $t5,Z # store the word to Z


move $a0,$t5
li $v0,1

syscall