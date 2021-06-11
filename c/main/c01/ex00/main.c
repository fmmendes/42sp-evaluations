#include <stdio.h>

void ft_ft(int *nbr);

int main(void)
{
    int out;
    ft_ft(&out);
    if (out == 42)
    {
        printf("\e[1;32mOK\e[0m");
    }
    else
    {
        printf("\e[1;31mKO\e[0m");
    }
    return (0);
}
