#!/usr/bin/env python3

f_in = open("/gxfs_work1/fs1/work-geomar/smomw353/popGenomics/A_WGR_final/zmzj/04_rmSamples/03_synonymousSNP.recode.vcf")
f_out = open("sample_list.txt", "w")

for line in f_in.readlines():
    if line.startswith("#CHROM"):
        columns = line.split()
        for i in range(9, len(columns)):
            f_out.write("{}\n".format(columns[i]))
        break

f_in.close()
f_out.close()
