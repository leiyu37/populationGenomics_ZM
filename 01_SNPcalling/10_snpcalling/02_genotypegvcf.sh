#!/bin/bash
#PBS -l elapstim_req=48:00:00
#PBS -l memsz_job=125gb
#PBS -b 1
#PBS -l cpunum_job=1
#PBS -N genotypegvcf
#PBS -q clmedium
#PBS -o genotypegvcf.stdout
#PBS -e genotypegvcf.stderr
#PBS -m abe
#PBS -M pdyulei@163.com
cd /sfs/fs1/work-geomar/smomw353/A_WGR_scripts/formalScripts/10_snpcalling
gatk --java-options "-Xmx96G" GenotypeGVCFs \
-R /sfs/fs1/work-geomar/smomw353/A_newGenome/Zostera_marina.mainGenome.fasta \
-V wgr_merge.g.vcf \
-O wgr_raw.vcf
/opt/nec/nqsv/bin/qstat -f ${PBS_JOBID/0:/}
