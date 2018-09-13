	push rbx
	mov rbx, 1
	extern print_long
	
;;; start loop
	jmp test
start:	
	mov rdi, rbx
	call print_long
	add rbx, 1
test:	
	cmp rbx, 10
	jle start
;;; end loop

	pop rbx
	ret
