section .data
	msg db " Factorial is %d",10,0
section .text
	global main
	extern printf
main:
	mov ecx, 4

	mov eax, 1
lp:    xor edx, edx
	mul ecx
	dec ecx
	cmp ecx, 0
	jnz  lp
	inc ecx
	push eax
	push msg
	call printf
	add esp,8



