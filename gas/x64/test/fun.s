.section .data
.section .text

.globl _start
_start :
call me
movq $SYS_EXIT, %rax
movq $0, %rbx
int $LINUX_SYSCALL

.type me, @function
me:
