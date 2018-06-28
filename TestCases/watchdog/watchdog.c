#include <errno.h>
#include <getopt.h>
#include <fcntl.h>
#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <unistd.h>
#include <sys/ioctl.h>
#include <signal.h>

#include <linux/watchdog.h>

#define DEV_NAME "/dev/watchdog"
void help() {
    printf("usage：[-h] [-i] [-m]\n");
    printf("\t -i: set the test interval, 10s by default\n");
    printf("\t -m: set the test margin, 5s by default\n");
}

int fd;

static void sig_int(int num) {
    if (close(fd) != 0) {
        printf ("fd close failed !\n");
        return ;
    }
    printf("fd closed\n");
    exit(0);
}

int main(int argc, char **argv) {
    signal(SIGINT, sig_int);
    //int fd;
    int ret;
    int margin = 5;
    int interval = 10;
    int opt = 0;
    while ((opt = getopt(argc, argv, "hi:m:")) != -1){
        switch(opt) {
            case 'h':
                help();
                return 0;
            case 'i':
                interval = atoi(optarg);
                printf("interval set to %d\n", interval);
                break;
            case 'm':
                margin = atoi(optarg);
                printf("margin set to %d\n", margin);
                break;
            default :
                help();
                return 0;
        }
    }        

    int timeout = interval + margin;

    fd = open(DEV_NAME, O_RDWR);
    if (fd < 0) {
        printf("watchdog: Failed to open %s: %s\n", DEV_NAME, strerror(errno));
        return 1;
    }

    ret = ioctl(fd, WDIOC_SETTIMEOUT, &timeout);
    if (ret) {
        printf("watchdogd: failed to set timeout to %d: %s\n", timeout, strerror(errno));
    }

    while (1) {
        printf("kick dog\n");
        write(fd, "", 1);
        sleep(interval);
    }
}

