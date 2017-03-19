# toy program about C-style recursive functions

.section .data

.section .text

.globl _start
_start :
pushq $5
call _fac
addq $8, %rsp
movq %rax, %rbx
movq $1, %rax
int $0x80

# factorial(num)
.type _fac, @function
_fac :
pushq %rbp
movq %rsp, %rbp
cmpq $1, 16(%rbp)	# check for base case
jle _base_case
movq 16(%rbp), %rbx	# parameter to rbx

# fac(num) = num * fac(num - 1)
decq %rbx
pushq %rbx
call _fac		# recursive
popq %rbx		# get num - 1 again
incq %rbx		# undo our decrement
imulq %rbx, %rax
jmp _cleanup

_base_case :
movq $1, %rax

_cleanup :
movq %rbp, %rsp
popq %rbp
ret
