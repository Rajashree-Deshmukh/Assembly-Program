section .data
	Mynumber dd 1000,200,3560,450,11120,2000,12210,324,43,678,-1
	msg db "Minimum from given list  is %d",10,0
section .bss
       Min resd 1	
section .text
	global main
	extern printf
main:
	xor ecx, ecx
	xor esi,esi
	mov ebx, Mynumber
	mov esi,dword[ebx]
	mov dword[Min],esi
pqr:	mov eax, 4
	mov ebx, Mynumber
	mul ecx
	add ebx,eax 		; ebx = ebx+ eax*ecx
	cmp dword[ebx],-1
	jz lp1
	mov esi,dword[ebx]
	cmp esi, dword[Min]
	ja lp
	mov dword[Min], esi
lp :  inc ecx
	jmp pqr
lp1:	 push dword[Min]
	push msg
	call printf
	add esp,8
	

