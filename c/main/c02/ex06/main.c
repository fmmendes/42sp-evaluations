#include <stdio.h>
#include <ctype.h>

int		ft_str_is_printable(char *str);

int		main(void)
{
	char buffer0[200];

	buffer0[1] = 0;
	for(int i = 1; i <= 127; ++i)
	{
		buffer0[0] = i;
		if ((!!isprint(i)) != (!!ft_str_is_printable(buffer0)))
		{
			printf("KO char %i is %sprintable\n", i, isprint(i) ? "" : "not ");
			return (0);
		}
	}

	printf("OK");
	return (0);
}