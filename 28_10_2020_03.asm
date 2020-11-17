	;;  Using Write System Call
;;; write(int fd, const void *buf, size_t count);
section .data
	msg db "This is demo of write system call",0
	len equ $-msg
	newline db 10
section .text
	global main
	extern printf

main:	mov ecx,len
lp:	
	mov edx, ecx
	mov eax , 4
	mov ebx,1
	mov ecx, msg
	int 0x80
	mov ecx,edx
	pusha
	push newline
	call printf
	add esp ,4
	popa
	loop lp


				;;  ; internally uses ecx decrements ecx, compares with 0 if not equal then jumps to the label added with loop
;;;  dec ecx
;;;  cmp ecx, 0
	;; jnz lp
