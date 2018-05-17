#include <getopt.h>
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include "include/check_argv.h"


void help() {
    printf("usage: [-t] [-s] [-c]\n");
	printf("		-t : set the test category, <mmap_c_nx, ...>\n");
	printf("		-s : set the nx bit which makes GNU_STACK non-executable.\n");
	printf("		-c : clear the nx bit which makes GNU_STACK executable.\n");
}

e_test which_test(char *testType) {
    if (!strcmp("mmap_c_nx", testType)) {
        printf("$ executing mmap_c_nx test\n");
        return t_mmap_c_nx;
    } 
    if (!strcmp("mprotect_c_nx", testType)) {
        printf("$ executing mprotect_c_nx test\n"); 
        return t_mprotect_c_nx;
    }
    if (!strcmp("mprotect_s_nx", testType)) {
        printf("$ executing mprotect_s_nx test\n");
        return t_mprotect_s_nx;
    }
    if (!strcmp("data_segment", testType)) {
        printf("$ executing data_segment test\n");
        return t_data_segment;
    }
    return t_argv_error;
}

e_test check_argv(int argc, char **argv) {
    if (argc < 2) {
        help();
        exit(1);
        //return t_argv_error;
    }
    int opt;
    e_test test = t_argv_error;
    while ((opt = getopt(argc, argv, "hsct:")) != -1) {
        switch(opt) {
            case 'h':
                help();
                return t_argv_error;
            case 's':
                executable = 0;
                break;
            case 'c':
                executable = 1;
                break;
            case 't':
                test = which_test(optarg);
                break; 
            default :
                help();
                return t_argv_error;
        }
    }
    return test;
}

                

