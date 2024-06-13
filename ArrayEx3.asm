# Print array

.data
arr1: .word 1,4,6,2,34,8,12
size: .word 7

.text
main:
la $t0,arr1 # Load address
lw $t1,size # Load the size 
li $t2,0 # Loop counter 

print_arr:
beq $t1,$t2,end
lw $a0,0($t0) # print the value
li $v0,1
syscall

li $a0,32 #  32 sleep
li $v0,11 # character print (bosluk birakmak icin)
syscall

addi $t2,$t2,1 # Increment loop counter
addi $t0,$t0,4 # Increment array index
j print_arr
end: