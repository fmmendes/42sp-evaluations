#include <stdio.h>

void	ft_rev_int_tab(int *tab, int size);

int main(void)
{
	int arr[5] = {0, 1, 2, 3, 4};
	int arr2[4] = {1, 2, 4, 3};

	ft_rev_int_tab(arr, 5);
	ft_rev_int_tab(arr2, 4);

	if (!(arr[0] == 4 && arr[1] == 3 && arr[2] == 2 && arr[3] == 1 && arr[4] == 0))
	{
		printf("\e[1;31mKO\e[0m");
	}
	else if (!(arr2[0] == 3 && arr2[1] == 4 && arr2[2] == 2 && arr2[3] == 1))
		printf("\e[1;31mKO\e[0m");
	else
		printf("\e[1;32mOK\e[0m");
    return 0;
}
