	;;  Strrev  using String Instructions
section .data
	FirstString db 'This'
	lenFirst equ $-FirstString
	section .bss
	RevString resb lenFirst
section .text
	global main
	extern puts
main:
	mov esi, FirstString
	mov edi, RevString
	mov ecx, lenFirst
	add esi,ecx 
	dec esi
lp:	std			; Set Direction Flag
	lodsb 			; load the string byte from esi  to al
	cld			; clear direction flag
	stosb 			; store the contents of al  to edi
	loop lp
	push RevString
	call puts
	add esp,4
