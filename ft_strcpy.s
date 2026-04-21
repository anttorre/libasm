global ft_strcpy
section .text

ft_strcpy:
    xor rcx, rcx              
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

section .note.GNU-stack noalloc noexec nowrite progbits