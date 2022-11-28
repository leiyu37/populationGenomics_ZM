#!/usr/bin/env python3
#Version 1.0
#Lei Yu Aug 18th, 2021
#Email: leiyu2010ouc@outlook.com
#sharedHet.py vcf_path sampleA sampleB p out_path

import sys
vcf_path = sys.argv[1]
sampleA = sys.argv[2]
sampleB = sys.argv[3]
p = float(sys.argv[4])
out_path = sys.argv[5]

#Define a function for the calculation.

def sharedHet(vcf_path, sampleA, sampleB, p, out_path):
    """
    Calculate n_avail, n_a, n_b, n_sh, SHa, SHb, SHc, and SHs.

    n_avail, for each locus in the vcf file, if both sampleA and sampleB have available genotype calls (not missing data), n_avail + 1.
    n_a, for each locus in the vcf file, if both sampleA and sampleB have available genotype calls (not missing data), and sampleA is heterozygous, n_a + 1.
    n_b, for each locus in the vcf file, if both sampleA and sampleB have available genotype calls (not missing data), and sampleB is heterozygous, n_b + 1.
    n_sh, for each locus in the vcf file, if both sampleA and sampleB have available genotype calls (not missing data), and both sampleA and sampleB are heterozygous, n_sh + 1.

    SHa = n_sh/n_a
    SHb = n_sh/n_b

    SHc = min(SHa, SHb) - p
    SHs = -(SHa - p) * (SHb - p)
    """

    sample_i_dict = {}
    f_in = open(vcf_path)
    for line in f_in.readlines():
        if line.startswith("#CHROM"):
            columns = line.split()
            for i in range(9, len(columns)):
                sample_i_dict[columns[i]] = i
            break
    f_in.close()

    n_avail = 0
    n_a = 0
    n_b = 0
    n_sh = 0

    f_in = open(vcf_path)
    for line in f_in.readlines():
        if not line.startswith("#"):
            columns = line.split()
            genoA = columns[sample_i_dict[sampleA]][0] + columns[sample_i_dict[sampleA]][2]
            genoB = columns[sample_i_dict[sampleB]][0] + columns[sample_i_dict[sampleB]][2]
            if (genoA in ["00", "01", "10", "11"]) and (genoB in ["00", "01", "10", "11"]):
                n_avail += 1
                if genoA == "01" or genoA == "10":
                    n_a += 1
                if genoB == "01" or genoB == "10":
                    n_b += 1
                if (genoA == "01" or genoA == "10") and (genoB == "01" or genoB == "10"):
                    n_sh += 1
    f_in.close()

    SHa = round(n_sh/n_a, 4)
    SHb = round(n_sh/n_b, 4)

    SHc = round(min(SHa, SHb) - p, 4)
    SHs = round(-(SHa - p) * (SHb - p), 4)

    f_out = open(out_path, "w")
    f_out.write("sampleA\tsampleB\tn_avail\tn_a\tn_b\tn_sh\tSHa\tSHb\tSHc\tSHs\n")
    f_out.write("{}\t{}\t{}\t{}\t{}\t{}\t{}\t{}\t{}\t{}\n".format(sampleA,sampleB,n_avail,n_a,n_b,n_sh,SHa,SHb,SHc,SHs))
    f_out.close()

#run the calculation
sharedHet(vcf_path, sampleA, sampleB, p, out_path)
