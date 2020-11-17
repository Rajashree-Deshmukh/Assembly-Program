;10=newline and 0=end of line
;simple operations like addn,subn,mult,div

section .data
	amsg db "Addition is %d",10,0
	smsg db "Substraction is %d",10,0			
	mmsg db "Multiplication is %d",10,0
	dmsg db "Quotient is %d and Remainder is %d",10,0  

section .text
	global main
	extern printf

main:	mov eax,15
	mov ebx,3
	add eax,ebx
	push eax	;push calculted value in %d of print statement
	push amsg	;push msg of print statement
	call printf	;prints msg
	add esp,8

	mov eax,15
	mov ebx,3
	sub eax,ebx
	push eax
	push smsg
	call printf
	add esp,8
	
;mult and div requires only one operand as it operates on eax(i.e. final calculated value goes to eax)
								;eax=eax*ebx
								;eax=eax/ebx
	mov eax,15
	mov ebx,3
	mul ebx
	push eax
	push mmsg
	call printf
	add esp,8

	xor edx,edx	;to store 0/starts from 0/set to 0
	mov eax,15
	mov ebx,3
	div ebx
	push edx	;stores remainder
	push eax	;stores qoutient
	push dmsg
	call printf
	add esp,12	;4*number of push



