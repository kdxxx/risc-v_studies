.globl __start
.data 
msg1:
  .string "hellow world"
  .byte 0
  
.text
__start: 
# ;;;;;;;;;;;;;;

   LA a0,msg1
   li a7, 4
   ecall 
   j Shutdown

# ;;;;;;;;;;;;,
Shutdown:
  li a7,10
  ecall
