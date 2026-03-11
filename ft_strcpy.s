global ft_strcpy
section .text

ft_strcpy:
    mov rcx, 0
.loop:
    mov al, [rsi + rcx]
    mov [rdi + rcx], al
    cmp al, 0
    je .done
    inc rcx
    jmp .loop
.done:
    mov rax, rdi
    ret