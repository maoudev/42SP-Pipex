# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: vcavalca <vcavalca@student.42sp.org.br>    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/10/04 10:37:37 by vcavalca          #+#    #+#              #
#    Updated: 2022/02/13 21:36:29 by vcavalca         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = pipex

CC = clang
CFLAGS = -Wall -Werror -Wextra

INCLUDE_DIR = incl
SOURCE_DIR = src
OBJ_DIR = obj

SRC_FILES = ft_pipex.c ft_utils.c ft_main.c

SRCS = $(addprefix $(SOURCE_DIR)/, $(SRC_FILES))
OBJ = $(SRCS:$(SOURCE_DIR)/%.c=$(OBJ_DIR)/%.o)

all: $(NAME)

$(NAME): $(OBJ_DIR) $(OBJ)
		@make -C $(INCLUDE_DIR)/libft
		$(CC) $(OBJ) -o $(NAME) $(INCLUDE_DIR)/libft/libft.a
		@echo "Successfully compiled $(NAME)"

$(OBJ_DIR)/%.o: $(SOURCE_DIR)/%.c
	$(CC) $(CFLAGS) -c -I$(INCLUDE_DIR) -o $@ $<

$(OBJ_DIR):
	mkdir $(OBJ_DIR)

%.o: %.c
	@$(CC) $(CFLAGS) -o $@ $<

clean: 
		@rm -rf $(OBJ_DIR)
		@make clean -C $(INCLUDE_DIR)/libft
		@echo "Removed objects files"

fclean: clean
		@rm -rf $(NAME)
		@make fclean -C $(INCLUDE_DIR)/libft
		@echo "Removed $(NAME) file"

re: fclean all
