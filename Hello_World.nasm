;  Printing String on the screen 




section .data
	msg db "Hello, Mr. Gaurav Gautam Shakya!! ",10 ; string which will print on the console
	EXIT_STATUS db 0 ; termination value in ? system varible
section .bss
	; will do somthing soon
section .text
	global _start
_start:
	;logic for wrting string on console
	mov rax,1
	mov rdi,1
	mov rsi,msg
	mov rdx ,35
	syscall
		
	;logic for exiting gracefully
	mov rax, 60
	mov rdi, EXIT_STATUS
	syscall
	
