	push r12		; max value to print
	push rbx		; counter

	extern getchar
	call getchar

	;; Convert getchar's return value to a number in the range 0-9.
	mov r12, rax
	sub r12, 0x30

	;; Initialize the counter.
	mov rbx, 1

	extern print_long
	
;;; start loop
	jmp test
start:	
	mov rdi, rbx
	call print_long
	add rbx, 1
test:	
	cmp rbx, r12
	jle start
;;; end loop

	pop rbx
	pop r12

	mov rax, 0
	ret
