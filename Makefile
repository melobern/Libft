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
CFLAGS = -Wall -Wextra -Werror -MMD -MP -g3
MKDIR = mkdir -p
RMDIR = rm -rf

# ---------------------------------- Sources --------------------------------- #
vpath %c ./
SRCS =	ft_isalpha	ft_isdigit	ft_isalnum	ft_isascii		\
		ft_isprint	ft_strlen	ft_memset	ft_bzero		\
		ft_memcpy	ft_memmove	ft_strlcpy	ft_strlcat		\
		ft_toupper	ft_tolower	ft_strchr	ft_strrchr		\
		ft_strncmp	ft_strnstr	ft_atoi		ft_calloc		\
		ft_strdup	ft_memchr	ft_memcmp	ft_substr		\
		ft_strjoin	ft_strtrim	ft_split	ft_itoa			\
		ft_putchar_fd	ft_putstr_fd	ft_putendl_fd	ft_putnbr_fd	\
		ft_strmapi	ft_striteri

BONUS =	ft_lstnew_bonus	ft_lstadd_front_bonus	ft_lstsize_bonus	\
		ft_lstlast_bonus	ft_lstadd_back_bonus	ft_lstdelone_bonus	\
		ft_lstclear_bonus	ft_lstiter_bonus		ft_lstmap_bonus

# ---------------------------------- Repertories ----------------------------- #
OBJS_DIR = .objs/
OBJS = $(addprefix ${OBJS_DIR}, $(addsuffix .o, ${SRCS}))
BNSOBJS = $(addprefix ${OBJS_DIR}, $(addsuffix .o, ${BONUS}))
DEPS = ${OBJS:.o=.d}
HEADER = libft.h

# ---------------------------------- Compilation ----------------------------- #
all: $(NAME)

$(NAME): $(OBJS)
	ar rc $(NAME) $(OBJS)

${OBJS_DIR}%.o: %.c $(HEADER) | ${OBJS_DIR}
	$(CC) $(CFLAGS) -c -o $@ $<

-include ${DEPS}
# ---------------------------------- Create Repertory ---------------------- #
${OBJS_DIR}:
			${MKDIR} ${OBJS_DIR}
## ---------------------------------- Clean ----------------------------------- #
clean:
	${RMDIR} ${OBJS_DIR}
fclean: clean
	rm -f $(NAME)
re:    fclean
	$(MAKE) all 

bonus: 
	$(MAKE) SRCS="$(OBJS) $(BNSOBJS)"

.PHONY: all clean fclean re bonus
