#include "stdio.h"
#include "stdlib.h"
#include "string.h"
#include "unistd.h"

extern size_t ft_strlen(const char *s);
extern int ft_strcmp(const char *s1, const char *s2);
extern int ft_write(int fd, const char* s, int c);

int main (void)
{
    size_t len_asm = ft_strlen("Hello, World!");
    size_t len_c = strlen("Hello, World!");
    printf("STRLEN TEST:\nLenght ASM: %zu\nLenght C: %zu\n\n", len_asm, len_c);

    int result_asm = ft_strcmp("Antonio", "antonio");
    int result_c = strcmp("Antonio", "antonio");
    printf("STRCMP TEST:\nResult ASM: %d\nResult C: %d\n\n", result_asm, result_c);

    ft_write(1, "Hola\n", 5);
    write(1, "Hola\n", 5);
    return 0;
}