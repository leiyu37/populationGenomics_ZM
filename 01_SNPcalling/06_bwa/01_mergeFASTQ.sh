#!/bin/bash
#PBS -l elapstim_req=48:00:00
#PBS -l memsz_job=125gb
#PBS -b 1
#PBS -l cpunum_job=1
#PBS -N mergeFASTQ
#PBS -q clmedium
#PBS -o mergeFASTQ.stdout
#PBS -e mergeFASTQ.stderr
#PBS -m abe
#PBS -M pdyulei@163.com
cd /sfs/fs1/work-geomar/smomw353/A_WGR_scripts/formalScripts/06_bwa
chmod 700 01_mergeFASTQ.py
./01_mergeFASTQ.py

/opt/nec/nqsv/bin/qstat -f ${PBS_JOBID/0:/}
