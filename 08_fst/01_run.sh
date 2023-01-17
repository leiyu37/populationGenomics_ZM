#!/bin/bash
#SBATCH --job-name=fst
#SBATCH --nodes=1
#SBATCH --tasks-per-node=1
#SBATCH --cpus-per-task=10
#SBATCH --mem=120G
#SBATCH --time=02:00:00
#SBATCH --output=fst.out
#SBATCH --error=fst.err
#SBATCH --partition=cluster
cd /gxfs_work1/fs1/work-geomar/smomw353/A_WGR_final/13_fst
chmod 700 fst.R
./fst.R
