section	.text
global _ft_strcmp

_ft_strcmp:
			mov rax, 0
			mov r8, 0
			jmp comp

comp:
			mov al, [rdi + r8]
			mov bl, [rsi + r8]
			cmp al, 0
			je return
			cmp bl, 0
			je return
			cmp al, bl
			jne return
			inc r8
			jmp comp
			
return:
			movzx rax, al
			movzx rbx, bl
			sub rax, rbx
			ret
