	mov edx, 0
	in eax, [dx]
	mov ecx, eax
	in eax, [dx]
	mov edx, eax
ord:	sub eax, ecx
	jz gcd
	jns nxt
	mov eax, ecx
	mov ecx, edx
nxt:	mov edx, eax
	jmp ord
gcd:	mov eax, edx
	mov edx, 1
	out [dx], eax
	ret
