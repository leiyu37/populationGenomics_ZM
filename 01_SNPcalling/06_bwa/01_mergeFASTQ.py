#!/usr/bin/env python3
#ALI01	Zosmarsequencing_59_FD
import subprocess
#matches = "/Users/lyu/projectWS/02_formalScripts/01_dataList/03_edit_population_folder.txt"
#matches = "/Users/lyu/projectWS/02_formalScripts/01_dataList/oneline_edit_population_folder.txt"
matches = "/sfs/fs1/work-geomar/smomw353/A_WGR_scripts/formalScripts/bbduk_trim/03_edit_population_folder.txt"
#matches = "/sfs/fs1/work-geomar/smomw353/A_WGR_scripts/formalScripts/oneline_edit_population_folder.txt"
destination = "/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads"
f_log = open("01_mergeFASTQ.log", "w")
f_in = open(matches)

for line in f_in.readlines():
    columns = line.split()
    sample = columns[0]
    cmd01 = "rm -r {}/{}/{}".format(destination, sample, sample)
    cmd02 = "mkdir {}/{}/{}".format(destination, sample, sample)
    subprocess.call(cmd01, shell="True")
    subprocess.call(cmd02, shell="True")
    f_log.write(cmd01 + "\n")
    f_log.write(cmd02 + "\n")

    cmd = "ls " + "{}/".format(destination) + sample
    output = subprocess.getoutput(cmd)
    files = output.split("\n")
    cmd = "zcat"
    for file in files:
        if file[-3:] == ".gz":
            cmd += " {}/{}/{}".format(destination, sample, file)
    cmd += " >{}/{}/{}/{}.fastq".format(destination, sample, sample, sample)
    subprocess.call(cmd, shell="True")
    f_log.write(cmd + "\n")
    f_log.write("\n")
f_log.close()
f_in.close()
