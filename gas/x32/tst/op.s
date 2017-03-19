.code32
.section .data

.section .text


# flags
.equ O_RDONLY, 0
# system calls
.equ SYS_OPEN, 5
.equ SYS_EXIT, 1
.equ LINUX_SYSCALL, 0x80

# stack
.equ ST_ARGV_1, 16	# name of input file

.globl _start
_start : 
movl %esp, %ebp
movl $SYS_OPEN, %eax
movl ST_ARGV_1(%ebp), %ebx
movl $SYS_EXIT, %eax	# breakpoint
int $LINUX_SYSCALL
movl $O_RDONLY, %ecx
movl $0666, %edx
int $LINUX_SYSCALL
movl %eax, %ebx
movl $SYS_EXIT, %eax
int $LINUX_SYSCALL
