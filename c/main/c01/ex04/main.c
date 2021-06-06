#include <stdio.h>

void	ft_ultimate_div_mod(int *a,int *b);

int main(void)
{
    printf("\e[1;34mExercício 04: \e[0m");
	int a, b;
	a = 11;
	b = 3;
	ft_ultimate_div_mod(&a, &b);
	if (a == 3 && b == 2)
	{
		printf("\e[1;32mOK\e[0m");
	}
	else
	{
		printf("\e[1;31mKO, Given a=11 b=3, got a=%i b=%i, expected a=3 b=2\e[0m", a, b);
	}
    return 0;
}
