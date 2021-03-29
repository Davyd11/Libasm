section .text
global _ft_strlen

_ft_strlen:
			mov rax, 0
			cmp byte[rdi + rax], 0
			jne loop
			ret

loop:
			inc rax
			cmp byte[rdi + rax], 0
			jne loop
			ret
