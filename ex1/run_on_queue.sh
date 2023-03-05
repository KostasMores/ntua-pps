#!/bin/bash

## Give the Job a descriptive name
#PBS -N run_omp_GameOfLife

## Output and error files
#PBS -o run_omp_GameOfLife.out
#PBS -e run_omp_GameOfLife.err

## How many machines should we get? 
#PBS -l nodes=1:ppn=8

##How long should the job run for?
#PBS -l walltime=00:10:00

## Start 
## Run make in the src folder (modify properly)

module load openmp
cd /home/parallel/parlab12/ex1
export OMP_NUM_THREADS=8
./omp_GameOfLife 4096 1000

