#include <stdio.h>

int main()
{
    char* cmd = "free -t --giga | grep Mem: | awk '{print $4}'";

    FILE *cmdfile = popen(cmd, "r");
    char result[25];

    while(fgets(result, sizeof(result), cmdfile) != NULL)
    {
        printf("Available Memory: %s", result);
    }
    pclose(cmdfile);
}