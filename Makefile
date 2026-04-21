BOLD	:= \033[1m
RED		:= \033[31;1m
GREEN	:= \033[32;1m
CYAN	:= \033[36;1m
MAGENTA	:= \033[35;1m
RESET	:= \033[0m

CC		= gcc
NASM	= nasm

CFLAGS	= -Wall -Werror -Wextra -fPIE
ASMFLAGS = -f elf64 -F dwarf

NAME	= main

SRCS_C  = main.c
SRCS_S	= ft_strlen.s ft_strcmp.s ft_strcpy.s ft_write.s

OBJS_S	= $(SRCS_S:.s=.o)

OBJS	= $(OBJS_S)

$(NAME): $(OBJS) $(SRCS_C)
	@echo "$(MAGENTA)$(BOLD)Linking...$(RESET)"
	@$(CC) $(CFLAGS) $(OBJS) $(SRCS_C) -o $(NAME)
	@echo "$(CYAN)$(BOLD)Done$(RESET)"

%.o: %.c
	@$(CC) $(CFLAGS) -c $< -o $@

%.o: %.s
	@$(NASM) $(ASMFLAGS) $< -o $@

all: $(NAME)

clean:
	@echo "$(RED)$(BOLD)Cleaning objects...$(RESET)"
	@rm -f $(OBJS)
	@echo "$(GREEN)Done$(RESET)"

fclean: clean
	@echo "$(RED)$(BOLD)Cleaning binary...$(RESET)"
	@rm -f $(NAME)
	@echo "$(GREEN)Done$(RESET)"

re: fclean all

.PHONY: all clean fclean re