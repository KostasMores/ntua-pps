CC=mpicc
CFLAGS=-O3 -lm -Wall
RES=-DPRINT_RESULTS
CONV=-DTEST_CONV

all: jacobi2 seidelsor 

jacobi2: Jacobi_mpi2.c utils.c
	$(CC) $(CFLAGS) $(CONV) Jacobi_mpi2.c utils.c -o jacobi2

seidelsor: GaussSeidelSOR_mpi.c utils.c
	$(CC) $(CFLAGS) $(CONV) GaussSeidelSOR_mpi.c utils.c -o seidelsor

clean:
	rm jacobi2 seidelsor
