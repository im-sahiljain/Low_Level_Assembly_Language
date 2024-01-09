	section .data
	a dd 10
	b db 10
	msg db "Value of a is %d",10,0
	msg1 db "Value of a is %c",10,0
	section .text
	global main
	extern printf
main:
	;; printf("Value of a is %d\n",a);
	push dword [a]
	push msg
	call printf
	add  esp,8

	push byte [a]
	push msg1
	call printf
	add  esp,8
	ret
