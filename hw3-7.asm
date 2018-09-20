	extern free
	extern larray_print
	extern malloc

	mov rdi, 24
	call malloc
	mov rdi, rax

	mov QWORD [rdi+0*8], 5
	mov QWORD [rdi+1*8], 7
	mov QWORD [rdi+2*8], 11

	push rdi
	mov rsi, 3

	call larray_print

	pop rdi
	call free

	mov rax, 0
	ret
