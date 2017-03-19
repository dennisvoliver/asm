segment .data

segment	.bss

segment	.text
global _start
_start:
mov	al, -128
mov	rax, 60
int	0x80
