#include "stdio.h"
#include "stdlib.h"
#include "string.h"

extern size_t ft_strlen(const char *s);
extern int ft_strcmp(const char *s1, const char *s2);

int main (void)
{
    size_t len_asm = ft_strlen("Hello, World!");
    size_t len_c = strlen("Hello, World!");
    printf("STRLEN TEST:\nLenght ASM: %zu\nLenght C: %zu\n\n", len_asm, len_c);

    int result_asm = ft_strcmp("Antonio", "antonio");
    int result_c = strcmp("Antonio", "antonio");
    printf("STRCMP TEST:\nResult ASM: %d\nResult C: %d\n\n", result_asm, result_c);
    
    return 0;
}