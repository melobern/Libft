/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_calloc.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: mbernard <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/11/06 17:20:41 by mbernard          #+#    #+#             */
/*   Updated: 2023/11/20 17:13:13 by mbernard         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

void	*ft_calloc(size_t nmemb, size_t size)
{
	void	*copy;

	if (nmemb && size && (nmemb * size) / size != nmemb)
		return (NULL);
	copy = malloc(nmemb * size);
	if (!(copy))
	{
		free(copy);
		return (NULL);
	}
	ft_bzero(copy, nmemb * size);
	return (copy);
}
