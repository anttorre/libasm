extern malloc
extern ft_strlen
extern ft_strcpy
global ft_strdup

ft_strdup:
    push rdi                ; Guardamos rdi (s1) en el stack porque 'call' puede ensuciar registros.
    call ft_strlen          ; rax = ft_strlen(rdi).
    inc rax                 ; Sumamos 1 para el '\0'.
    mov rdi, rax            ; Ponemos el tamaño en rdi para pasárselo a malloc.
    call malloc             ; rax = malloc(rdi). Ahora rax apunta a la nueva memoria.
    cmp rax, 0              ; ¿Malloc devolvió NULL?
    je .err                 ; Si falló, saltamos.
    
    mov rdi, rax            ; El destino de strcpy será la nueva memoria (rax).
    pop rsi                 ; Recuperamos la s1 original del stack y la ponemos en rsi (source).
    call ft_strcpy          ; ft_strcpy(dest, src).
    ret                     ; Retorna rax (el puntero de la nueva cadena).
.err:
    pop rdi                 ; Limpiamos el stack si malloc falló para no corromperlo.
    ret                     ; Retorna rax (que ya es NULL).