#!/bin/bash
#SBATCH --job-name=tree_01
#SBATCH --nodes=1
#SBATCH --tasks-per-node=1
#SBATCH --cpus-per-task=20
#SBATCH --mem=50G
#SBATCH --time=48:00:00
#SBATCH --output=tree_01.out
#SBATCH --error=tree_01.err
#SBATCH --partition=cluster

cd /gxfs_work1/fs1/work-geomar/smomw353/A_WGR_final/zmzj/05_SNAPP_v2/run01

module load openjdk/11.0.2 libxtst/1.2.2
beast -threads 20 snapp.xml