	push rdi
	add rdi, 10
	extern print_long
	call print_long
	pop rax
	ret
