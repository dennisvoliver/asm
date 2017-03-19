#try to read the first word in the instruction segment
.section .data
.section .text
.globl _start
_start:
movl $4, %eax
movl $1, %ebx
movl _start, %ecx
movl $2, %edx
int $0x80	#write to output
movl $1, %eax
int $0x80	#exit
