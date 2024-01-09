section .data
	mystring db "Low Level Assembly Program",0

	len equ $-mystring
	msg db "Length is %d",10,0
section .bss
	mydest resb len
section .text
	global main
	extern printf,puts
main:
	mov ecx,len
	mov esi, mystring
	mov edi, mydest
	add edi,ecx
	dec edi
	dec edi
lp1:	xor eax,eax
	mov al, byte[esi]
	mov byte[edi],al
	inc esi
	dec edi
	loop lp1
lp:	push ecx
	push msg
	call printf
	add esp,8

	push mydest
	call puts
	add esp,4
	ret
