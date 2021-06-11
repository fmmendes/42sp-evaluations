#include <stdio.h>

void	ft_swap(int *a, int *b);

int main(void)
{
	int a, b;
	a = 7;
	b = 8;
	ft_swap(&a, &b);
	if (a == 8 && b == 7)
	{
		printf("\e[1;32mOK\e[0m");
	}
	else
	{
		printf("\e[1;31mKO\e[0m");
	}
    return 0;
}
