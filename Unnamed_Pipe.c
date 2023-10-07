#include<stdio.h>
#include<unistd.h>
#include<sys/types.h>
#include<sys/wait.h>
#include<stdlib.h>

void main(){
    int fd[2], n;
    char buffer[100];

    pid_t p;

    pipe(fd);
    p=fork();

    if(p>0){
        printf("Passing Values to Child \n");
        write(fd[1], "Tinu \n", 5);

        n=read(fd[0], buffer, 5);
        write(1, buffer, n);
    }
    else{
        printf("Catching Values from Parent \n");
        write(fd[1], "Tini \n", 5);

        n=read(fd[0], buffer, 5);
        write(1, buffer, n);
    }
}