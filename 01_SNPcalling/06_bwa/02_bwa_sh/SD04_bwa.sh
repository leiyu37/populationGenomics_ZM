#!/bin/bash
#PBS -l elapstim_req=48:00:00
#PBS -l memsz_job=30gb
#PBS -b 1
#PBS -l cpunum_job=1
#PBS -N SD04_bwa
#PBS -q clmedium
#PBS -o SD04_bwa.stdout
#PBS -e SD04_bwa.stderr
#PBS -m abe
#PBS -M pdyulei@163.com
cd /sfs/fs1/work-geomar/smomw353/A_newGenome
bwa mem -p -R "@RG\tID:SD04\tSM:SD04\tPL:illumina\tLB:lib\tPU:unit" -M zm_chr /sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/SD04/SD04/SD04.fastq >/sfs/fs1/work-geomar/smomw353/01_WGR_sams/SD04.sam
/opt/nec/nqsv/bin/qstat -f ${PBS_JOBID/0:/}
