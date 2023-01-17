#!/usr/bin/env python3
#.py sample

import subprocess
import sys
sample = sys.argv[1]

#vcf_path = "/Users/lyu/projectWS/00_finalRepeat/09_STRUCTURE/01_randomSelectSNP.vcf"
vcf_path = "/gxfs_work1/fs1/work-geomar/smomw353/A_WGR_final/03_coreGenes/03_coreGeneSNP.recode.vcf"


f_log = open("command_log.txt", "w")

cmd = "vcftools --vcf {0} --recode --recode-INFO-all --indv {1} --out {1}".format(vcf_path, sample)
f_log.write(cmd + "\n")
subprocess.call(cmd, shell=True)

for i in range(1,7):
    f_in = open("{}.recode.vcf".format(sample))
    f_vcf = open("./vcfs/{}_Chr{}.vcf".format(sample, i), "w")

    for line in f_in.readlines():
        if line.startswith("#"):
            f_vcf.write(line)
        elif line.startswith("Chr0{}".format(i)):
            columns = line.split()
            if len(columns) == 10:
                genotype = columns[9][0] + columns[9][2]

                if genotype == "11" or genotype == "01" or genotype == "10":
                    f_vcf.write(line)
    f_in.close()
    f_vcf.close()

    cmd = "bgzip -c ./vcfs/{0}_Chr{1}.vcf >./vcfs/{0}_Chr{1}.vcf.gz".format(sample, i)
    f_log.write(cmd + "\n")
    subprocess.call(cmd, shell=True)

f_log.close()
