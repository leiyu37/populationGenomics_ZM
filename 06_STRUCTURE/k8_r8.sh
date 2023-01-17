#!/bin/bash
#SBATCH --job-name=8_8
#SBATCH --nodes=1
#SBATCH --tasks-per-node=1
#SBATCH --cpus-per-task=1
#SBATCH --mem=20G
#SBATCH --time=48:00:00
#SBATCH --output=8_8.out
#SBATCH --error=8_8.err
#SBATCH --partition=cluster
cd /gxfs_work1/fs1/work-geomar/smomw353/A_WGR_final/09_STRUCTURE/results
structure -m ../mainparams -e ../extraparams -K 8 -i ../str_input.txt -o k8_run_8 -D 8
