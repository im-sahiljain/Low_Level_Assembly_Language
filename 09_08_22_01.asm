	section .text
	global main
main:
	mov eax,10
	mov ebx,20
a:	mov ecx,30		
	mov edx,40
	;; add eax,ebx
	;; sub ecx,edx
	mul ebx
	div ecx
	;; jmp a
	jnz a
	xchg eax,ebx
