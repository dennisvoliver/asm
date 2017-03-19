	segment	.data
string:	db	"more!", 0
str2:	db	"less!",0
	segment	.text
	global	_start
_start:
	mov	rax, 0x80000000
	mov	rcx, -0x80000000	; byte
	cmp	rax, rcx	; compare
	jl	less
more:
	mov	esi, string
end:	mov	edx, 6
	mov	eax, 1
	mov	edi, 2
	syscall
	mov	eax, 60
	syscall
less:
	mov	esi, str2
	jmp	end
