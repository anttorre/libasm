global ft_strcmp
section .text

ft_strcmp:
    xor rcx, rcx
.loop:
    mov al, [rdi + rcx]
    mov dl, [rsi + rcx]
    cmp al, 0
    je .end
    cmp al, dl
    jne .end
    inc rcx
    jmp .loop
.end:
    movzx rax, al
    movzx rdx, dl
    sub rax, rdx
    jz .done
    js .negative 
    mov rax, 1
    ret
.negative:
    mov rax, -1
.done:
    ret

section .note.GNU-stack noalloc noexec nowrite progbits