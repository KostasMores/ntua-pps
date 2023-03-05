#!/bin/bash

## Give the Job a descriptive name
#PBS -N run_thermal

## Output and error files
#PBS -o run.out
#PBS -e run.err

## How many machines should we get? 
#PBS -l nodes=8:ppn=8

##How long should the job run for?
#PBS -l walltime=00:10:00

## Start 
## Run make in the src folder (modify properly)

cd /home/parallel/parlab12/MPI/mpi
rm res_jacobi_new.txt
rm res_gs_new.txt

module load openmpi/1.8.3
mpirun -np 64 --map-by node --mca btl tcp,self jacobi2 1024 1024 8 8 >> res_jacobi_new.txt 
#mpirun -np 64 --map-by node --mca btl tcp,self seidelsor 1024 1024 8 8 >> res_gs_new.txt
