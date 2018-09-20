	extern puts

	mov rdi, str
	call puts

	mov rax, 0
	ret
	
str:
	db "Hello, world!",0
