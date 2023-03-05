#!/bin/bash

## Give the Job a descriptive name
#PBS -N run_kmeans

## Output and error files
#PBS -o run_kmeans_64.out
#PBS -e run_kmeans_64.err

## How many machines should we get? 
#PBS -l nodes=sandman:ppn=64

##How long should the job run for?
#PBS -l walltime=00:10:00

## Start 
## Run make in the src folder (modify properly)

module load openmp
cd /home/parallel/parlab12/ex2/lab2/kmeans
export GOMP_CPU_AFFINITY="0-63"
export OMP_NUM_THREADS=64
./kmeans_omp_reduction -s 256 -n 1 -c 4 -l 10
