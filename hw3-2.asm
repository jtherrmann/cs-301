	extern getchar
	extern puts
	
	call getchar
	cmp rax, 'w'
	je hello

	mov rdi, errorstr
	jmp end

hello:
	mov rdi, hellostr
	jmp end

hellostr:
	db "Hello, world!",0

errorstr:
	db "ERROR: World not found.",0

end:
	call puts
	mov rax, 0
	ret
