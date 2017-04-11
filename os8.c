#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <unistd.h>

int main()
{
	pid_t pid;

	pid = fork();

	if(pid < 0)
	{
		printf("error\n");
		exit(-1);
	}

	else if(pid == 0)
	{
		printf("child process , ID = %d , PPID = %d \n",getpid(),getppid());
	}

	else
	{
		wait(NULL);
		printf("parent process , ID = %d , child ID = %d \n",getpid(),pid);
		exit(0);
	}
	return 0;
}