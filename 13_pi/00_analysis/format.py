#!/usr/bin/env python3
import sys

in_path = sys.argv[1]
out_path = sys.argv[2]
pop = sys.argv[3]

f_out = open(out_path, "w")
f_out.write("CHROM\tN_total\tPI_sum\tPI\tPopulation\n")

chrom_list = ["Chr01", "Chr02", "Chr03", "Chr04", "Chr05", "Chr06"]

for chrom in chrom_list:
    n_total = 0
    pi_sum = 0
    f_in = open(in_path)
    for line in f_in.readlines():
        columns = line.split()
        if columns[0] == chrom:
            n_total += 1
            pi_sum += float(columns[2])
    f_out.write("{}\t{}\t{}\t{}\t{}\n".format(chrom, n_total, pi_sum, pi_sum/n_total, pop))
    f_in.close()
f_out.close()
