# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: dpuente- <dpuente-@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/02/06 12:59:17 by dpuente-          #+#    #+#              #
#    Updated: 2021/02/06 13:33:35 by dpuente-         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SRCS		= 	main.c \
				src/ft_read.s src/ft_strcmp.s src/ft_strcpy.s \
				src/ft_strdup.s src/ft_strlen.s src/ft_write.s \

BONUS		=	bonus/ft_atoi_base.s bonus/ft_list_push_front.s \
				bonus/ft_list_remove_if.s bonus/ft_list_size.s \
				bonus/ft_list_sort.s \

OBJS		= $(SRCS:.c=.o)

all:

clean:

fclean:

re: