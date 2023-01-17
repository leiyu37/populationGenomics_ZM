#!/usr/bin/env python3
import subprocess
import os
temp = os.getcwd()

cmd = "rm -r ./output"
subprocess.call(cmd, shell = True)

cmd = "mkdir ./output"
subprocess.call(cmd, shell = True)

vcf_path = "/gxfs_work1/fs1/work-geomar/smomw353/popGenomics/A_WGR_final/03_coreGenes/03_coreGeneSNP.recode.vcf"

cmd = "chmod 700 ./similarity.py"
subprocess.call(cmd, shell=True)


pop_sample_dict = {}

f_in = open(vcf_path)

for line in f_in.readlines():
    if line.startswith("#CHROM"):
        columns = line.split()
        for i in range(9, len(columns)):
            sample = columns[i]
            pop = sample[:-2]
            if pop in pop_sample_dict.keys():
                pop_sample_dict[pop].append(sample)
            else:
                pop_sample_dict[pop] = []
                pop_sample_dict[pop].append(sample)
        break
f_in.close()

for pop in pop_sample_dict.keys():
    sample_list = pop_sample_dict[pop]
    f_bash = open("{}.sh".format(pop), "w")
    f_bash.write("#!/bin/bash\n")
    f_bash.write("#SBATCH --job-name=SH_{}\n".format(pop))
    f_bash.write("#SBATCH --nodes=1\n")
    f_bash.write("#SBATCH --tasks-per-node=1\n")
    f_bash.write("#SBATCH --cpus-per-task=1\n")
    f_bash.write("#SBATCH --mem=40G\n")
    f_bash.write("#SBATCH --time=48:00:00\n")
    f_bash.write("#SBATCH --output=SH_{}.out\n".format(pop))
    f_bash.write("#SBATCH --error=SH_{}.err\n".format(pop))
    f_bash.write("#SBATCH --partition=cluster\n")
    f_bash.write("cd {}\n".format(temp))
    for i in range(0, len(sample_list) - 1):
        for j in range(i+1, len(sample_list)):
            sample01 = sample_list[i]
            sample02 = sample_list[j]
            f_bash.write("./similarity.py {0} {1} {2} ./output/{1}_{2}_SH.txt\n".format(vcf_path, sample01,sample02))

    f_bash.write("\n")
    f_bash.close()
    cmd = "sbatch {}.sh".format(pop)
    #subprocess.call(cmd, shell=True)
