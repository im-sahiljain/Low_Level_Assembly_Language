	section .data
	Array dd 1012,2320,1230,7940,120,342,-1
	msg db "Maximum number is %d",10,0
	section .text
	global main
	extern printf
main:
	xor ecx,ecx		;index
	mov esi,-2
lp:	mov ebx,Array		;base
	mov eax,4		; size
	mul ecx			; index* size
	add ebx,eax ;base+mulresult
	cmp dword[ebx],-1
	jz endof
	cmp dword[ebx],esi
	jng lp1
	mov esi,dword[ebx]
lp1:	
	inc ecx
	jmp lp
endof:pusha
	push esi
	push msg
	call printf
	add esp,8
	popa



	ret
