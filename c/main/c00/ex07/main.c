#include <stdio.h>
#include <limits.h>
#include <unistd.h>

void	ft_putnbr(int nb);

int main(void)
{
	write(1, "INT_MIN: ", 10);
	ft_putnbr(INT_MIN);
	write(1, "\n-1: ", 5);
	ft_putnbr(-1);
	write(1, "\n0: ", 4);
	ft_putnbr(0);
	write(1, "\n1: ", 4);
	ft_putnbr(1);
	write(1, "\nINT_MAX: ", 10);
	ft_putnbr(INT_MAX);
	write(1, "\n", 1);
	return (0);
}
