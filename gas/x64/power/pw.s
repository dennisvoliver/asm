# toy program for C-styles function calls
.section .data
# everything is in the registers and stack
.section .text

.globl _start
_start:
pushq $0
pushq $2
call _pow
addq $16, %rsp
pushq %rax	# save intermediate result
pushq $0
pushq $5
call _pow
addq $16, %rsp
popq %rbx
addl %eax, %ebx	# save total to return value
movl $1, %eax
int $0x80

# pow(base, exp)
.type _pow, @function
_pow:
pushq %rbp
movq %rsp, %rbp
movq 16(%rbp), %rbx
movq 24(%rbp), %rcx
movl %ebx, %eax

_loop_start:
cmpl $1, %ecx
je _end_loop
cmpl $0, %ecx
je _zero	
imull %ebx, %eax
decl %ecx
jmp _loop_start

# if exponent is zero
_zero :
movl $1, %eax


_end_loop:
movq %rbp, %rsp
popq %rbp	# return to caller's stack frame
ret
