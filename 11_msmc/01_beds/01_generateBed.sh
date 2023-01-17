#!/bin/bash
#SBATCH --job-name=bed
#SBATCH --nodes=1
#SBATCH --tasks-per-node=1
#SBATCH --cpus-per-task=1
#SBATCH --mem=100G
#SBATCH --time=48:00:00
#SBATCH --output=bed.out
#SBATCH --error=bed.err
#SBATCH --partition=cluster

cd /gxfs_work1/fs1/work-geomar/smomw353/A_WGR_final/11_msmc2/01_beds

chmod 700 ./coreGeneRegion.py
./coreGeneRegion.py

cat 01_coreLines.txt | awk '$3 == "gene" && $1 == "Chr01" {print $1"\t"$4-1"\t"$5-1}' | bedtools sort >chr01_gene.bed
bgzip -c chr01_gene.bed >chr01_gene.bed.gz
tabix -p bed chr01_gene.bed.gz

cat 01_coreLines.txt | awk '$3 == "gene" && $1 == "Chr02" {print $1"\t"$4-1"\t"$5-1}' | bedtools sort >chr02_gene.bed
bgzip -c chr02_gene.bed >chr02_gene.bed.gz
tabix -p bed chr02_gene.bed.gz

cat 01_coreLines.txt | awk '$3 == "gene" && $1 == "Chr03" {print $1"\t"$4-1"\t"$5-1}' | bedtools sort >chr03_gene.bed
bgzip -c chr03_gene.bed >chr03_gene.bed.gz
tabix -p bed chr03_gene.bed.gz

cat 01_coreLines.txt | awk '$3 == "gene" && $1 == "Chr04" {print $1"\t"$4-1"\t"$5-1}' | bedtools sort >chr04_gene.bed
bgzip -c chr04_gene.bed >chr04_gene.bed.gz
tabix -p bed chr04_gene.bed.gz

cat 01_coreLines.txt | awk '$3 == "gene" && $1 == "Chr05" {print $1"\t"$4-1"\t"$5-1}' | bedtools sort >chr05_gene.bed
bgzip -c chr05_gene.bed >chr05_gene.bed.gz
tabix -p bed chr05_gene.bed.gz

cat 01_coreLines.txt | awk '$3 == "gene" && $1 == "Chr06" {print $1"\t"$4-1"\t"$5-1}' | bedtools sort >chr06_gene.bed
bgzip -c chr06_gene.bed >chr06_gene.bed.gz
tabix -p bed chr06_gene.bed.gz
