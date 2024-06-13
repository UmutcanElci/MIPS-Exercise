.data # data is stored here in memory ()allocated in RAM 
     hello_world:  .asciiz "Hello, World!" #Declare a null terminated string 
     num1: .word 51 # Integres referred to as words 
     
        
     arr1: .word 1,2,3,4,5 #array of words
     arr2: .byte 'a','c' #array of chars (1 byte each) 
     buffer: .space 60 # allocates space in ram 
     # bosluk olusturuken word 4 bayt sayildigi icin ornek : 5 tane sayisi baska bit diziye aktarmak icin 20 bayt gerekir 5 * 4 

.text

.globl _main

     _main:
    la $a0, hello_world                    #load address komutu ile hello_world metninin bellekteki adresini 
                                           #$a0 kayit deposuna ($a0-3 : Used to pass values to function calls)
    li $v0, 4                              #load immediate komutu ile 4 degerini ($a0) kayit deposuna yukler 
                                           #($v0-1 : Return Value) 
    syscall                                # syscall komutu $a0 ve $v0 kayitlarindaki degereleri kulalnarak bir sistem cagrisini tetikler
    
    
   # $a0 daki adres yazdirilacak metnin konumunu gosterir $v0 daki deger sistem cagirisinin numarasini belirtir