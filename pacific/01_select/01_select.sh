#!/bin/bash
#SBATCH --job-name=selectP
#SBATCH --nodes=1
#SBATCH --tasks-per-node=1
#SBATCH --cpus-per-task=1
#SBATCH --mem=120G
#SBATCH --time=02:00:00
#SBATCH --output=selectP.out
#SBATCH --error=selectP.err
#SBATCH --partition=cluster

cd /gxfs_work1/fs1/work-geomar/smomw353/A_WGR_final/pacific/01_select

chmod 700 01_extractTargetSamples.py
./01_extractTargetSamples.py

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