global ft_strlen

section .text

ft_strlen:
    xor rax, rax

.counter:
    cmp byte [rdi + rax], 0
    je .end
    inc rax
    jmp .counter

.end:
    ret

section .note.GNU-stack noalloc noexec nowrite progbits