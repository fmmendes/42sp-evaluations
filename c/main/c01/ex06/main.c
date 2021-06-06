#include <stdio.h>
#include <string.h>

int		ft_strlen(char *str);

int main(void)
{
    printf("\e[1;34mExercício 06: \e[0m");
	const char* str1 = "batata frita";
	const char* str2 = "maCarroni";
	if ((int) strlen(str1) == ft_strlen((char*) str1) && (int) strlen(str2) == ft_strlen((char*) str2))
	{
		printf("\e[1;32mOK\e[0m");
	}
	else
	{
		printf("\e[1;31mKO, strlen(\"%s\") = %i, got %i. strlen(\"%s\") = %i, got %i.\e[0m", str1, (int) strlen(str1), ft_strlen((char*) str1), str2, (int) strlen(str2), ft_strlen((char*) str2));
	}
    return 0;
}
