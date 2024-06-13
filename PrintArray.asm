.data 
array: .word 2,3,5,7,11,13,17,19,23,29
size: .word 10

.text
la $t0 , array # Load array
lw $t1, size # Size counter 
li $t2 , 0 # loop counter 

print:
beq $t2,$t1, end # t2 == t1 go to end

lw $a0, ($t0)
li $v0, 1
syscall # print number(integer)

addi $t2 ,$t2,1 # advance loop counter
addi $t0,$t0,4 # advance array pointer

j print

end:
