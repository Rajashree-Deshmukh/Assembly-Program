section .data
	pmsg dd "Number %d is Prime ",10,0
	nmsg dd "Number %d is NOT Prime",0

section .bss
	d resd 1

section .text
	global main
	extern printf

main:	mov eax,37
	mov ebx,2
lp:	mov [d],eax
	xor edx,edx
	div ebx
	mov eax,[d]
	cmp edx,0
	jz notp
	inc ebx
	cmp ebx,37
	jnz lp
	push ebx
	push pmsg
	call printf
	add esp,8
	ret

notp:	push ebx
	push nmsg
	call printf
	add esp,8
	ret
	
