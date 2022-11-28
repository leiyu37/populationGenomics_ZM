#!/usr/bin/env python3
#ALI01	Zosmarsequencing_59_FD
import subprocess
#matches = "/Users/lyu/projectWS/02_formalScripts/01_dataList/oneline_edit_population_folder.txt"
#matches = "/sfs/fs1/work-geomar/smomw353/A_WGR_scripts/formalScripts/oneline_edit_population_folder.txt"
matches = "/sfs/fs1/work-geomar/smomw353/A_WGR_scripts/formalScripts/03_edit_population_folder.txt"
source = "/sfs/fs1/work-geomar/smomw353/01_WGR_sams"
f_out = open("mappingRate.txt", "w")
f_log = open("commands.log", "w")
f_in = open(matches)

for line in f_in.readlines():
    columns = line.split()
    sample = columns[0]
    cmd = "samtools flagstat {}/{}.sam".format(source, sample)
    f_log.write(cmd + "\n")
    mappingRate = subprocess.getoutput(cmd)
    f_out.write(sample + " " + mappingRate + "\n\n")
f_log.close()
f_out.close()
f_in.close()
