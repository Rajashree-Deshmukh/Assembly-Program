section .data
	Mynumber dd 10,20,30,40,-1
	;; sum = sum + a[i]
	msg db "Total number of values  are %d",10,0
section .text
	global main
	extern printf
main:
	xor ecx, ecx
	xor esi,esi
lp:	mov eax , 4

	;;  Base + index * size 100 + 0 * 4 = 100    100 + 1*4 = 104
	;;   100+2* 4 = 108   100+3*4 = 112		; 100+4*4 = 116
	;;  mov ebx , Mynumber	 ;address
;;; 	mov ebx, dword[Mynumber] value ;
	mov ebx, Mynumber
	mul ecx
	add ebx,eax
	cmp dword[ebx], -1
	jz  endlp
	inc esi
	inc ecx
	jmp lp

endlp:

	 push esi
	 push msg
	 call printf
	 add esp,8


	ret

	

