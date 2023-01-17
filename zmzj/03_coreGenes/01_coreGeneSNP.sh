#!/bin/bash
#SBATCH --job-name=coreGeneSNP
#SBATCH --nodes=1
#SBATCH --tasks-per-node=1
#SBATCH --cpus-per-task=1
#SBATCH --mem=120G
#SBATCH --time=02:00:00
#SBATCH --output=coreGeneSNP.out
#SBATCH --error=coreGeneSNP.err
#SBATCH --partition=cluster
cd /gxfs_work1/fs1/work-geomar/smomw353/A_WGR_final/zmzj/03_coreGenes

bedtools intersect -a /gxfs_work1/fs1/work-geomar/smomw353/A_WGR_final/zmzj/02_hardFiltering/06_HQsnp.vcf -b 01_coreLines.txt -wo >02_intersect.txt

cat 02_intersect.txt | awk '{print $1 "\t" $2}' >03_pos.txt

vcftools --vcf /gxfs_work1/fs1/work-geomar/smomw353/A_WGR_final/zmzj/02_hardFiltering/06_HQsnp.vcf \
--positions  03_pos.txt \
--recode \
--recode-INFO-all \
--out 03_coreGeneSNP
