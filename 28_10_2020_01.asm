;;using write system call
;; write (int fd,const void *buf,size_t count)

section .data
	msg db "This is demo of write system call",0
	len equ $-msg
	newline db 10

section .text 
global mn

mn:	
	mov eax,4	;system call number(4=write system call)
	mov ebx,1	;first parameter
	mov ecx,msg	;second parameter
	mov edx,len	;third parameter
	int 0x80	;int 80h(interrupt)
	
	mov eax,4	;system call number(4=write system call)
	mov ebx,1	;first parameter
	mov ecx,newline	;second parameter
	mov edx,1	;third parameter
	int 0x80	;int 80h(interrupt)
	ret
	
