.data 
string1: .asciiz "Enter a nubmer: " # Degiskenleri tanimadim ve deger verdim (bi bakima)
string2: .asciiz "Enter the second nubmer: "
string3: .asciiz "Sum: "

.text
main:


la $a0,string1 # string1 variableini $a0 addresine yukledim 
li $v0,4 #4 degerini $v0 kayit deposuna yukeldim -> dduzeltme registerlarin ozellikleri var 4 -> print string
syscall # sistem cagrisi gerceklestirdim

li $v0,5 # integer okumak icin (sabit deger yukle) nereye ->5 kodunu $v0 a yukle  5 -> read integer
syscall #cagiriyi gerceklestir (yani sadece $v0) syscall dan sonra $v0 registeri sistem cagrisnin donus degerini saklar.

move $t0,$v0 # girdigimiz degeri gecici degere aktardik 

la $a0, string2 # pass the value (for function call with $v0-1)
li $v0, 4 
syscall

li $v0,5
syscall

move $t1,$v0

la $a0,string3
li $v0,4
syscall

add $t2,$t1,$t0
li $v0,1
move $a0,$t2
syscall

