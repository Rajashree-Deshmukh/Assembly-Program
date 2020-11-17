	;;  Strcmp without using String Instructions
section .data
	FirstString db 'This is my source String to Copy',10,0
	lenFirst equ $-FirstString
	SecondString db 'This Is my source String to Copy',10,0
	lenSecond equ $-SecondString
	Equal db " Strings are equal",10,0
	NotEqual db "Strings are not equal",10,0
section .text
	global main
	extern puts
main:
	mov ebx, FirstString
	mov edx, SecondString
	mov ecx, lenFirst
lp:	mov al, byte[ebx]
	cmp al , byte[edx]
	jnz notequal
	inc ebx
	inc edx
	dec ecx
	cmp ecx, 0
	jz equal
	jmp lp	
notequal:
	push NotEqual
	call puts
	add esp,4
	mov eax,1
	mov ebx,0
	int 0x80
equal:
	push Equal
	call puts
	add esp,4
	
