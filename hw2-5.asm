	push rbx
	push r12

	mov rbx, 1
	mov r12, rdi

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

	pop r12
	pop rbx

	ret
