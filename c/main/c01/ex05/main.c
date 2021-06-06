#include <stdio.h>

void ft_putstr(char *str);

int main(void)
{
    const char *str1 = "Mussum Ipsum";
    printf("      Output | Input\n");
    ft_putstr((char *)str1);
    printf(" | %s\n", str1);
    
    return 0;
}
