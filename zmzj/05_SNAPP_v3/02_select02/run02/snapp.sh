#!/bin/bash
#SBATCH --job-name=tree_22
#SBATCH --nodes=1
#SBATCH --tasks-per-node=1
#SBATCH --cpus-per-task=24
#SBATCH --mem=50G
#SBATCH --time=239:00:00
#SBATCH --output=tree.out
#SBATCH --error=tree.err
#SBATCH --partition=cluster
#SBATCH --qos=long

cd /gxfs_work1/fs1/work-geomar/smomw353/popGenomics/A_WGR_final/zmzj/05_SNAPP_v3/02_select02/run02

module load openjdk/11.0.2 libxtst/1.2.2
beast -threads 24 snapp.xml