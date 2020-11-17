section .data
	msg db "Factorial is %d",10,0
	a dd 9
section .text
	global main
main:
	mov eax, 50000
	mov ebx,10000
	mov ecx, 10

	mul ebx 		; eax = eax * ebx
	mov eax,100
	xor edx,edx
	div dword[a]

	

