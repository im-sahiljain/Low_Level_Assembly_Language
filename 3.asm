	section .data
	a dd 10
	section .text
	global main
main:
	mov eax,a
	mov ebx,[a]
