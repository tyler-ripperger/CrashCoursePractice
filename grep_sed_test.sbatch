#!/bin/bash
#SBATCH --job-name=errtest
#SBATCH --ntasks=1
#SBATCH --nodes=1             
#SBATCH --mem=100mb                    
#SBATCH --time=00:03:00   
#SBATCH --partition=windfall
#SBATCH --account=windfall

cd /home/u9/ripperger/ccbb_projects/

grep -F -w "coding" gene_results.txt > coding_genes.txt | sed 's/noncoding/gap/g' gene_results.txt | grep "gap" > gap_genes.txt
