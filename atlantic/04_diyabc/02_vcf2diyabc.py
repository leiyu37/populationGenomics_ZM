#!/usr/bin/env python3
import subprocess

vcf = "/Users/lyu/projectWS/00_finalRepeat/atlantic/04_diyabc/01_select/04_thin3000.recode.vcf"

cmd = "vcftools --vcf {} --out maf5 --recode --recode-INFO-all --maf 0.05".format(vcf)
subprocess.call(cmd, shell=True)

vcf = "./maf5.recode.vcf"

pop_group_dict = {"NC": "NCMA", "MA": "NCMA", "QU": "QU", "NN": "EA", "SW":"EA", "WN":"EA"}

group_i_dict = {}
f_in = open(vcf)
for line in f_in.readlines():
    if line.startswith("#CHROM"):
        columns = line.split()
        for i in range(9, len(columns)):
            pop = columns[i][:-2]
            if pop in pop_group_dict.keys():
                group = pop_group_dict[pop]
                if group in group_i_dict.keys():
                    group_i_dict[group].append(i)
                else:
                    group_i_dict[group] = []
                    group_i_dict[group].append(i)
        break
f_in.close()
print(group_i_dict)

i_sample_dict = {}
f_in = open(vcf)
for line in f_in.readlines():
    if line.startswith("#CHROM"):
        columns = line.split()
        for i in range(9, len(columns)):
            if columns[i][:-2] in pop_group_dict.keys():
                i_sample_dict[i] = columns[i]
        break
f_in.close()
print(i_sample_dict)

f_out = open("atlantic_diyabcInput.snp", "w")
f_out.write("Source file " + vcf + " <NM=1.0NF> <MAF=0.05>\n")
f_out.write("IND SEX POP")

f_in = open(vcf)
for line in f_in.readlines():
    if not line.startswith("#"):
        f_out.write(" A")
f_in.close()
f_out.write("\n")

for group in group_i_dict.keys():
    for i in group_i_dict[group]:
        f_out.write(i_sample_dict[i] + " 9 " + group)
        f_in = open(vcf)
        for line in f_in.readlines():
            if not line.startswith("#"):
                columns = line.split()
                genotype = columns[i][0] + columns[i][2]
                if genotype == "00":
                    f_out.write(" 2")
                elif genotype == "01" or genotype == "10":
                    f_out.write(" 1")
                elif genotype == "11":
                    f_out.write(" 0")
                else:
                    f_out.write(" 9")
        f_in.close()
        f_out.write("\n")
f_out.close()
