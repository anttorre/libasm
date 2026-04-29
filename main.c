#include "stdio.h"
#include "stdlib.h"
#include "string.h"
#include "unistd.h"

extern size_t ft_strlen(const char *s);
extern char *strcpy(char *restrict dst, const char *restrict src);
extern int ft_strcmp(const char *s1, const char *s2);
extern ssize_t ft_write(int fd, const char* s, int c);


int main (void)
{
    size_t len_asm = ft_strlen("Hello, World!");
    size_t len_c = strlen("Hello, World!");
    printf("\033[31;1mSTRLEN TEST:\033[0m\nLenght ASM: %zu\nLenght C: %zu\n\n", len_asm, len_c);

    char *src_asm = "Hola";
    char *dst_asm;
    char *src_c = "Hola";
    char *dst_c;
    

    int result_asm = ft_strcmp("Antonio", "antonio");
    int result_c = strcmp("Antonio", "antonio");
    printf("\033[31;1mSTRCMP TEST:\033[0m\nResult ASM: %d\nResult C: %d\n\n", result_asm, result_c);

    printf("\033[31;1mWRITE TEST:\033[0m\n");
    ssize_t r_asm = ft_write(1, "Hola\n", 5);
    ssize_t r_c = write(1, "Hola\n", 5);
    printf("Result ASM: %ld\nResult C: %ld\n\n", r_asm, r_c);
    
    return 0;
}