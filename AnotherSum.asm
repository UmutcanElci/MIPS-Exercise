.data
string1: .asciiz "Enter A : "
string2: .asciiz "Enter B : "
string3: .asciiz "A + B = "

.text

la $a0,string1
li $v0,4
syscall

li $v0,5
syscall

move $t0,$v0

la $a0,string2
li $v0,4
syscall

li $v0,5
syscall

move $t1,$v0


add $t2,$t1,$t0

la $a0,string3
li $v0,4
syscall

move $a0,$t2
li $v0,1
syscall
