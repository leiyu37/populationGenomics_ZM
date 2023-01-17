#!/bin/bash
#SBATCH --job-name=select03
#SBATCH --nodes=1
#SBATCH --tasks-per-node=1
#SBATCH --cpus-per-task=1
#SBATCH --mem=120G
#SBATCH --time=02:00:00
#SBATCH --output=select.out
#SBATCH --error=select.err
#SBATCH --partition=cluster

cd /gxfs_work1/fs1/work-geomar/smomw353/popGenomics/A_WGR_final/12_SNAPP_v4_formal/03_select03

vcftools --vcf /gxfs_work1/fs1/work-geomar/smomw353/popGenomics/A_WGR_final/04_rmSamples/03_synonymousSNP/02_synonymousSNP.recode.vcf --keep 01_targetSamples.txt --recode --recode-INFO-all --out 01_targetSamples

vcftools --vcf 01_targetSamples.recode.vcf \
--mac 1 \
--recode \
--recode-INFO-all \
--out 02_mac1

vcftools --vcf 02_mac1.recode.vcf \
--max-missing 1.0 \
--recode \
--recode-INFO-all \
--out 03_rmMissing

vcftools --vcf 03_rmMissing.recode.vcf \
--thin 3000 \
--recode \
--recode-INFO-all \
--out 04_thin3000
