section	.text
global	_ft_strdup

extern _malloc, _ft_strlen, _ft_strcpy

_ft_strdup:
			call _ft_strlen
			push rdi
			mov rdi, rax
			call _malloc
			pop r8
			mov rdi,rax
			mov rsi,r8
			call _ft_strcpy
			ret
