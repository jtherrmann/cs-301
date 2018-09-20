	extern larray_print	; NetRun builtin function

	mov rdi, array
	mov rsi, 2
	call larray_print

	mov rax, 0
	ret

array:
	dq 5
	dq 7
