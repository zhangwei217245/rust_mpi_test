# To compile on Cori

```bash
module load PrgEnv-gnu
module load gcc
module load openmpi/3.1.3
module load llvm/10.0.0

cargo build
```


# To run on Cori

```bash
sbatch run_rust.sh
```
