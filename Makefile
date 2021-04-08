# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: dpuente- <dpuente-@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/02/06 12:59:17 by dpuente-          #+#    #+#              #
#    Updated: 2021/04/08 10:23:53 by dpuente-         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SRCS		=	srcs/ft_strlen.s srcs/ft_strcpy.s srcs/ft_strdup.s \
				srcs/ft_strcmp.s srcs/ft_write.s srcs/ft_read.s \

BONUS		=	# No bonus jet


SRC_OBJS		=	$(SRCS:.s=.o)
BONUS_OBJS		=	$(BONUS:.s=.o)


NA				=	nasm
NA_FLAGS		=	-f macho64
FLAGS			=	-Wall -Wextra -Werror
NAME			=	libasm.a

%.o:			%.s
				$(NA) $(NA_FLAGS) $<

$(NAME):		$(SRC_OBJS)
				ar rcs $(NAME) $(SRC_OBJS)

all:			$(NAME)

main:
				gcc $(SRC_OBJS) main.c

clean:
				rm -rf $(NAME) $(SRC_OBJS) libasm a.out

fclean:			clean
				rm -rf $(NAME) $(BONUS)

re:				fclean $(NAME)

.PHONY:			all fclean clean re