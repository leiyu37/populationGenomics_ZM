#!/bin/bash
#SBATCH --job-name=hardFiltering
#SBATCH --nodes=1
#SBATCH --tasks-per-node=1
#SBATCH --cpus-per-task=1
#SBATCH --mem=100G
#SBATCH --time=48:00:00
#SBATCH --output=hardFiltering.out
#SBATCH --error=hardFiltering.err
#SBATCH --partition=cluster

cd /gxfs_work1/fs1/work-geomar/smomw353/A_WGR_final/02_hardFiltering

bcftools filter --SnpGap 20 -o 01_indelDistance_snp.vcf -O v /sfs/fs1/work-geomar/smomw353/A_WGR_scripts/formalScripts/10_snpcalling/wgr_raw.vcf
