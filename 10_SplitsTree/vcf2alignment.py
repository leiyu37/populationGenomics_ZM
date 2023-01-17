#!/usr/bin/env python3
import random

vcf = "/Users/lyu/projectWS/00_finalRepeat/05_rmMissing/02_thin3000.recode.vcf"

i_sample_dict = {}
f_in = open(vcf)
for line in f_in.readlines():
    if line.startswith("#CHROM"):
        columns = line.split()
        for i in range(9, len(columns)):
            i_sample_dict[i] = columns[i]
        break
f_in.close()

f_out = open("01_alignment.fasta", "w")

for i in i_sample_dict.keys():
    f_out.write(">{}\n".format(i_sample_dict[i]))
    f_in = open(vcf)
    for line in f_in.readlines():
        if line.startswith("Chr0"):
            columns = line.split()
            ref = columns[3].upper()
            alt = columns[4].upper()
            genotype = columns[i][0] + columns[i][2]
            if genotype == "00":
                f_out.write(ref)
            elif genotype == "11":
                f_out.write(alt)
            elif genotype == "01" or genotype == "10":
                f_out.write(random.choice([alt, ref]))
            else:
                f_out.write("N")
    f_in.close()
    f_out.write("\n")
f_out.close()
