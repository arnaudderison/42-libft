#include "libft.h"
#include <string.h>
#include <stdlib.h>
#include <stdio.h>

int main(void)
{
    char *test = "922337203685477580";
    printf("%s%d\n", "mon ATOI : ", ft_atoi(test));
    printf("%s%d\n", "atoi : ", atoi(test));
    return (0);
}