#!/usr/bin/env python3
vcf_path = "/gxfs_work1/fs1/work-geomar/smomw353/popGenomics/A_WGR_final/04_rmSamples/03_synonymousSNP/02_synonymousSNP.recode.vcf"

i_sample_dict = {}
f_in = open(vcf_path)
for line in f_in.readlines():
    if line.startswith("#CHROM"):
        columns = line.split()
        for i in range(9, len(columns)):
            sample = columns[i]
            i_sample_dict[i] = sample
        break
f_in.close()

f_out = open("individualHET.txt", "w")
f_out.write("Sample\tPop\tF_het\n")
f_out.close()

n_sample = len(i_sample_dict.keys())

for i in range(9, n_sample + 9):
    n = 0
    n_het = 0
    f_in = open(vcf_path)
    for line in f_in.readlines():
        if not line.startswith("#"):
            columns = line.split()
            genotype = columns[i][0] + columns[i][2]
            if genotype in ["01", "10", "00", "11"]:
                n += 1
                if genotype in ["01", "10"]:
                    n_het += 1
    f_in.close()
    f_out = open("individualHET.txt", "a")
    f_het = n_het/n
    f_out.write("{}\t{}\t{}\n".format(i_sample_dict[i], i_sample_dict[i][:-2], f_het))
    f_out.close()
