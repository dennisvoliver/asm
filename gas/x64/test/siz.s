.section .data
.section .text
.globl _start
_start:
pushw $0
notl (%esp)
popw %ebx
movl $1, %eax
int $0x80
