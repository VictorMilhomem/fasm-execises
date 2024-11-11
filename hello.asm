format ELF64 executable 3

segment readable executable

entry main

main:
    lea rdi, [msg]  ;; load the message into rdi register
    mov rax, 14     ;; put the length of the msg into rax register
    mov	rdx, rax 	;; mov rax to rdx
	mov rsi, rdi	;; mov rdi to rsi
	mov rdi, 1		;; stdout
	mov rax, 1		;; sys_write
	syscall

	xor rdi, rdi	;; exit code 0
	mov rax, 60		;; sys_exit
	syscall



segment readable writable

msg db 'Hello World!', 10, 0 ;; string hello world, 10 (ascii \n) 0 (null terminator)