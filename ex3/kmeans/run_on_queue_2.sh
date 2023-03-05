#!/bin/bash

## Give the Job a descriptive name
#PBS -N run_kmeans

## Output and error files
#PBS -o run_kmeans.out
#PBS -e run_kmeans.err

## How many machines should we get? 
#PBS -l nodes=1:ppn=8

##How long should the job run for?
#PBS -l walltime=00:02:00

## Start 
## Run make in the src folder (modify properly)

cd /home/parallel/parlab12/ex3/kmeans
export CUDA_VISIBLE_DEVICES=2
# sizes='32 64 128 256 512 1024 2048'
sizes='256'

#coordinates='4'
coordinates='16'

#centers='64'
centers='16'

loop_threashold='10'
# loop_threashold='100''

#block_size='32 64 128 256 512 1024'
block_size='32'

progs=(
	kmeans_seq
	kmeans_cuda_naive
	kmeans_cuda_transpose
	kmeans_cuda_shared
	kmeans_cuda_all_gpu
)

./kmeans_cuda_transpose -s 1024 -n 16 -c 16 -l 10 -b 64
./kmeans_cuda_shared -s 1024 -n 16 -c 16 -l 10 -b 64
