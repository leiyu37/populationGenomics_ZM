#!/bin/bash
#SBATCH --job-name=10_9
#SBATCH --nodes=1
#SBATCH --tasks-per-node=1
#SBATCH --cpus-per-task=1
#SBATCH --mem=20G
#SBATCH --time=48:00:00
#SBATCH --output=10_9.out
#SBATCH --error=10_9.err
#SBATCH --partition=cluster
cd /gxfs_work1/fs1/work-geomar/smomw353/A_WGR_final/09_STRUCTURE/results
structure -m ../mainparams -e ../extraparams -K 10 -i ../str_input.txt -o k10_run_9 -D 9
