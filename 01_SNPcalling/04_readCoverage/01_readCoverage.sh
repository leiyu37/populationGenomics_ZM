#!/bin/bash
#PBS -l elapstim_req=48:00:00
#PBS -l memsz_job=125gb
#PBS -b 1
#PBS -l cpunum_job=1
#PBS -N coverage
#PBS -q clmedium
#PBS -o readCoverage.stdout
#PBS -e readCoverage.stderr
#PBS -m abe
#PBS -M pdyulei@163.com
cd /sfs/fs1/work-geomar/smomw353/A_WGR_scripts/formalScripts/04_readCoverage
chmod 700 readCoverage.py
./readCoverage.py

/usr/bin/nqsII/qstat -f ${PBS_JOBID/0:}
