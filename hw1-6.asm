	mov rax, 0		; the sum

	cmp rdi, 1
	jl return
	
	mov rcx, 1		; the factorial result
	mov rdx, 1		; the counter

;;; start loop
	jmp test
start:
	imul rcx, rdx
	add rax, rcx
	add rdx, 1

test:
	cmp rdx, rdi
	jle start
;;; end loop

return:	
	ret

;;; I didn't think of the single-loop solution before I saw your comment. My
;;; original nested-loop solution is commented out below.

;; 	;; rax is the sum
;; 	mov rax, 0
	
;; ;;; start loop
;; 	jmp test
;; start:	
;; 	mov rcx, 1
;; 	mov rdx, rdi
	
;; ;; start inner loop
;; 	jmp innertest
;; innerstart:
;; 	imul rcx, rdx
;; 	sub rdx, 1

;; innertest:
;; 	cmp rdx, 1
;; 	jg innerstart
;; ;;; end inner loop

;; 	add rax, rcx
;; 	sub rdi, 1
;; test:
;; 	cmp rdi, 0
;; 	jg start
;; ;;; end loop

;; 	ret
