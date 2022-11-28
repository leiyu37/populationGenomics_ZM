#!/bin/bash
#SBATCH --job-name=rmMissing
#SBATCH --nodes=1
#SBATCH --tasks-per-node=1
#SBATCH --cpus-per-task=1
#SBATCH --mem=120G
#SBATCH --time=02:00:00
#SBATCH --output=rmMissing.out
#SBATCH --error=rmMissing.err
#SBATCH --partition=cluster
cd /gxfs_work1/fs1/work-geomar/smomw353/A_WGR_final/05_rmMissing

#vcftools --vcf /gxfs_work1/fs1/work-geomar/smomw353/A_WGR_final/04_rmSamples/03_synonymousSNP/02_synonymousSNP.recode.vcf --max-missing 1.0 --recode-INFO-all --recode --out 01_rmMissing

vcftools --vcf ./01_rmMissing.recode.vcf --thin 3000 --recode-INFO-all --recode --out 02_thin3000
