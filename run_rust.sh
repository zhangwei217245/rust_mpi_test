#!/bin/bash
#SBATCH -N 4
#SBATCH -C knl
#SBATCH -q debug
#SBATCH -J rust_mpi_test
#SBATCH --mail-user=x-spirit.zhang@ttu.edu
#SBATCH --mail-type=ALL
#SBATCH -t 00:10:00

#OpenMP settings:
export OMP_NUM_THREADS=2
export OMP_PLACES=threads
export OMP_PROC_BIND=spread


module load openmpi/3.1.3 

#run the application:
srun -n 16 -c 68 --cpu_bind=cores /global/homes/w/wzhang5/code/rust/mpitest/target/debug/mpitest 
