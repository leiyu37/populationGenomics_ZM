#!/usr/bin/env python3
#vcf_path = "/sfs/fs1/work-geomar/smomw353/00_a_WGR_20200508/results/06_rmLowGQDP.recode.vcf"
#vcf_path = "/Users/lyu/projectWS/00_homeOffice/00_a_WGR_20200508/12_rmSiteMissing.recode.vcf"
import sys
vcf_path = sys.argv[1]
i = int(sys.argv[2])

def missingRate(vcf_path, i):
    f_in = open(vcf_path)
    for line in f_in.readlines():
        if line.startswith("#CHROM"):
            columns = line.split()
            sample_name = columns[i]
            break
    f_in.close()

    n_snp = 0
    n_missing = 0

    f_in = open(vcf_path)
    for line in f_in.readlines():
        if not line.startswith("#"):
            n_snp += 1
            columns = line.split()
            genotype = columns[i][0] + columns[i][2]
            if genotype not in ["00", "01", "10", "11"]:
                n_missing += 1
    f_in.close()

    f_out = open("{}_missingRate.txt".format(sample_name), "w")
    f_out.write("{}\t{}\n".format(sample_name, n_missing/n_snp))
    f_out.close()
missingRate(vcf_path, i)
