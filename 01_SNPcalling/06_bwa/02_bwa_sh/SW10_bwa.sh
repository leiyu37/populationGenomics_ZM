#!/bin/bash
#PBS -l elapstim_req=48:00:00
#PBS -l memsz_job=30gb
#PBS -b 1
#PBS -l cpunum_job=1
#PBS -N SW10_bwa
#PBS -q clmedium
#PBS -o SW10_bwa.stdout
#PBS -e SW10_bwa.stderr
#PBS -m abe
#PBS -M pdyulei@163.com
cd /sfs/fs1/work-geomar/smomw353/A_newGenome
bwa mem -p -R "@RG\tID:SW10\tSM:SW10\tPL:illumina\tLB:lib\tPU:unit" -M zm_chr /sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/SW10/SW10/SW10.fastq >/sfs/fs1/work-geomar/smomw353/01_WGR_sams/SW10.sam
/opt/nec/nqsv/bin/qstat -f ${PBS_JOBID/0:/}
