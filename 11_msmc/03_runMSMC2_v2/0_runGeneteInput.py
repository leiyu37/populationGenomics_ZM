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

f_log = open("python_log.txt", "w")
for sample in sample_list:
    bash_name = "{}.sh".format(sample)
    f_bash = open(bash_name, "w")
    f_bash.write("#!/bin/bash\n")
    f_bash.write("#SBATCH --job-name={}\n".format(sample))
    f_bash.write("#SBATCH --nodes=1\n")
    f_bash.write("#SBATCH --tasks-per-node=1\n")
    f_bash.write("#SBATCH --cpus-per-task=6\n")
    f_bash.write("#SBATCH --mem=100G\n")
    f_bash.write("#SBATCH --time=02:00:00\n")
    f_bash.write("#SBATCH --output={}.out\n".format(sample))
    f_bash.write("#SBATCH --error={}.err\n".format(sample))
    f_bash.write("#SBATCH --partition=cluster\n")
    f_bash.write("cd {}\n".format(temp))

    for i in range(1,7):
        cmd = ""
        cmd += "./generate_multihetsep.py --mask=/gxfs_work1/fs1/work-geomar/smomw353/A_WGR_final/11_msmc2/01_beds/chr0{0}_gene.bed.gz --mask=/sfs/fs1/work-geomar/smomw353/A_WGR_scripts/formalScripts/15_msmc/no09/03_maskGenome/genomeMask/genome_Chr0{0}.mask.bed.gz".format(i)

        cmd += " --mask=/gxfs_work1/fs1/work-geomar/smomw353/A_WGR_final/11_msmc2/02_indvCov/{0}_Chr0{1}_mask.bed.gz /gxfs_work1/fs1/work-geomar/smomw353/A_WGR_final/11_msmc2/02_indVCF_v2/vcfs/{0}_Chr{1}.vcf.gz".format(sample, i)
        cmd += " >./{}_Chr{}.input".format(sample, i)
        f_bash.write(cmd + "\n\n")

    cmd = "/sfs/fs1/work-geomar/smomw353/A_WGR_scripts/formalScripts/15_msmc/no09/sample_09/msmc_1.1.0_linux64bit -t 6 -o {0} ./{0}_Chr1.input ./{0}_Chr2.input ./{0}_Chr3.input ./{0}_Chr4.input ./{0}_Chr5.input ./{0}_Chr6.input".format(sample)
    f_bash.write(cmd + "\n")
    f_bash.close()

    cmd = "sbatch {}.sh".format(sample)
    #subprocess.call(cmd, shell=True)
    f_log.write(cmd + "\n")
f_log.close()
