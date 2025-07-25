NAME	=	libft.a
CC = cc
CFLAGS	=	-Wextra -Werror -Wall
SRC = \
	  ft_strlen.c ft_atoi.c    ft_isalpha.c ft_memchr.c  ft_memset.c  ft_strlcpy.c\
	  ft_strrchr.c ft_bzero.c ft_isascii.c ft_memcmp.c  ft_strdup.c ft_tolower.c\
	  ft_calloc.c  ft_isdigit.c ft_memcpy.c  ft_strchr.c  ft_strncmp.c ft_toupper.c\
	  ft_isalnum.c ft_isprint.c ft_memmove.c ft_strlcat.c ft_strnstr.c ft_substr.c\
	  ft_strjoin.c ft_strtrim.c ft_itoa.c  ft_split.c ft_strmapi.c  ft_striteri.c\
	  ft_putchar_fd.c ft_putstr_fd.c ft_putendl_fd.c ft_putnbr_fd.c
BSRC = \
		ft_lstadd_back.c ft_lstadd_front.c ft_lstclear.c ft_lstdelone.c ft_lstiter.c\
		ft_lstlast.c ft_lstmap.c ft_lstnew.c  ft_lstsize.c
OBJ = $(SRC:.c=.o)
BOBJ = $(BSRC:.c=.o)
HEADER = libft.h

all: $(NAME)

$(NAME): $(OBJ)
	$(AR) -rcs $@ $?

bonus: $(OBJ) $(BOBJ)
	$(AR) -rcs $(NAME) $?

%.o: %.c
	$(CC) $(CFLAGS) -c $?

clean:
	rm -f $(OBJ) $(BOBJ)

fclean: clean
	rm -f $(NAME)

re: fclean all

.PHONY: all bonus clean fclean re
