# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: slyu <slyu@student.42seoul.kr>             +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/01/10 14:25:00 by slyu              #+#    #+#              #
#    Updated: 2022/01/10 14:25:04 by slyu             ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

CC = gcc
CFLAGS = -Wall -Wextra -Werror -c
NAME = libft.a
INCS = includes

SRCS =  \
./srcs/ft_atoi.c \
./srcs/ft_bzero.c \
./srcs/ft_calloc.c \
./srcs/ft_isalnum.c \
./srcs/ft_isalpha.c \
./srcs/ft_isascii.c \
./srcs/ft_isdigit.c \
./srcs/ft_isprint.c \
./srcs/ft_itoa.c \
./srcs/ft_memcpy.c \
./srcs/ft_memchr.c \
./srcs/ft_memcmp.c \
./srcs/ft_memmove.c \
./srcs/ft_memset.c \
./srcs/ft_putchar_fd.c \
./srcs/ft_putendl_fd.c \
./srcs/ft_putnbr_fd.c \
./srcs/ft_putstr_fd.c \
./srcs/ft_split.c \
./srcs/ft_strchr.c \
./srcs/ft_strdup.c \
./srcs/ft_strjoin.c \
./srcs/ft_strlcat.c \
./srcs/ft_strlcpy.c \
./srcs/ft_strlen.c \
./srcs/ft_strmapi.c \
./srcs/ft_strncmp.c \
./srcs/ft_strnstr.c \
./srcs/ft_strrchr.c \
./srcs/ft_strtrim.c \
./srcs/ft_striteri.c \
./srcs/ft_substr.c \
./srcs/ft_tolower.c \
./srcs/ft_toupper.c


BONUSES = \
./srcs/ft_lstnew.c \
./srcs/ft_lstadd_front.c \
./srcs/ft_lstsize.c \
./srcs/ft_lstlast.c \
./srcs/ft_lstadd_back.c \
./srcs/ft_lstdelone.c \
./srcs/ft_lstclear.c \
./srcs/ft_lstiter.c \
./srcs/ft_lstmap.c \


OBJS = $(SRCS:.c=.o)
BONUS_OBJS = $(BONUSES:.c=.o)

OBJ_FILES = ${OBJS} ${BONUS_OBJS}

all: $(NAME)

$(NAME): $(OBJ_FILES)
	ar crs $@ $(OBJ_FILES)

bonus:
	make all

%.o: %.c
	$(CC) $(CFLAGS) $< -o ${<:.c=.o} -I${INCS}

clean:
	rm -f $(OBJS) $(BONUS_OBJS)

fclean: clean
	rm -f $(NAME)

re: clean all

.PHONY: all bonus clean fclean re
