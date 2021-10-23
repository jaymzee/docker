	.text
	.globl add
add:
	add $v0, $a0, $a1
	jr $ra

	.globl sayhi
sayhi:
	li $v0, 5001	# write
	li $a0, 1
	dla $a1, msg
	li $a2, msglen
	syscall	
	
	.data
msg:	.ascii "Hello, World!\n"
msglen = . - msg
