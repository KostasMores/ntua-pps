#!/bin/bash

## Give the Job a descriptive name
#PBS -N run_fw

## Output and error files
#PBS -o run_fw_sr_better/run_fw_sr_2048_64_2.out
#PBS -e run_fw_sr_better/run_fw_sr_2048_64_2.err

## How many machines should we get? 
#PBS -l nodes=1:ppn=64

##How long should the job run for?
#PBS -l walltime=00:10:00

## Start 
## Run make in the src folder (modify properly)

module load openmp
cd /home/parallel/parlab12/ex2/FW
# ./fw 1024
for threads_num in 1 2 4 8 16 32 64
do
	export OMP_NUM_THREADS=$threads_num
	./fw_sr 2048 64
done
# ./fw_tiled <SIZE> <BSIZE>
