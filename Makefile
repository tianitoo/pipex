NAME = pipex
CC = cc -Wall -Wextra -Werror
FLAGS = 
AR = ar -r
RM = rm -f
HEAD = pipex.h
MK = make
LIBFT = ./libft/libft.a
HEADLIBFT = ./libft/libft.h
PRINTF = ./ft_printf/ft_printf.a
HEADPRINTF = ./ft_printf/ft_printf.h


SRC = 

LIBFTSRC = ./libft/ft_atoi.c\
		./libft/ft_bzero.c\
		./libft/ft_calloc.c\
		./libft/ft_isalnum.c\
		./libft/ft_isalpha.c\
		./libft/ft_isprint.c\
		./libft/ft_isdigit.c\
		./libft/ft_isascii.c\
		./libft/ft_itoa.c\
		./libft/ft_memchr.c\
		./libft/ft_memcpy.c\
		./libft/ft_memset.c\
		./libft/ft_memcmp.c\
		./libft/ft_memmove.c\
		./libft/ft_split.c\
		./libft/ft_strlcat.c\
		./libft/ft_strlen.c\
		./libft/ft_strnstr.c\
		./libft/ft_strrchr.c\
		./libft/ft_strchr.c\
		./libft/ft_strlcpy.c\
		./libft/ft_strlcat.c\
		./libft/ft_strdup.c\
		./libft/ft_strncmp.c\
		./libft/ft_strlcat.c\
		./libft/ft_strtrim.c\
		./libft/ft_substr.c\
		./libft/ft_tolower.c\
		./libft/ft_toupper.c\
		./libft/ft_strmapi.c\
		./libft/ft_striteri.c\
		./libft/ft_strjoin.c\
		./libft/ft_putchar_fd.c\
		./libft/ft_putstr_fd.c\
		./libft/ft_putendl_fd.c\
		./libft/ft_putnbr_fd.c\
		./libft/libft.h

PRINTFSRC = ./ft_printf/ft_printf.c\
		./ft_printf/ft_putchar.c\
		./ft_printf/ft_puthex.c\
		./ft_printf/ft_putnbr.c\
		./ft_printf/ft_putstr.c\
		./ft_printf/ft_putunsignednbr.c\
		./ft_printf/ft_printf.h


OBJ = $(SRC:.c=.o)

all: $(NAME)

$(LIBFT): $(LIBFTSRC)
	$(MK) -C ./libft

$(PRINTF): $(PRINTFSRC)
	$(MK) -C ./ft_printf

$(NAME): $(LIBFT) $(PRINTF) $(OBJ) main.c
	$(CC) main.c $(LIBFT) $(PRINTF) $(OBJ) -o $(NAME)

%.o : %.c $(HEAD)
	$(CC) -Wall -Wextra -Werror -c $< -o $@
clean:
		$(RM) $(OBJ)
		$(RM) main.o
		$(MK) clean -C ./libft
		$(MK) clean -C ./ft_printf

fclean: clean
	$(RM) $(NAME)
	$(RM) $(LIBFT)
	$(RM) $(PRINTF)
	

re: fclean all

.PHONY: all bonus clean fclean re