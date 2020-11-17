	;;  Using Write System Call
;;; write(int fd, const void *buf, size_t count);
section .data
	msg db "This is demo of write system call",10,0
	len equ $-msg
	newline db 10
section .text
	global main, pq, st
main:
	mov eax, 4 		; system call number
	mov ebx, 1 		; first parameter
	mov ecx,msg 		; second parameter
	mov edx, len		; third parameter
	int 0x80 		; int 80h
	ret

pq:	mov eax, 4 		; ;system call number
	mov ebx, 1 		; first parameter
	mov ecx,newline 		; second parameter
	mov edx, 1	; third parameter
	int 0x80	; ;int 80h
	ret

st:	 mov eax,1
	mov ebx,0
	int 0x80 		;
