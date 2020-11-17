section .data
	a db 10
	b dw 20
	c dd 30
	d dd 40
section .text
	global main
main:  xor eax, eax
	mov al, [a]
	xor ebx,ebx
	mov bx, [b]
	mov ecx, [c]
	mov edx, [d]
	

