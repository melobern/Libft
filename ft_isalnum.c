/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_isalnum.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: mbernard <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/11/06 15:43:26 by mbernard          #+#    #+#             */
/*   Updated: 2023/11/23 09:51:29 by mbernard         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

int	ft_isalnum(int c)
{
	if (!c)
		return (0);
	return ((c > 47 && c < 58) || (c > 64 && c < 91) || (c > 96 && c < 123));
}
