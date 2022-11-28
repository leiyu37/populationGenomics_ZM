#!/bin/bash
#SBATCH --job-name=bedtools
#SBATCH --nodes=1
#SBATCH --tasks-per-node=1
#SBATCH --cpus-per-task=1
#SBATCH --mem=100G
#SBATCH --time=48:00:00
#SBATCH --output=bedtools.out
#SBATCH --error=bedtools.err
#SBATCH --partition=cluster

cd /gxfs_work1/fs1/work-geomar/smomw353/A_WGR_final/03_coreGenes

bedtools intersect -a /gxfs_work1/fs1/work-geomar/smomw353/A_WGR_final/02_hardFiltering/06_HQsnp.vcf -b 01_coreLines.txt -wo >02_intersect.txt
