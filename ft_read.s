extern ___error
global ft_read

ft_read:
    mov rax, 0              ; Código de la syscall 'read'.
    syscall
    cmp rax, 0
    jl .error
    ret
.error:
    neg rax
    mov rdi, rax
    call ___error
    mov [rax], rdi
    mov rax, -1
    ret