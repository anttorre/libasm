global ft_strcpy
section .text

ft_strcpy:
    mov rcx, 0              ; Usamos rcx como índice (i = 0).
.loop:
    mov al, [rsi + rcx]     ; Movemos el carácter actual de src al registro de 8 bits 'al'.
    mov [rdi + rcx], al     ; Copiamos ese carácter 'al' a la posición correspondiente en dest.
    cmp al, 0               ; ¿Acabamos de copiar el carácter nulo '\0'?
    je .done                ; Si es 0, terminamos.
    inc rcx                 ; Incrementamos el índice (i++).
    jmp .loop               ; Repetimos.
.done:
    mov rax, rdi            ; La función strcpy debe retornar el puntero al destino (rdi).
    ret