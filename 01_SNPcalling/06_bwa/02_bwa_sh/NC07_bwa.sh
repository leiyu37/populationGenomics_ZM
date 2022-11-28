#!/bin/bash
#PBS -l elapstim_req=48:00:00
#PBS -l memsz_job=30gb
#PBS -b 1
#PBS -l cpunum_job=1
#PBS -N NC07_bwa
#PBS -q clmedium
#PBS -o NC07_bwa.stdout
#PBS -e NC07_bwa.stderr
#PBS -m abe
#PBS -M pdyulei@163.com
cd /sfs/fs1/work-geomar/smomw353/A_newGenome
bwa mem -p -R "@RG\tID:NC07\tSM:NC07\tPL:illumina\tLB:lib\tPU:unit" -M zm_chr /sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/NC07/NC07/NC07.fastq >/sfs/fs1/work-geomar/smomw353/01_WGR_sams/NC07.sam
/opt/nec/nqsv/bin/qstat -f ${PBS_JOBID/0:/}
