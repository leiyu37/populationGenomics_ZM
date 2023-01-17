#!/usr/bin/env python3
import subprocess
import sys

sample = sys.argv[1]
f_log = open("01_log.txt", "w")

bam = "/gxfs_work1/geomar/smomw353/00_WGR_bams/markdup/{}_markdup.bam".format(sample)
for i in range(1,7):
    cmd = "samtools depth -r Chr0{} {} | awk '{{sum += $3}} END {{print sum / NR}}'".format(i, bam)
    f_log.write(cmd + "\n")
    mean_cov = subprocess.getoutput(cmd)
    cmd = "samtools mpileup -q 20 -Q 20 -C 50 -u -r Chr0{0} -f /sfs/fs1/work-geomar/smomw353/A_newGenome/Zostera_marina.mainGenome.fasta {1} | bcftools call -c -V indels | ./bamCaller.py {2} ./{3}_Chr0{0}_mask.bed.gz | gzip -c >./temp_{3}_Chr{0}.vcf.gz".format(i, bam, mean_cov, sample)
    f_log.write(cmd + "\n\n")
    subprocess.call(cmd, shell=True)
f_log.close()
