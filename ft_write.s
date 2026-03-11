extern ___error             ; Importamos la función para acceder a errno.
global ft_write

ft_write:
    mov rax, 1              ; Código de la syscall 'write' en x64.
    syscall                 ; Llamada al sistema. rdi, rsi y rdx ya vienen listos de C.
    cmp rax, 0              ; Si rax es negativo, hubo un error.
    jl .error               ; Jump if Less (menor que 0) a la sección de error.
    ret                     ; Si todo bien, retorna rax (bytes escritos).
.error:
    neg rax                 ; El error viene como -9, neg lo vuelve 9 (positivo).
    mov rdi, rax            ; Guardamos el código de error en rdi.
    call ___error           ; Llama a la función que nos da la dirección de memoria de errno.
    mov [rax], rdi          ; Guardamos el código de error (rdi) en esa dirección ([rax]).
    mov rax, -1             ; ft_write debe retornar -1 en caso de fallo.
    ret