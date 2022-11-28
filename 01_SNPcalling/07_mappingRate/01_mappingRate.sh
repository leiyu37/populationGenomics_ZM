#!/bin/bash
#PBS -l elapstim_req=48:00:00
#PBS -l memsz_job=30gb
#PBS -b 1
#PBS -l cpunum_job=1
#PBS -N mappingRate
#PBS -q clmedium
#PBS -o mappingRate.stdout
#PBS -e mappingRate.stderr
#PBS -m abe
#PBS -M pdyulei@163.com
cd /sfs/fs1/work-geomar/smomw353/A_WGR_scripts/formalScripts/07_mappingRate
chmod 700 01_mappingRate.py
./01_mappingRate.py

/opt/nec/nqsv/bin/qstat -f ${PBS_JOBID/0:/}
