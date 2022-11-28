#!/bin/bash
#PBS -l elapstim_req=48:00:00
#PBS -l memsz_job=125gb
#PBS -b 1
#PBS -l cpunum_job=1
#PBS -N indexGenome
#PBS -q clmedium
#PBS -o indexGenome.stdout
#PBS -e indexGenome.stderr
#PBS -m abe
#PBS -M pdyulei@163.com
cd /sfs/fs1/work-geomar/smomw353/A_newGenome
bwa index -p zm_chr Zostera_marina.mainGenome.fasta

samtools faidx Zostera_marina.mainGenome.fasta

/sfs/fs6/home-geomar/smomw353/tools/gatk-4.1.1.0/gatk --java-options "-Xmx96G" CreateSequenceDictionary \
-R Zostera_marina.mainGenome.fasta

/usr/bin/nqsII/qstat -f ${PBS_JOBID/0:}
