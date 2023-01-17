#!/usr/bin/env python3
import subprocess

def getDict(vcf_path):
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
    return pop_sample_dict

vcf = "/gxfs_work1/fs1/work-geomar/smomw353/popGenomics/A_WGR_final/05_rmMissing/01_rmMissing.recode.vcf"

f_log = open("log.txt", "w")

cmd = "cat {} | head -2000 >temp.vcf".format(vcf)
subprocess.call(cmd, shell=True)
f_log.write(cmd + "\n")

pop_sample_dict = getDict("temp.vcf")

cmd = "rm temp.vcf"
subprocess.call(cmd, shell=True)
f_log.write(cmd + "\n")

for pop in pop_sample_dict.keys():
    f_out = open("{}_batchPI.sh".format(pop), "w")
    f_out.write("#!/bin/bash\n")
    f_out.write("#SBATCH --job-name={}_sitepi\n".format(pop))
    f_out.write("#SBATCH --nodes=1\n")
    f_out.write("#SBATCH --tasks-per-node=1\n")
    f_out.write("#SBATCH --cpus-per-task=1\n")
    f_out.write("#SBATCH --mem=40G\n")
    f_out.write("#SBATCH --time=01:00:00\n")
    f_out.write("#SBATCH --output={}_sitepi.out\n".format(pop))
    f_out.write("#SBATCH --error={}_sitepi.err\n".format(pop))
    f_out.write("#SBATCH --partition=cluster\n")

    f_out.write("cd /gxfs_work1/fs1/work-geomar/smomw353/popGenomics/A_WGR_final/19_pi\n")


    vcf_string = "vcftools --vcf {} --recode --recode-INFO-all --out {}".format(vcf, pop)

    for sample in pop_sample_dict[pop]:
        vcf_string += " --indv {}".format(sample)
    f_out.write("{}\n".format(vcf_string))

    vcf_string = "vcftools --vcf {0}.recode.vcf --site-pi --out {0}_sitepi \n".format(pop)
    f_out.write("{}\n".format(vcf_string))
    f_out.close()


    cmd = "sbatch {}_batchPI.sh".format(pop)
    #subprocess.call(cmd, shell=True)
    f_log.write(cmd + "\n")

f_log.close()
