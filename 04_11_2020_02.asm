	;;  Database Assignment 
section .data
	pucsdbatch db "u19108, Umesh Raut,m, mca",10
		   db "u18106, Uma Iyer,f,mca",10
		   db "u19210, Rajeshwari  Deshpande,f,msc",10, 0
	stringsize equ $-pucsdbatch
section .text
	global main
	extern puts
main:
	mov ecx, stringsize
	mov edi, pucsdbatch
	mov al, ','
repne	scasb 			; scan a string value at address  stored with edi with a byte available in al
	  
