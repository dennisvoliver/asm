	segment	.data
string:	db	"hello, world", 0
write:	db	1		
exit:	db	60
stdout:	db	1
len:	db	13

	segment	.text
	global	_start
_start:	mov	al, [write]
	movzx	di, [stdout]
	lea	rsi, [string]
	mov	dl, [len]
	syscall
	mov	al, [exit]
	xor	di, di
	syscall
