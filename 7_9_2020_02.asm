section .text
	global main
main:
	mov eax, 10
	mov ebx, 20
	add eax, ebx		; eax = eax+ebx
	sub eax,40
	xor ebx,ebx
	or eax, ebx
	and eax,ebx

