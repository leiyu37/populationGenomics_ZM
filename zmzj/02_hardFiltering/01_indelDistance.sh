#!/bin/bash
#PBS -l elapstim_req=48:00:00
#PBS -l memsz_job=125gb
#PBS -b 1
#PBS -l cpunum_job=1
#PBS -N indelDistance
#PBS -q clmedium
#PBS -o indelDistance.stdout
#PBS -e indelDistance.stderr
#PBS -m abe
#PBS -M pdyulei@163.com
cd /sfs/fs1/work-geomar/smomw353/A_addZJ_analysis/vcfs

bcftools filter --SnpGap 20 -o 01_indelDistance_snp.vcf -O v /sfs/fs1/work-geomar/smomw353/A_addZJ/vcf/addZJ_raw.vcf
