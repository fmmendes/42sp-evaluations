#include <stdio.h>

void ft_sort_int_tab(int *tab, int size);

int main(void)
{
    int arr[5] = {4, 3, 1, 2, 0};
    int arr2[4] = {1, 2, 4, 3};

    ft_sort_int_tab(arr2, 4);
    ft_sort_int_tab(arr, 5);

    if (!(arr[0] == 0 && arr[1] == 1 && arr[2] == 2 && arr[3] == 3 && arr[4] == 4))
        printf("\e[1;31mKO\e[0m");
    else if (!(arr2[0] == 1 && arr2[1] == 2 && arr2[2] == 3 && arr2[3] == 4))
        printf("\e[1;31mKO\e[0m");
    else
        printf("\e[1;32mOK\e[0m");
    return 0;
}
