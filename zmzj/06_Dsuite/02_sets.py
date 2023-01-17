#!/usr/bin/env python3
import sys

args = sys.argv
vcf = args[1]

def sets(vcf):
    f_in = open(vcf)
    f_out = open("01_SETS.txt", "w")
    for line in f_in.readlines():
        if line.startswith("#CHROM"):
            columns = line.split()
            for i in range(9, len(columns)):
                sample = columns[i]
                if sample == "ZJ":
                    pop = "Outgroup"
                else:
                    pop = sample[:-2]
                f_out.write("{}\t{}\n".format(sample, pop))
            break
    f_in.close()
    f_out.close()


sets(vcf)
