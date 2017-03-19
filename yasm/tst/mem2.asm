	segment .data
a	times 10 dq 0
c	db	"wawwawa", 0

	segment .bss
b	resw	5
d	resq	1

	segment .text
	global main		; let the linker know about main
main:
	push	rbp		; set up a stack frame for main
	mov	rbp, rsp	; set rbp to point to the stack frame
	sub	rsp, 16		; leave some room for local variable
	mov	[d], rsp
				; leave rsp on a 16 byte boundary
	xor	eax, eax	; set rax to 0 for return value
	leave			; undo the stack frame manipulations
	ret
