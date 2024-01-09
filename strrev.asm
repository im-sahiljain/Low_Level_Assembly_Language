section .data
	Source db "Source String"
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
	add esi,len
	dec esi
lp:	std
	lodsb
	cld
	stosb
	loop lp
	;;  dec ecx    cmp ecx,0   jnz lp
	mov ecx,len
	
lp1:	mov edi,len
	push ecx
lp2:	mov eax,4
	mov ebx,1
	push ecx
	mov ecx, Destination

	mov edx,edi
	int 0x80
	dec edi
	pop ecx
	loop lp2
	pop ecx
	loop lp1
	
	ret
