section .data
	amsg dd "Addition of digit =%d",10,0
	
section .bss
	d resd 1

section .text
	global main
	extern printf

main:	mov eax,1536
	mov ecx,10
	xor ebx,ebx
lp:	xor edx,edx
	div ecx
	add ebx,edx
	xor edx,edx
	div ecx
	add ebx,edx
	xor edx,edx
	cmp eax,0
	jnz lp
	push ebx
	push amsg
	call printf
	add esp,8
	ret
