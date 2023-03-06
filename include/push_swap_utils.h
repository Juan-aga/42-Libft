/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   push_swap_utils.h                                  :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: juan-aga <juan_aga@student.42malaga.c      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/01/18 12:14:24 by juan-aga          #+#    #+#             */
/*   Updated: 2023/03/06 13:02:05 by juan-aga         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef PUSH_SWAP_UTILS_H
# define PUSH_SWAP_UTILS_H

# include "libft.h"
# include "memory_leaks.h"

/*
 * 	return 1 if c is equal to + or -
 * 	else return 0.
 */
int			ft_issign(char c);
long long	ft_atoll(const char *str);
int			ft_abs(int n);

#endif
