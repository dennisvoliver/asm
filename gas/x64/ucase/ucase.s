# toy program that reads stdin and converts all letters to upper case

.section .data
.section .bss

.equ BUFFER_SIZE, 500
.lcomm BUFFER_DATA, BUFFER_SIZE
.section .text
.globl _start
_start :
.equ LINUX_SYSCALL, 0x80
.equ SYS_OPEN, 2
.equ SYS_CLOSE, 3
.equ SYS_READ, 0
.equ SYS_WRITE, 1
.equ ST_ARGV_1, 16
.equ ST_ARGV_2, 24
.equ FD_IN, -8
.equ FD_OUT, -16
.equ PERM_ALL, 0666
.equ O_RDONLY, 0
.equ O_CREAT_TRUNC_WRONLY, 03101
.equ SYS_EXIT, 60

movq %rsp, %rbp

# stop
movq $SYS_EXIT, %rax
int $LINUX_SYSCALL
open_intput_file:
movq $SYS_OPEN, %rax
movq ST_ARGV_1(%rbp), %rbx
movq $O_RDONLY, %rcx
movq $PERM_ALL, %rdx
int $LINUX_SYSCALL
cmpq $0, %rax
jl cannot_open
movq %rax, FD_IN(%rbp)

open_output_file:
movq $SYS_OPEN, %rax
movq ST_ARGV_2(%rbp), %rbx
movq $O_CREAT_TRUNC_WRONLY, %rcx
movq $PERM_ALL, %rdx
int $LINUX_SYSCALL
movq %rax, FD_OUT(%rbp)

read_input:
movq $SYS_READ, %rax
movq $FD_IN, %rbx
movq $BUFFER_DATA, %rcx
movq $BUFFER_SIZE, %rdx
int $LINUX_SYSCALL

write_output:
movq $SYS_WRITE, %rax
movq $FD_OUT, %rbx
movq $BUFFER_DATA, %rcx
movq $BUFFER_SIZE, %rdx

close_all_files:
movq FD_IN(%rbp), %rbx
movq $SYS_CLOSE, %rax
int $LINUX_SYSCALL
movq FD_OUT(%rbp), %rbx
movq $SYS_CLOSE, %rax
int $LINUX_SYSCALL


movq $0, %rbx
exit_program:
movq $SYS_EXIT, %rax
int $LINUX_SYSCALL

cannot_open:
movq %rax, %rbx
jmp exit_program
