#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <unistd.h>

int main()
{
	pid_t pid;
	int i = 0;

	for(i = 0 ; i < 3 ;i++)
	{
		pid = fork();
		if(pid < 0)
		{
			printf("error\n");
			exit(-1);
		}

		else if(pid == 0)
		{
			printf("child process %d is executing with id : %d\n",i+1,getpid());
		}

		else
		{
			wait(NULL);
			if(pid == 2)
			{
				printf("----------------\n");
			}
			printf("child process %d executed.\n",i+1);
			exit(0);
		}
	}
	return 0;
}