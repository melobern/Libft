# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mbernard <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/11/07 15:56:49 by mbernard          #+#    #+#              #
#    Updated: 2023/11/20 15:32:07 by mbernard         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a
CC = gcc
CFLAGS = -Wall -Wextra -Werror
SRCS =	ft_isalpha.c	ft_isdigit.c	ft_isalnum.c	ft_isascii.c	\
		ft_isprint.c	ft_strlen.c		ft_memset.c		ft_bzero.c	\
		ft_memcpy.c		ft_memmove.c	ft_strlcpy.c	ft_strlcat.c	\
		ft_toupper.c	ft_tolower.c	ft_strchr.c		ft_strrchr.c	\
		ft_strncmp.c	ft_strnstr.c	ft_atoi.c		ft_calloc.c	\
		ft_strdup.c		ft_memchr.c		ft_memcmp.c		ft_substr.c	\
		ft_strjoin.c	ft_strtrim.c	ft_split.c		ft_itoa.c	\
		ft_putchar_fd.c	ft_putstr_fd.c	ft_putendl_fd.c	ft_putnbr_fd.c	\
		ft_strmapi.c	ft_striteri.c

BONUS =	ft_lstnew_bonus.c	ft_lstadd_front_bonus.c	ft_lstsize_bonus.c	\
		ft_lstlast_bonus.c	ft_lstadd_back_bonus.c	ft_lstdelone_bonus.c	\
		ft_lstclear_bonus.c	ft_lstiter_bonus.c		ft_lstmap_bonus.c
BNSOBJS = $(BONUS:.c=.o)
OBJS = $(SRCS:.c=.o)
HEADER = libft.h

all: $(NAME)

$(NAME): $(OBJS)
	ar rc $(NAME) $(OBJS)
%.o: %.c $(HEADER)
	$(CC) $(CFLAGS) -c -o $@ $<
clean:
	rm -f $(OBJS) $(BNSOBJS)
fclean: clean
	rm -f $(NAME)
re:    fclean
	$(MAKE) all 

bonus: 
	$(MAKE) SRCS="$(OBJS) $(BNSOBJS)"

.PHONY: all clean fclean re bonus
