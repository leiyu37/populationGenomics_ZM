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
cd /gxfs_work1/fs1/work-geomar/smomw353/A_WGR_final/zmzj/04_rmSamples

vcftools --vcf /gxfs_work1/fs1/work-geomar/smomw353/A_WGR_final/zmzj/03_coreGenes/03_coreGeneSNP.recode.vcf --remove rmSamples.txt --out 01_rmSamples \
--recode \
--recode-INFO-all

vcftools --vcf 01_rmSamples.recode.vcf --mac 1 --recode-INFO-all --recode --out 02_mac1

java -Xmx64g -jar /gxfs_home/geomar/smomw353/snpEff/snpEff/snpEff.jar zmv2 ./02_mac1.recode.vcf >ann_SNP.vcf

cat ann_SNP.vcf | awk '/^Chr/' | grep synonymous_variant | awk '{print $1 "\t" $2}' >03_synonymous_pos.txt

vcftools --vcf ./02_mac1.recode.vcf \
--positions  03_synonymous_pos.txt \
--recode \
--recode-INFO-all \
--out 03_synonymousSNP
