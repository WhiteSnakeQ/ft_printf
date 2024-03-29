# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: kreys <kirrill20030@gmail.com>             +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/10/31 01:07:43 by kreys             #+#    #+#              #
#    Updated: 2023/11/04 20:20:53 by kreys            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SRC			= aditional_func.c ft_printf.c print_type.c print_hex_address.c put_decimal.c \
			put_hex_digit.c put_str.c put_u_decimall.c put_char.c builder.c

OBJ			= ${SRC:.c=.o}

NAME_F		= libftprintf.a

HEADER		= project_f.h

AR			= ar rc

RM			= rm -f

LIBR		= ranlib

GCC			= cc

CFLAGS		= -Wall -Wextra -Werror

all:		${NAME_F}

.c.o:
			${GCC} ${CFLAGS} -c -I ${HEADER} $< -o ${<:.c=.o}

${NAME_F}:	${OBJ}
			${AR} ${NAME_F} ${OBJ}
			${LIBR} ${NAME_F}

bonus:		${OBJ} 
			${AR} ${NAME_F} ${OBJ} 
			${LIBR} ${NAME_F}

clean:
			rm -f ${OBJ}

fclean:		clean
			rm -f ${NAME_F}

re:			fclean all

.PHONY:		all clean fclean re
