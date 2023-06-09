/* ************************************************************************** */
/*																			*/
/*														:::	  ::::::::   */
/*   ft_putnbr_fd.c									 :+:	  :+:	:+:   */
/*													+:+ +:+		 +:+	 */
/*   By: hnait <hnait@student.42.fr>				+#+  +:+	   +#+		*/
/*												+#+#+#+#+#+   +#+		   */
/*   Created: 2022/10/22 01:30:43 by hnait 	   		   #+#	#+#			 */
/*   Updated: 2023/03/14 17:38:58 by hnait			###   ########.fr	   */
/*																			*/
/* ************************************************************************** */

#include "libft.h"

void	ft_putnbr_fd(int n, int fd)
{
	char	c;

	if (n == 0)
		c = '0';
	if (n == INT_MIN)
	{
		c = '8';
		n = n / 10;
	}
	else if (n < 0)
	{
		n = -n;
		c = '-';
		write(fd, &c, 1);
	}
	if (n > 0)
	{
		c = n % 10 + '0';
		n /= 10;
	}
	if (n != 0)
		ft_putnbr_fd(n, fd);
	write(fd, &c, 1);
}
