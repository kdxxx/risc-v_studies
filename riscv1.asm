.globl __start 
.data  #; Data segment - can only read/write to this area.
msg1:
   .string "Hello world"
   .byte 0
.text
__start:
#;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

	LA a0,msg1 #; message to show on screen
	li a7, 4   #; print string
	ecall      #;simulator function call
	
	j Shutdown #; jump to shutdown
	
#;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

Shutdown: # shutdown label
	li a7, 10 # ends the program with status code 10
	ecall # simulator function calll
