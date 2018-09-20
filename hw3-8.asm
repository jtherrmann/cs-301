	extern malloc
	extern free
	extern read_input
	extern larray_print

	;; Read an integer n.
	call read_input

	;; If n < 0, immediately return n.
	cmp rax, 0
	jl return

	push r14

	;; Save n to a preserved register.
	mov r14, rax

	;; Get an array of 0!...n!.
	mov rdi, r14
	call nfacts

	;; Print the array.
	mov rdi, rax
	mov rsi, r14
	add rsi, 1
	call larray_print

	;; Move n to rax.
	mov rax, r14

	pop r14
	
return:	
	;; Return n.
	ret
	

nfacts:
	;; Return an array of 0!...n!.
	;; Pre: rdi contains an integer n.
	;; Post: rax contains the array pointer.

	push rbx
	push r12
	push r13
	
	;; Save n to a preserved register.
	mov rbx, rdi

	;; Allocate space for n+1 QWORDs.
	add rdi, 1
	imul rdi, 8
	call malloc

	;; Save the array pointer to a preserved register.
	mov r12, rax

	mov r13, 0		; counter
	jmp nfacts_test
nfacts_start:
	mov rdi, r13
	call fact
	mov QWORD [r12+r13*8], rax
	add r13, 1
nfacts_test:
	;; Loop while counter <= n.
	cmp r13, rbx
	jle nfacts_start

	;; Move the array pointer to rax.
	mov rax, r12

	pop r13
	pop r12
	pop rbx
	
	ret
	

fact:
	;; Return n!.
	;; Pre: rdi contains an integer n.
	;; Post: rax contains n!.

	mov rax, 1
	jmp fact_test
fact_start:	
	imul rax, rdi
	sub rdi, 1
fact_test:
	cmp rdi, 0
	jg fact_start

	ret
