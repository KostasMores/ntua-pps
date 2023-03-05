#!/bin/bash

## Give the Job a descriptive name
#PBS -N run_kmeans

## Output and error files
#PBS -o cpuinfo.out
#PBS -e cpuinfo.err

## How many machines should we get? 
#PBS -l nodes=1:ppn=16

##How long should the job run for?
#PBS -l walltime=00:10:00

## Start 
## Run make in the src folder (modify properly)

cd /home/parallel/parlab12/ex2/kmeans/
cat /proc/cpuinfo
