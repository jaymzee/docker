#include <sys/syscall.h>
#include <unistd.h>

const char message[] = "Hello, World!\n";

int main()
{
    syscall(__NR_write, STDOUT_FILENO, message, sizeof(message) - 1);

    return 0;
}
