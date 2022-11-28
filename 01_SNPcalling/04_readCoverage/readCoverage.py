#!/usr/bin/env python3
#ALI01	Zosmarsequencing_59_FD
import subprocess
matches = "/sfs/fs1/work-geomar/smomw353/A_WGR_scripts/formalScripts/bbduk_trim/03_edit_population_folder.txt"
#matches = "/sfs/fs1/work-geomar/smomw353/A_WGR_scripts/formalScripts/04_readCoverage/oneline_edit_population_folder.txt"
destination = "/sfs/fs1/work-geomar/smomw353/A_WGR_scripts/formalScripts/04_readCoverage"
f_out = open(destination + "/" + "01_readCoverage.txt", "w")
f_log = open(destination + "/" + "01_readCoverage.log", "w")
f_in = open(matches)

for line in f_in.readlines():
    columns = line.split()
    sample = columns[0]
    folder = columns[1]

    cmd = "ls " + "/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/" + folder +"/Raw_Data"
    output = subprocess.getoutput(cmd)
    files = output.split("\n")
    i = 0
    for file in files:
        if file[-3:] == ".gz":
            i += 1
            cmd01 = "zcat /sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/{}/Raw_Data/{} | paste - - - - | cut -f 2 | tr -d '\\n' | wc -c".format(folder, file)
            f_log.write(cmd01 + "\n")
            rawNumBases = subprocess.getoutput(cmd01).strip()
            rawCoverage = round(int(rawNumBases)/260492111, 2)
            f_out.write("raw\t{}_{}\t{}\t{}\t{}\n".format(sample, i, file, rawNumBases, rawCoverage))

    cmd = "ls " + "/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/" + sample
    output = subprocess.getoutput(cmd)
    files = output.split("\n")
    i = 0
    for file in files:
        if file[-3:] == ".gz":
            i += 1
            cmd01 = "zcat /sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/{}/{} | paste - - - - | cut -f 2 | tr -d '\\n' | wc -c".format(sample, file)
            f_log.write(cmd01 + "\n")
            cleanNumBases = subprocess.getoutput(cmd01).strip()
            cleanCoverage = round(int(cleanNumBases)/260492111, 2)
            f_out.write("clean\t{}_{}\t{}\t{}\t{}\n".format(sample, i, file, cleanNumBases, cleanCoverage))
    f_log.write("\n")
f_log.close()
f_out.close()
f_in.close()
