
segment .text
global _ft_read
extern	___error

_ft_read:					; ft_read (rdi, rsi, rdx)
	mov 	rax, 0x2000003	; set call to read
	syscall					; call rax (read)
	jc exit_error			; if doesn't work, read set flags to 1 so jmp exit error
	jmp exit				; jump exit

exit_error:
	push rax				; send rax to the stack
	call ___error			; call extern ___error
	mov rdx, rax			; rdx contain ___error  *int
	pop rax					; takes rax from stack
	mov [rdx], rax			; chnage the size(pero para que y a que tamano)///////////////////////////////////////
	mov rax, -1				; rax = to error (-1)
	ret						; return					; return
	
exit:
	ret