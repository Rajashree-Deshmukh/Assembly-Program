section .data
	msg db " Value is %d and %d",10,0
	fmt db "%d%d",0
section .bss
	first resd 1
	second resd 1
section .text
	global main
	extern printf,scanf
main:
	push first
	push second
	push fmt
	call scanf		; scanf("%d",&first)
	add esp,12

	push dword[first]
	push dword[second]
	push msg
	call printf
	add esp,12

