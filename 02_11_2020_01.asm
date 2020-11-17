	;;  Strcpy using String Instructions
section .data
	FirstString db 'This is my source String to Copy',10,0
	lenFirst equ $-FirstString
section .bss
	Second resb lenFirst
section .text
	global main
main:
	mov esi, FirstString
	mov edi, Second
	mov ecx, lenFirst
	rep movsb
	mov eax, 4
	mov ebx,1
	mov ecx, Second
	mov edx, lenFirst
	int 0x80
