#include <stdio.h>

void	ft_div_mod(int a,int b,int *div,int *mod);

int main(void)
{
    printf("\e[1;34mExercício 03: \e[0m");
	int a, b;
	a = 7;
	b = 2;
	int div;
	int mod;
	ft_div_mod(a, b, &div, &mod);
	if (div == 3 && mod == 1)
	{
        printf("\e[1;32mOK\e[0m");
	}
	else
	{
		printf("\e[1;31mKO, Given a=7 b=2, got div=%i mod=%i, expected div=3 mod=1\e[0m", div, mod);
	}
    return 0;
}
