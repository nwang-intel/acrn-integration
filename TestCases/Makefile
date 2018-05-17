all: hv_xdsupport
DIR_INC=include/
CFLAG=-g -Wall -fno-stack-protector 
OBJS=check_argv.o hv_xdsupport_mmap_c_nx.o hv_xdsupport_mprotect_c_nx.o hv_xdsupport_mprotect_s_nx.o hv_xdsupport_data_segment.o hv_xdsupport_stack_segment.o hv_xdsupport_heap_segment.o hv_xdsupport_print_map.o

hv_xdsupport: hv_xdsupport.c $(OBJS)
	gcc $(CFLAG) hv_xdsupport.c $(OBJS) -I $(DIR_INC) -o hv_xdsupport

check_argv.o: check_argv.c include/check_argv.h
	gcc $(CFLAG) -I $(DIR_INC) -c check_argv.c

hv_xdsupport_mmap_c_nx.o: hv_xdsupport_mmap_c_nx.c include/xdsupport_test.h
	gcc $(CFLAG) -I $(DIR_INC) -c hv_xdsupport_mmap_c_nx.c

hv_xdsupport_mprotect_c_nx.o: hv_xdsupport_mprotect_c_nx.c include/xdsupport_test.h 
	gcc $(CFLAG) -I $(DIR_INC) -c hv_xdsupport_mprotect_c_nx.c

hv_xdsupport_mprotect_s_nx.o: hv_xdsupport_mprotect_s_nx.c  include/xdsupport_test.h
	gcc $(CFLAG) -I $(DIR_INC) -c hv_xdsupport_mprotect_s_nx.c

hv_xdsupport_data_segment.o: hv_xdsupport_data_segment.c include/xdsupport_test.h
	gcc $(CFLAG) -I $(DIR_INC) -c hv_xdsupport_data_segment.c

hv_xdsupport_stack_segment.o: hv_xdsupport_stack_segment.c include/xdsupport_test.h
	gcc $(CFLAG) -I $(DIR_INC) -c hv_xdsupport_stack_segment.c

hv_xdsupport_heap_segment.o: hv_xdsupport_heap_segment.c include/xdsupport_test.h
	gcc $(CFLAG) -I $(DIR_INC) -c hv_xdsupport_heap_segment.c

hv_xdsupport_print_map.o: hv_xdsupport_print_map.c include/xdsupport_test.h
	gcc $(CFLAG) -I $(DIR_INC) -c hv_xdsupport_print_map.c

clean:
	rm -rf *.o hv_xdsupport
