#!/usr/bin/env python3
import subprocess
cmd = "chmod 700 ./missingRate.py"
subprocess.call(cmd, shell=True)

vcf_path = "/gxfs_work1/fs1/work-geomar/smomw353/A_WGR_final/03_coreGenes/03_coreGeneSNP.recode.vcf"
#vcf_path = "/Users/lyu/projectWS/00_WGR_20210512/03_SNPannotation/04_thin5000.recode.vcf"
f_in = open(vcf_path)
for line in f_in.readlines():
    if line.startswith("#CHROM"):
        columns = line.split()
        n = len(columns)
        break
f_in.close()

for i in range(9, n):

    f_bash = open("{}_mrate.sh".format(i), "w")
    f_bash.write("#!/bin/bash\n")
    f_bash.write("#SBATCH --job-name={}_mrate\n".format(i))
    f_bash.write("#SBATCH --nodes=1\n")
    f_bash.write("#SBATCH --tasks-per-node=1\n")
    f_bash.write("#SBATCH --cpus-per-task=1\n")
    f_bash.write("#SBATCH --mem=40G\n")
    f_bash.write("#SBATCH --time=01:00:00\n")
    f_bash.write("#SBATCH --output={}_mrate.out\n".format(i))
    f_bash.write("#SBATCH --error={}_mrate.err\n".format(i))
    f_bash.write("#SBATCH --partition=cluster\n")

    f_bash.write("cd /gxfs_work1/fs1/work-geomar/smomw353/A_WGR_final/04_rmSamples/02_missingRate\n")

    cmd = "./missingRate.py {} {}\n".format(vcf_path, i)
    f_bash.write(cmd)

    f_bash.close()

    cmd = "sbatch {}_mrate.sh".format(i)
    #subprocess.call(cmd, shell = True)
