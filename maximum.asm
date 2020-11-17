section .data
	Mynumber dd 1000,200,3560,450,11120,2000,12210,324,123543,678,-1
	msg db "Maximum from given list  is %d",10,0
section .bss
       Max resd 1	
section .text
	global main
	extern printf
main:
	xor ecx, ecx
	xor esi,esi
	mov dword[Max],0
pqr:	mov eax, 4
	mov ebx, Mynumber
	mul ecx
	add ebx,eax 		; ebx = ebx+ eax*ecx
	cmp dword[ebx],-1
	jz lp1
	mov esi,dword[ebx]
	cmp esi, dword[Max]
	jb lp
	mov dword[Max], esi
lp :  inc ecx
	jmp pqr
lp1:	 push dword[Max]
	push msg
	call printf
	add esp,8
	

