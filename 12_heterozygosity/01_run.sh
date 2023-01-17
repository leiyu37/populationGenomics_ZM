#!/bin/bash
#SBATCH --job-name=het
#SBATCH --nodes=1
#SBATCH --tasks-per-node=1
#SBATCH --cpus-per-task=1
#SBATCH --mem=100G
#SBATCH --time=48:00:00
#SBATCH --output=het.out
#SBATCH --error=het.err
#SBATCH --partition=cluster

cd /gxfs_work1/fs1/work-geomar/smomw353/popGenomics/A_WGR_final/18_heterozygosity

chmod 700 ./individualHET.py
./individualHET.py
