/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_atof.c                                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: juan-aga <juan_aga@student.42malaga.c      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/12/20 15:58:28 by juan-aga          #+#    #+#             */
/*   Updated: 2023/08/04 14:18:10 by juan-aga         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "fractol_utils.h"

double	ft_atof(char *str)
{
	int		num;
	double	rest;
	char	*tmp;
	int		i;
	int		last;

	num = ft_atoi(str);
	tmp = ft_strchr(str, '.');
	if (!tmp)
		tmp = ft_strchr(str, ',');
	if (!tmp)
		return (num);
	rest = ft_atoi(&tmp[1]);
	i = 1;
	last = ft_strlen(&tmp[1]);
	while (last > 0 && tmp[last] == '0')
		last--;
	while (i <= last)
	{
		rest /= 10;
		i++;
	}
	if (num < 0 || (str[0] == '-' && str[1] == '0'))
		return (num - rest);
	return (num + rest);
}
