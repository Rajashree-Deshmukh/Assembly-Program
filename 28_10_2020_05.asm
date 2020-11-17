section .data
	msg db "Low Level Programming",0
	len equ $-msg
	a dd 10
section .bss
	newmsg resb len
section .text
	global main
	extern printf
main:
	mov eax,[a]
	mov dl, eax	; reading char from address and storing in dl which is 8 bit register
	mov eax, msg		; source string
        add eax, len
	dec eax
	mov ebx , newmsg 	; destination string
	mov ecx,len 		; length of the string
lp:	xor edx,edx 
	mov dl , byte [eax] 	; reading char from address and storing in dl which is 8 bit register
	mov byte[ebx],dl
	dec eax
	inc ebx
	loop lp

	mov eax,4
	mov ebx,1
	mov ecx, newmsg
	mov edx,len
	int 0x80


	
