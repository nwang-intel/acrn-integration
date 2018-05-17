all: hv_xdsupport
DIR_INC=include/
CFLAG=-g -Wall -fno-stack-protector 
OBJS=check_argv.o hv_xdsupport_mmap_c_nx.o hv_xdsupport_mprotect_c_nx.o hv_xdsupport_mprotect_s_nx.o hv_xdsupport_data_segment.o

hv_xdsupport: hv_xdsupport.c $(OBJS)
	gcc $(CFLAG) hv_xdsupport.c $(OBJS) -I $(DIR_INC) -o hv_xdsupport

check_argv.o: 
	gcc $(CFLAG) -I $(DIR_INC) -c check_argv.c

hv_xdsupport_mmap_c_nx.o:
	gcc $(CFLAG) -I $(DIR_INC) -c hv_xdsupport_mmap_c_nx.c

hv_xdsupport_mprotect_c_nx.o:
	gcc $(CFLAG) -I $(DIR_INC) -c hv_xdsupport_mprotect_c_nx.c

hv_xdsupport_mprotect_s_nx.o:
	gcc $(CFLAG) -I $(DIR_INC) -c hv_xdsupport_mprotect_s_nx.c

hv_xdsupport_data_segment.o:
	gcc $(CFLAG) -I $(DIR_INC) -c hv_xdsupport_data_segment.c

clean:
	rm -rf *.o hv_xdsupport
