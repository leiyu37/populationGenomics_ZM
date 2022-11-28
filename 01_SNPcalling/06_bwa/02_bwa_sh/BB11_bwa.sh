#!/bin/bash
#PBS -l elapstim_req=48:00:00
#PBS -l memsz_job=30gb
#PBS -b 1
#PBS -l cpunum_job=1
#PBS -N BB11_bwa
#PBS -q clmedium
#PBS -o BB11_bwa.stdout
#PBS -e BB11_bwa.stderr
#PBS -m abe
#PBS -M pdyulei@163.com
cd /sfs/fs1/work-geomar/smomw353/A_newGenome
bwa mem -p -R "@RG\tID:BB11\tSM:BB11\tPL:illumina\tLB:lib\tPU:unit" -M zm_chr /sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/BB11/BB11/BB11.fastq >/sfs/fs1/work-geomar/smomw353/01_WGR_sams/BB11.sam
/opt/nec/nqsv/bin/qstat -f ${PBS_JOBID/0:/}
