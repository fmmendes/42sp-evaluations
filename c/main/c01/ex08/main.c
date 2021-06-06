#include <stdio.h>

void ft_sort_int_tab(int *tab, int size);

int main(void)
{
    printf("\e[1;34mExercício 08: \e[0m");
    int arr[5] = {4, 3, 1, 2, 0};
    int arr2[4] = {1, 2, 4, 3};

    ft_sort_int_tab(arr2, 4);
    ft_sort_int_tab(arr, 5);

    if (!(arr[0] == 0 && arr[1] == 1 && arr[2] == 2 && arr[3] == 3 && arr[4] == 4))
        printf("\e[1;31mKO, expected {0, 1, 2, 3, 4} got {%i, %i, %i, %i, %i}\e[0m", arr[0], arr[1], arr[2], arr[3], arr[4]);
    else if (!(arr2[0] == 1 && arr2[1] == 2 && arr2[2] == 3 && arr2[3] == 4))
        printf("\e[1;31mKO, expected {1, 2, 3, 4} got {%i, %i, %i, %i}\e[0m", arr2[0], arr[1], arr[2], arr[3]);
    else
        printf("\e[1;32mOK\e[0m");
    return 0;
}
