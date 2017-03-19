; Program: exit
;
; Executes the exit system call
;
; No input
;
; Output: only the exit status ($? in the shell)
;

segment .text
global main

main:
mov eax, 1	
mov ebx, 0
int 0x80
