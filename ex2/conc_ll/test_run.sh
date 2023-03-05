#!/bin/bash

## Give the Job a descriptive name
#PBS -N run_kmeans

## Output and error files
#PBS -o run_conc_ll_serial_8192.out
#PBS -e run_conc_ll_serial_8192.err

## How many machines should we get? 
#PBS -l nodes=1:ppn=8

##How long should the job run for?
#PBS -l walltime=00:30:00

## Start 
## Run make in the src folder (modify properly)

module load openmp
cd /home/parallel/parlab12/ex2/conc_ll
size=8192
export OMP_NUM_THREADS=1
export MT_CONF=0
./x.serial $size 100 0 0
./x.serial $size 80 10 10
./x.serial $size 20 40 40
./x.serial $size 0 50 50

