#include<stdio.h>
#include<unistd.h>
#include<sys/types.h>
#include<sys/wait.h>
#include<sys/shm.h>
#include<stdlib.h>

void main(){
    void *shared_memory;
    char buff[8];
    int shmid;

    shmid = shmget((key_t)1122, 1024, 0666 | IPC_CREAT);
    printf("Shared Key Memory: %d \n", shmid);

    shared_memory = shmat(shmid, NULL, 0);
    printf("Process Attached at: %p \n", shared_memory);

    printf("Enter Data: ");
    read(0, buff, 8);

    strcpy(shared_memory, buff);
    printf("Your data: %s\n", (char *)shared_memory);
}