	.code32
	.section .data
x:	.int 13
	.globl _start
_start:
	movl $4, %eax
	movl $1, %ebx
	movl $x, %ecx
	int $0x80
	movl $1, %eax
	movl $0, %ebx
	int $0x80
