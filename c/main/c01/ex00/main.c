#include <stdio.h>

void ft_ft(int *nbr);

int main(void)
{
    printf("\e[1;34mExercício 00: \e[0m");

    int out;
    ft_ft(&out);
    if (out == 42)
    {
        printf("\e[1;32mOK\e[0m");
    }
    else
    {
        printf("\e[1;31mKO, out=%i. Expected out=42\e[0m", out);
    }
    return (0);
}
