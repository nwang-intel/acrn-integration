#ifndef CHECK_INPUT_H
#define CHECK_INPUT_H

#include <stdbool.h>
extern bool executable;

typedef enum e_test {
    t_mmap_c_nx, 
    t_mprotect_c_nx, 
    t_mprotect_s_nx, 
    t_argv_error,
    t_data_segment,
    t_stack_segment,
    t_heap_segment,
    t_print_map,
} e_test; 

void help(void);
e_test check_argv(int, char **);

#endif
