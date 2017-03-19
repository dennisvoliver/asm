.section .data

.section .text
.equ ST_ARGV_1, 16

.globl _start
_start:
movq %rsp, %rbp
movq ST_ARGV_1(%rbp), %rbx
.equ SYS_OPEN, 2
.equ O_RDONLY, 0
movq $SYS_OPEN, %rax
movq $O_RDONLY, %rcx
movq $0666, %rdx
int $0x80
cmpq $0, %rax
jge opened
movq $1, %rbx
jmp endd

opened:
movq $0, %rbx
endd :
movq $1, %rax
int $0x80

