.section .data
.section .text

.globl _start
_start :
movq %rsp, %rbp
movq 24(%rbp), %rax
movq (%rax), %rbx
movq $1, %rax
int $0x80
