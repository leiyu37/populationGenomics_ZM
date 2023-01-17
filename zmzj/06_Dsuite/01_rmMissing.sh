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

cd /gxfs_work1/fs1/work-geomar/smomw353/A_WGR_final/zmzj/06_Dsuite

vcftools --vcf /gxfs_work1/fs1/work-geomar/smomw353/A_WGR_final/zmzj/04_rmSamples/03_synonymousSNP.recode.vcf \
--max-missing 1.0 \
--recode \
--recode-INFO-all \
--out 01_rmMissing
