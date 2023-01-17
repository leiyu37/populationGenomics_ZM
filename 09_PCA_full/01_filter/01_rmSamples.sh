#!/bin/bash
#SBATCH --job-name=filter
#SBATCH --nodes=1
#SBATCH --tasks-per-node=1
#SBATCH --cpus-per-task=1
#SBATCH --mem=120G
#SBATCH --time=02:00:00
#SBATCH --output=filter.out
#SBATCH --error=filter.err
#SBATCH --partition=cluster
cd /gxfs_work1/fs1/work-geomar/smomw353/A_WGR_final/17_PCA_full/01_filter

vcftools --vcf /gxfs_work1/fs1/work-geomar/smomw353/A_WGR_final/02_hardFiltering/06_HQsnp.vcf --remove rmSamples.txt --out 01_rmSamples \
--recode \
--recode-INFO-all

vcftools --vcf 01_rmSamples.recode.vcf --max-missing 1.0 --recode-INFO-all --recode --out 02_noMissing

vcftools --vcf 02_noMissing.recode.vcf --mac 1 --recode-INFO-all --recode --out 03_mac1
