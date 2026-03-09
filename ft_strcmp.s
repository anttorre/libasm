global ft_strcmp
section .text

ft_strcmp:
    mov rcx, 0
.loop:
    mov al, [rdi + rcx]
    mov dl, [rsi + rcx]
    cmp al, 0
    je .finalize
    cmp al, dl
    jne .finalize
    inc rcx
    jmp .loop
.finalize:
    movzx rax, al
    movzx rdx, dl
    sub rax, rdx
    ret