; Hello World Program

section .data
	msg db "Hello World!", 0
 
section .text
    global main
    
main:
    mov     edx, 13
    mov     ecx, msg
    mov     ebx, 1
    mov     eax, 4
    int     0x80
 
    mov     ebx, 0      ; return 0 status on exit - 'No Errors'
    mov     eax, 1      ; invoke SYS_EXIT (kernel opcode 1)
    int     0x80
