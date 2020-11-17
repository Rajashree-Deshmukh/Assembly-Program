section .data
	emsg dd "Number %d is Even",10,0
	omsg dd "Number %d is Odd",10,0

section .bss
	d resd 1

section .text
	global main
	extern printf

main:	mov eax,10
	mov ebx,2
	mov [d],eax
lp:	xor edx,edx
	div ebx
	mov eax,[d]
	cmp edx,0
	jz even
	cmp edx,0
	jnz odd

even:	push eax
	push emsg
	call printf
	add esp,8
	ret
	

odd:	push eax
	push omsg
	call printf
	add esp,8
	ret
