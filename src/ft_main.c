/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_main.c                                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: vcavalca <vcavalca@student.42sp.org.br>    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/02/13 20:27:12 by vcavalca          #+#    #+#             */
/*   Updated: 2022/02/16 12:12:15 by vcavalca         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "pipex.h"

int	main(int argc, char **argv, char **p)
{
	if (argc != 5)
	{
		write(1, "Error. Use: ./pipex infile \"cmd1\" \"cmd2\" outfile\n", 50);
		exit(1);
	}
	ft_pipex(argv, p);
	return (0);
}
