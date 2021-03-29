section	.text
global _ft_strcmp

_ft_strcmp:
			mov rax, 0 						; declaramos el registro de retorno a 0
			mov r8, 0
			jmp comp

comp:
			mov al, [rdi + r8]					; asignemos un byte de rdi(primer argumento) a bl(resgitro de tamano inferior) para compararlo mas adelante 
			mov bl, [rsi + r8]					; asignemos un byte de rsi a bl para compararlo mas adelante
			cmp al, 0						; compara al y comprueba que no sea ultimo caracter
			je return						; si es el ultimo caracter pues retorna 
			cmp bl, 0						; compara lo mismo que que a al para bl
			je return
			cmp al, bl
			jne return
			inc r8
			jmp comp
			
return:
			movzx rax, al					; mueve el objeto de un sitio pequeno a uno mas grande 
			movzx rbx, bl
			sub rax, rbx
			ret
