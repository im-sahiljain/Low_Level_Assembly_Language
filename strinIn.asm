section .data
	Source db "Source String",10,0
	len equ $-Source
section .bss
	Destination resb len
section .text
	global main
main:
	mov esi,Source
	mov edi, Destination
	mov ecx,len
	xor eax,eax
rep	movsb

	mov eax,4
	mov ebx,1
	mov ecx, Destination
	mov edx,len
	int 0x80

	ret
