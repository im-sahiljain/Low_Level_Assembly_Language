	section .data
	Array dd 10,20,30,40,-1
	msg db "Input number is %d",10,0
	section .text
	global main
	extern printf
main:
	xor ecx,ecx		;index
	xor esi,esi
lp:	mov ebx,Array		;base
	mov eax,4		; size
	mul ecx			; index* size
	add ebx,eax ;base+mulresult
	
	cmp dword[ebx],-1
	jz endof
	add esi,dword[ebx]
	pusha
	push dword[ebx]
	push msg
	call printf
	add esp,8
	popa
	inc ecx
	jmp lp
endof:	ret
