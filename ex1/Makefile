all: omp_GameOfLife

omp_GameOfLife: Game_Of_Life.c
	gcc -O3 -fopenmp -o omp_GameOfLife Game_Of_Life.c

clean: 
	rm omp_GameOfLife
