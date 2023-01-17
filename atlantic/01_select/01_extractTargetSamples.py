#!/usr/bin/env python3
import subprocess

vcf_path = "/gxfs_work1/fs1/work-geomar/smomw353/A_WGR_final/04_rmSamples/03_synonymousSNP/02_synonymousSNP.recode.vcf"
pop_list = ["NC", "MA", "QU", "NN", "SW", "WN", "PO", "FR", "CZ"]

f_out = open("01_targetSamples.txt", "w")
f_in = open(vcf_path)
for line in f_in.readlines():
    if line.startswith("#CHROM"):
        columns = line.split()
        for i in range(9, len(columns)):
            if columns[i][:-2] in pop_list:
                f_out.write("{}\n".format(columns[i]))
        break
f_in.close()
f_out.close()

cmd = "vcftools --vcf {} --keep 01_targetSamples.txt --recode --recode-INFO-all --out 01_targetSamples".format(vcf_path)
subprocess.call(cmd, shell=True)
