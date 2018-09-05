	;; Apparently this is how my editor indents assembly.

	mov rax, 1
	jmp test

start:
	imul rax, rdi
	sub rdi, 1

test:
	cmp rdi, 1
	jg start

	ret
