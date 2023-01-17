#!/usr/bin/env python3
vcf_path = "./01_randomSelectSNP.vcf"

f_in = open(vcf_path)
f_out = open("indv_pop.txt", "w")

for line in f_in.readlines():
    if line.startswith("#CHROM"):
        columns = line.split()
        for i in range(9, len(columns)):
            sample = columns[i]
            pop = sample[:-2]
            f_out.write("{}\t{}\n".format(sample, pop))
        break
f_in.close()
f_out.close()
