#!/bin/bash
#SBATCH --job-name=tr_bash
#SBATCH --ntasks=1
#SBATCH --nodes=1
#SBTACH --mem=1gb
#SBTACH --time=00:03:00
#SBTACH --partition=windfall
#SBATCH --account=windfall

onion=("DNA RNA proteins")
for i in ${onion}
    do echo "I study ${i}"
done