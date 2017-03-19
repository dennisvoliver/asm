	.file	"ts.c"
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"sam.txt"
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB11:
	.cfi_startproc
	movl	$438, %edx
	xorl	%esi, %esi
	movl	$.LC0, %edi
	xorl	%eax, %eax
	jmp	open
	.cfi_endproc
.LFE11:
	.size	main, .-main
	.ident	"GCC: (Ubuntu/Linaro 4.6.3-1ubuntu5) 4.6.3"
	.section	.note.GNU-stack,"",@progbits
