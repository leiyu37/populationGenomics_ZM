#!/usr/bin/env python3
import subprocess
vcf_path = "/gxfs_work1/fs1/work-geomar/smomw353/A_WGR_final/03_coreGenes/03_coreGeneSNP.recode.vcf"
#vcf_path = "/Users/lyu/projectWS/00_WGR_20210512/03_SNPannotation/04_thin5000.recode.vcf"
cmd = "chmod 700 ./sharedHet.py"
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
    for i in range(0, len(sample_list) - 1):
        for j in range(i+1, len(sample_list)):
            sample01 = sample_list[i]
            sample02 = sample_list[j]
            f_bash = open("{}_{}.sh".format(sample01, sample02), "w")

            f_bash.write("#!/bin/bash\n")
            f_bash.write("#SBATCH --job-name={}_{}\n".format(sample01, sample02))
            f_bash.write("#SBATCH --nodes=1\n")
            f_bash.write("#SBATCH --tasks-per-node=1\n")
            f_bash.write("#SBATCH --cpus-per-task=1\n")
            f_bash.write("#SBATCH --mem=40G\n")
            f_bash.write("#SBATCH --time=08:00:00\n")
            f_bash.write("#SBATCH --output={}_{}.out\n".format(sample01, sample02))
            f_bash.write("#SBATCH --error={}_{}.err\n".format(sample01, sample02))
            f_bash.write("#SBATCH --partition=cluster\n")
            f_bash.write("cd /gxfs_work1/fs1/work-geomar/smomw353/A_WGR_final/04_rmSamples/01_sharedHet\n")
            f_bash.write("./sharedHet.py {0} {1} {2} 0.95 ./{1}_{2}_sharedHet.txt\n".format(vcf_path, sample01,sample02))

            f_bash.close()
            cmd = "sbatch {}_{}.sh".format(sample01, sample02)
            #subprocess.call(cmd, shell=True)
