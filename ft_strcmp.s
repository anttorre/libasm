global ft_strcmp
section .text

ft_strcmp:
.compare:
    mov al, [rdi]
    mov dl, [rsi]

    cmp al, dl
    jne .diff

    test al, al
    je .end

    inc rdi
    inc rsi
    jmp .compare

.diff:
    movzx eax, al
    movzx edx, dl
    sub eax, edx

    cmp eax, 0
    je .equal
    jl .neg

    mov eax, 1
    ret

.equal:
    mov eax, 0
    ret

.neg:
    mov eax, -1
    ret

.end:
    xor rax, rax
    ret

section .note.GNU-stack noalloc noexec nowrite progbits