.data 
arr1: .word 1,2,3,4,5,6,7,8,9,10

.text
main:
la $t1,arr1 # Load the array

print_loop:
bge $t0,10,exit # t0 >= 10 go to exit

lw $t2,0($t1) # load t2 to first index of t1
addi $t1,$t1,4 # Increment the idnex of the array

li $v0,1 # load v0(return  value) the service 1(print integer)
move $a0,$t2 # move t2(we take the value of array) to a0(Used to pass values to fucntion calls)
syscall

li $a0,32 #  32 sleep
li $v0,11 # character print (bosluk birakmak icin)
syscall

addi $t0,$t0,1 # add t0 = t0 + 1
j print_loop

exit:
li $v0,10
syscall