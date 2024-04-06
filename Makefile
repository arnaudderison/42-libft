# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: arnaud <arnaud@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/12/16 12:25:14 by arnaud            #+#    #+#              #
#    Updated: 2023/12/21 14:18:53 by arnaud           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a
CC = gcc
CFLAGS = -Wall -Wextra -Werror

# Colors
RED=\033[0;31m
GREEN=\033[0;32m
YELLOW=\033[1;33m
CYAN=\033[0;36m
NC=\033[0m

# Libft sources
LIBFT_SRCS = ft_isdigit.c \
		ft_memset.c \
		ft_strjoin.c \
		ft_strtrim.c \
		ft_isprint.c\
		ft_putchar_fd.c \
		ft_strlcat.c \
		ft_substr.c \
		ft_atoi.c \
		ft_itoa.c \
		ft_putendl_fd.c \
		ft_strlcpy.c \
		ft_tolower.c \
		ft_bzero.c \
		ft_putnbr_fd.c \
		ft_strlen.c \
		ft_toupper.c \
		ft_calloc.c \
		ft_memchr.c \
		ft_putstr_fd.c \
		ft_strmapi.c \
		ft_isalnum.c \
		ft_memcmp.c \
		ft_split.c \
		ft_strncmp.c \
		ft_isalpha.c \
		ft_memcpy.c \
		ft_strchr.c \
		ft_strnstr.c \
		ft_isascii.c \
		ft_memmove.c \
		ft_strdup.c \
		ft_strrchr.c \
		ft_striteri.c
LIBFT_OBJS = $(LIBFT_SRCS:.c=.o)

# Libft sources
LIBFT_BONUS_SRCS = $(wildcard *bonus.c)
LIBFT_BONUS_OBJS = $(LIBFT_BONUS_SRCS:.c=.o)

# Compilation rules
all: $(NAME)

$(NAME): $(LIBFT_OBJS)
	@ar rcs $(NAME) $^
	@echo "${YELLOW}Library $(NAME) created.${NC}"

bonus: $(LIBFT_OBJS) $(LIBFT_BONUS_OBJS)
	@ar rcs $(NAME) $^
	@echo "${YELLOW}Library $(NAME) created with bonus.${NC}"

%.o: %.c
	@echo "${CYAN}Compiling $<...${NC}"
	@$(CC) $(CFLAGS) -c $< -o $@

clean:
	@rm -f $(LIBFT_OBJS) $(LIBFT_BONUS_OBJS)
	@echo "${GREEN}Object files cleaned.${NC}"

fclean: clean
	@rm -f $(NAME)
	@echo "${RED}All files removed.${NC}"

re: fclean all

.PHONY: all clean fclean re
