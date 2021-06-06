#include <stdio.h>
void ft_is_negative(int n);

int main(void)
{
    printf("Verifique abaixo:\n");

	ft_is_negative(42);
	printf(" = P\n");

	ft_is_negative(0);
	printf(" = P\n");

	ft_is_negative(-42);
	printf(" = N\n");

	return (0);
}
