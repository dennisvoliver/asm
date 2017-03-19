.code32
.section .data

.section .text
.globl _start
_start:
movl %esp, %ebp
#movl 8(%ebp), %eax
#movl (%eax), %ebx
movl $1, %eax
int $0x80
