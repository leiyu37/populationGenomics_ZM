#!/usr/bin/env python3
import subprocess
import os

vcf_path = "/gxfs_work1/fs1/work-geomar/smomw353/A_WGR_final/05_rmMissing/02_thin3000.recode.vcf"

sample_list = []

f_in = open(vcf_path)

for line in f_in.readlines():
    if line.startswith("#CHROM"):
        columns = line.split()
        for i in range(9, len(columns)):
            sample = columns[i]
            if sample not in sample_list:
                sample_list.append(sample)
        break
    
f_in.close()

temp = os.getcwd()

cmd = "rm -r {}/vcfs".format(temp)
subprocess.call(cmd, shell=True)

cmd = "mkdir {}/vcfs".format(temp)
subprocess.call(cmd, shell=True)

for sample in sample_list:
    bash_name = "{}.sh".format(sample)
    f_bash = open(bash_name, "w")
    f_bash.write("#!/bin/bash\n")
    f_bash.write("#SBATCH --job-name=gv{}\n".format(sample))
    f_bash.write("#SBATCH --nodes=1\n")
    f_bash.write("#SBATCH --tasks-per-node=1\n")
    f_bash.write("#SBATCH --cpus-per-task=1\n")
    f_bash.write("#SBATCH --mem=100G\n")
    f_bash.write("#SBATCH --time=48:00:00\n")
    f_bash.write("#SBATCH --output={}.out\n".format(sample))
    f_bash.write("#SBATCH --error={}.err\n".format(sample))
    f_bash.write("#SBATCH --partition=cluster\n")
    f_bash.write("cd {}\n".format(temp))

    f_bash.write("chmod 700 ./indVCF.py\n")
    f_bash.write("./indVCF.py {}\n".format(sample))
    f_bash.close()

    cmd = "sbatch {}.sh".format(sample)
    #subprocess.call(cmd, shell=True)
