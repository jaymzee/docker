	.text
	.global _start
_start:
	mov r0, #1
	ldr r1, =message
	ldr r2, =messagelen
	mov r7, #4
	swi 0

	mov r0, #42
	mov r7, #1
	swi 0

	.data
message:
	.ascii "Hello, World!\n"
messagelen = .-message
