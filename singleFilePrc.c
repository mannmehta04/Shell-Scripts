#include<stdio.h>
#include<stdlib.h>
#include<string.h>
#include<unistd.h>
#include<sys/shm.h>

void main(){
    void *sm;

    char b[10];
    int smid;

    smid=shmget((key_t) 1122, 1024, 0666);
    sm = shmat(smid, NULL, 0);
    read(0, b, 10);
    strcpy(sm, b);

    printf("Data: %s\n", (char *)sm);
}