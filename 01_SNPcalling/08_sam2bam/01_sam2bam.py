#!/usr/bin/env python3
#ALI01	Zosmarsequencing_59_FD
import subprocess
#matches = "/Users/lyu/projectWS/02_formalScripts/01_dataList/oneline_edit_population_folder.txt"
#matches = "/sfs/fs1/work-geomar/smomw353/A_WGR_scripts/formalScripts/bbduk_trim/03_edit_population_folder.txt"
matches = "/sfs/fs1/work-geomar/smomw353/A_WGR_scripts/formalScripts/03_edit_population_folder.txt"
source = "/sfs/fs1/work-geomar/smomw353/01_WGR_sams"
f_log = open("commands.log", "w")

f_in = open(matches)

for line in f_in.readlines():
    columns = line.split()
    sample = columns[0]
    obj1 = open("{}_sam2bam.sh".format(sample), "w")
    obj1.write("#!/bin/bash\n")
    obj1.write("#PBS -l elapstim_req=10:00:00\n")
    obj1.write("#PBS -l memsz_job=11gb\n")
    obj1.write("#PBS -b 1\n")
    obj1.write("#PBS -l cpunum_job=1\n")
    obj1.write("#PBS -N {}_sam2bam\n".format(sample))
    obj1.write("#PBS -q clmedium\n")
    obj1.write("#PBS -o {}_sam2bam.stdout\n".format(sample))
    obj1.write("#PBS -e {}_sam2bam.stderr\n".format(sample))
    obj1.write("#PBS -m abe\n")
    obj1.write("#PBS -M pdyulei@163.com\n")
    obj1.write("cd /sfs/fs1/work-geomar/smomw353/A_WGR_scripts/formalScripts/08_sam2bam\n")

    cmd01 = "samtools view -Sb {}/{}.sam >{}/bam/{}.bam".format(source, sample, source, sample)
    f_log.write(cmd01 + "\n")
    obj1.write(cmd01 + "\n")

    cmd02 = "samtools sort {}/bam/{}.bam >{}/sort/{}_sort.bam".format(source, sample, source, sample)
    f_log.write(cmd02 + "\n")
    obj1.write(cmd02 + "\n")


    cmd03 = "gatk --java-options \"-Xmx10G\" MarkDuplicates -I {}/sort/{}_sort.bam -O {}/markdup/{}_markdup.bam -M {}/markdup/{}_metrics.txt -MAX_FILE_HANDLES 1000".format(source, sample, source, sample, source, sample)
    f_log.write(cmd03 + "\n")
    obj1.write(cmd03 + "\n")


    cmd04 = "samtools index {}/markdup/{}_markdup.bam".format(source, sample)
    f_log.write(cmd04 + "\n")
    obj1.write(cmd04 + "\n")

    obj1.write("/opt/nec/nqsv/bin/qstat -f ${PBS_JOBID/0:/}")
    obj1.write("\n")
    obj1.close()

    cmd = "chmod 700 {}_sam2bam.sh".format(sample)
    f_log.write(cmd + "\n")
    subprocess.call(cmd, shell = True)
    cmd = "qsub {}_sam2bam.sh".format(sample)
    f_log.write(cmd + "\n\n")
    subprocess.call(cmd, shell = True)

f_log.close()
f_in.close()
