#!/bin/bash
#SBATCH --job-name=synSNP
#SBATCH --nodes=1
#SBATCH --tasks-per-node=1
#SBATCH --cpus-per-task=1
#SBATCH --mem=120G
#SBATCH --time=02:00:00
#SBATCH --output=synSNP.out
#SBATCH --error=synSNP.err
#SBATCH --partition=cluster
cd /gxfs_work1/fs1/work-geomar/smomw353/A_WGR_final/04_rmSamples/03_synonymousSNP

java -Xmx64g -jar /gxfs_home/geomar/smomw353/snpEff/snpEff/snpEff.jar zmv2 /gxfs_work1/fs1/work-geomar/smomw353/A_WGR_final/04_rmSamples/02_mac1.recode.vcf >ann_SNP.vcf

cat ann_SNP.vcf | awk '/^Chr/' | grep synonymous_variant | awk '{print $1 "\t" $2}' >01_synonymous_pos.txt

vcftools --vcf /gxfs_work1/fs1/work-geomar/smomw353/A_WGR_final/04_rmSamples/02_mac1.recode.vcf \
--positions  01_synonymous_pos.txt \
--recode \
--recode-INFO-all \
--out 02_synonymousSNP
