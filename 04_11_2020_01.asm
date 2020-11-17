	;;  Count of Occurence of a character in given string 
section .data
	array db " This is a test string added to check occurece of a character",0
	msg db "%c",0
	found db "Found %d times",10,0
section .bss
	search resb 1
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
	mov eax,1 		; size of a character
	mul ecx			; index * size
	xor edx,edx
	mov dl, byte [esi+eax]	; dl = byte[base+index*size]
	cmp byte [search],dl
	jnz temp
	inc dword[count]
temp:	cmp dl,0
	jz tmp2
	inc ecx
	jmp temp2
tmp2:	
	push dword[count]
	push found
	call printf
	add esp,8
