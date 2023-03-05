#!/bin/bash

## Give the Job a descriptive name
#PBS -N run_kmeans

## Output and error files
#PBS -o run_kmeans_2.out
#PBS -e run_kmeans_2.err

## How many machines should we get? 
#PBS -l nodes=1:ppn=16

##How long should the job run for?
#PBS -l walltime=00:10:00

## Start 
## Run make in the src folder (modify properly)

module load openmp
cd /home/parallel/parlab12/ex2/kmeans/
export GOMP_CPU_AFFINITY="0-63"
for thread_num in 2 4 8 16 32 64
do
	export OMP_NUM_THREADS=$thread_num
	./kmeans_omp_reduction -s 256 -n 16 -c 16 -l 10
done
