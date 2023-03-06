# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: juan-aga <juan_aga@student.42malaga.c      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/09/20 17:38:15 by juan-aga          #+#    #+#              #
#    Updated: 2023/03/06 12:58:28 by juan-aga         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

HEADERS			=-I ./include -I ${MEM_DIR}/include

NAME			= libft.a

CC				= gcc ${CFLAGS}

CFLAGS			= -Wall -Wextra -Werror

MEM_DIR			= ../memory-leaks

LIBS			= ${MEM_DIR}/memory_leaks.a

ifdef DEBUG
		CFLAGS += -g
endif

REMOVE			= rm -f

#		COLORS		#
CYELLOW			=\033[1;33m
CGREEN			=\033[0;32m
CRED			=\033[0;91m
CRESET			=\033[0m

DIR_LFT			= ./src/src_libft

DIR_PF			= ./src/src_printf

DIR_GNL			= ./src/src_get_next_line

DIR_FRACTOL		= ./src/src_fractol

DIR_PUSHSWAP	= ./src/src_push_swap

SRC_LFT			= ft_isalpha.c			\
				 ft_isdigit.c			\
				 ft_isalnum.c			\
				 ft_isascii.c			\
				 ft_isprint.c			\
				 ft_strlen.c			\
				 ft_memset.c			\
				 ft_bzero.c				\
				 ft_memcpy.c			\
				 ft_memmove.c			\
				 ft_strlcpy.c			\
				 ft_strlcat.c			\
				 ft_toupper.c			\
				 ft_tolower.c			\
				 ft_strchr.c			\
				 ft_strrchr.c			\
				 ft_strncmp.c			\
				 ft_memchr.c			\
				 ft_memcmp.c			\
				 ft_strnstr.c			\
				 ft_atoi.c				\
				 ft_calloc.c			\
				 ft_strdup.c			\
				 ft_substr.c			\
				 ft_strjoin.c			\
				 ft_strtrim.c			\
				 ft_split.c				\
				 ft_itoa.c				\
				 ft_strmapi.c			\
				 ft_striteri.c			\
				 ft_putchar_fd.c		\
				 ft_putstr_fd.c			\
				 ft_putendl_fd.c		\
				 ft_putnbr_fd.c			\
				 ft_lstnew.c			\
				 ft_lstadd_front.c		\
				 ft_lstsize.c			\
				 ft_lstlast.c			\
				 ft_lstadd_back.c		\
				 ft_lstdelone.c			\
 				 ft_lstclear.c			\
				 ft_lstiter.c			\
				 ft_lstmap.c

SRC_PF			= ft_printf.c			\
				 ft_printf_utils.c

SRC_GNL			= get_next_line.c		\
				 get_next_line_utils.c

SRC_FRACTOL		= ft_chrjoin.c			\
				  ft_ftoa.c				\
				  ft_atof.c				\
				  ft_strjoin_va.c		\
				  ft_maths.c

SRC_PUSHSWAP	= ft_issign.c			\
				  ft_atoll.c			\
				  ft_abs.c

SRC				= $(addprefix ${DIR_LFT}/,${SRC_LFT})		\
				$(addprefix ${DIR_PF}/,${SRC_PF})			\
				$(addprefix ${DIR_GNL}/,${SRC_GNL})			\
				$(addprefix ${DIR_FRACTOL}/,${SRC_FRACTOL})	\
				$(addprefix ${DIR_PUSHSWAP}/,${SRC_PUSHSWAP})

OBJ				= ${SRC:.c=.o}

%.o: %.c
			@${CC} ${HEADERS} -o $@ -c $< && printf "${CGREEN}Compiling: ${CYELLOW}$(notdir $<\n)"

all:		${NAME}

${NAME}:	${OBJ}
			@echo "\n${CGREEN}${NAME} objects files were created\n"
			@ar -rcs ${NAME} ${OBJ} ${LIBS}
			@echo "${NAME} was created\n"
			@echo "Compiled with flags: ${CFLAGS}\n${CRESET}"
		
clean:		
			@${REMOVE} ${OBJ}
			@echo "${CRED}${NAME} objects files were deleted${CRESET}"

fclean:		clean 
			@${REMOVE} ${NAME}
			@echo "${CRED}${NAME} was deleted${CRESET}"

re:			fclean ${NAME}

.PHONY:		all clean fclean re
