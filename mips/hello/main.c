#include <stdio.h>
#include <stdlib.h>
#include "hey.h"

const char msg[] = "hello world!";

int main()
{
    int y;

    sayhi();
    y = add(2, 3);
    printf("add(2, 3) = %d\n", y);

    exit(42);
}
