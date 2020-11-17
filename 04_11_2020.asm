	;;  count the occurence of a number in given array
section .data			
	array dd 10,100,12,235,345,67,12, -1
	msg db "%d",0
	found db "Found %d times",10,0
section .bss
	search resd 1
	count resd 1
section .text
	global main
	extern scanf
	extern printf
main:
	push search
	push msg
	call scanf
	add esp,8

        mov esi, array
	xor ecx,ecx
	mov dword[count],ecx
temp2:
	mov eax,4		; size of integer
	mul ecx			; index * size
	mov edi, dword[esi+eax]	; edi = [base+index*size]
	cmp dword[search],edi
	jnz temp
	inc dword[count]
temp:	cmp edi,-1
	jz tmp2
	inc ecx
	jmp temp2
tmp2:	
	push dword[count]
	push found
	call printf
	add esp,8
