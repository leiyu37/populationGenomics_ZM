#!/bin/bash
#SBATCH --job-name=hard02
#SBATCH --nodes=1
#SBATCH --tasks-per-node=1
#SBATCH --cpus-per-task=1
#SBATCH --mem=100G
#SBATCH --time=48:00:00
#SBATCH --output=hard02.out
#SBATCH --error=hard02.err
#SBATCH --partition=cluster

cd /gxfs_work1/fs1/work-geomar/smomw353/A_WGR_final/zmzj/02_hardFiltering

#/gxfs_home/geomar/smomw353/tools/gatk-4.1.1.0/gatk --java-options "-Xmx96G" SelectVariants \
#-R /sfs/fs1/work-geomar/smomw353/A_newGenome/Zostera_marina.mainGenome.fasta \
#-V ./01_indelDistance_snp.vcf \
#--select-type-to-include SNP \
#-O 02_rawSNP.vcf
#
#/gxfs_home/geomar/smomw353/tools/gatk-4.1.1.0/gatk --java-options "-Xmx96G" VariantsToTable \
#-R /sfs/fs1/work-geomar/smomw353/A_newGenome/Zostera_marina.mainGenome.fasta \
#-V 02_rawSNP.vcf \
#-O Rtable_snp.txt \
#-F CHROM -F POS -F FILTER -F QD -F MQ -F FS -F SOR -F MQRankSum -F ReadPosRankSum -F DP

#cat 02_rawSNP.vcf | grep nan | awk '{print $1 "\t" $2}' >nan_pos.txt
#
#vcftools --vcf 02_rawSNP.vcf \
#--exclude-positions nan_pos.txt \
#--recode \
#--recode-INFO-all \
#--out excludeNan
#
#/gxfs_home/geomar/smomw353/tools/gatk-4.1.1.0/gatk --java-options "-Xmx96G" VariantFiltration \
#-R /sfs/fs1/work-geomar/smomw353/A_newGenome/Zostera_marina.mainGenome.fasta \
#-V excludeNan.recode.vcf \
#-O 03_markfilter_snp.vcf \
#--filter-expression "QD < 10.0" \
#--filter-name "QD_S" \
#--filter-expression "FS > 60.0" \
#--filter-name "FS_L" \
#--filter-expression "SOR > 3.0" \
#--filter-name "SOR_L" \
#--filter-expression "MQ < 40.0" \
#--filter-name "MQ_L" \
#--filter-expression "MQRankSum > 2.5" \
#--filter-name "MQRankSum_L" \
#--filter-expression "MQRankSum < -2.5" \
#--filter-name "MQRankSum_S" \
#--filter-expression "ReadPosRankSum > 2.5" \
#--filter-name "ReadPosRankSum_L" \
#--filter-expression "ReadPosRankSum < -2.5" \
#--filter-name "ReadPosRankSum_S" \
#--filter-expression "DP > 11185.0" \
#--filter-name "DP_L"

/gxfs_home/geomar/smomw353/tools/gatk-4.1.1.0/gatk --java-options "-Xmx96G" SelectVariants \
-R /sfs/fs1/work-geomar/smomw353/A_newGenome/Zostera_marina.mainGenome.fasta \
-V 03_markfilter_snp.vcf \
-O 04_rmfilter_snp.vcf \
--exclude-filtered true

vcftools --vcf ./04_rmfilter_snp.vcf --min-alleles 2 --max-alleles 2 --minGQ 30 --minDP 5 --recode-INFO-all --recode --out 05_biAllelicHQ

chmod 700 ./filterHomo.py
./filterHomo.py
