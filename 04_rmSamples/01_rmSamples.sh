#!/bin/bash
#SBATCH --job-name=rmSamples
#SBATCH --nodes=1
#SBATCH --tasks-per-node=1
#SBATCH --cpus-per-task=1
#SBATCH --mem=120G
#SBATCH --time=02:00:00
#SBATCH --output=rmSamples.out
#SBATCH --error=rmSamples.err
#SBATCH --partition=cluster
cd /gxfs_work1/fs1/work-geomar/smomw353/A_WGR_final/04_rmSamples

#vcftools --vcf /gxfs_work1/fs1/work-geomar/smomw353/A_WGR_final/03_coreGenes/03_coreGeneSNP.recode.vcf --remove rmSamples.txt --out 01_rmSamples \
#--recode \
#--recode-INFO-all

vcftools --vcf 01_rmSamples.recode.vcf --mac 1 --recode-INFO-all --recode --out 02_mac1
