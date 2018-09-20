	extern larray_print	; NetRun builtin function

	mov rdi, array
	mov rsi, 2
	call larray_print

	mov rdi, array
	mov rsi, 2
	mov QWORD [rdi], 4
	call larray_print
	
	mov rdi, array
	mov rsi, 2
	mov QWORD [rdi+8], 2
	call larray_print

	mov rax, 0
	ret

	section .data
array:
	dq 5
	dq 7
