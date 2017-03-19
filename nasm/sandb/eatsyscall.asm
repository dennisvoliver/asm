	section	.data
eatmsg:	db	"Eat at Joe's!", 10
eatlen:	equ	$-eatmsg
	section .text
	global	_start
_start:
	mov eax, 4
	mov ebx, 1
	mov ecx, eatmsg
	mov edx, eatlen
	int 80H

	mov eax, 1
	mov ebx, 0
	int 80H
