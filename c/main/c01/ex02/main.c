#include <stdio.h>

void	ft_swap(int *a, int *b);

int main(void)
{
    printf("\e[1;34mExercício 02: \e[0m");
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
		printf("\e[1;31mKO, Given a=7 b=8, got a=%i b=%i, expected a=8 b=7\e[0m", a, b);
	}
    return 0;
}
