#!/bin/bash
#PBS -l elapstim_req=48:00:00
#PBS -l memsz_job=30gb
#PBS -b 1
#PBS -l cpunum_job=1
#PBS -N WN06_bwa
#PBS -q clmedium
#PBS -o WN06_bwa.stdout
#PBS -e WN06_bwa.stderr
#PBS -m abe
#PBS -M pdyulei@163.com
cd /sfs/fs1/work-geomar/smomw353/A_newGenome
bwa mem -p -R "@RG\tID:WN06\tSM:WN06\tPL:illumina\tLB:lib\tPU:unit" -M zm_chr /sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/WN06/WN06/WN06.fastq >/sfs/fs1/work-geomar/smomw353/01_WGR_sams/WN06.sam
/opt/nec/nqsv/bin/qstat -f ${PBS_JOBID/0:/}
