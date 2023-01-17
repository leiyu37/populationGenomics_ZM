#!/usr/bin/env python3
import subprocess

vcf_path = "/Users/lyu/projectWS/00_finalRepeat/12_SNAPP_v4_formal/00_allSNPs/02_select02/04_thin3000.recode.vcf"

f_out = open("pops.txt", "w")
f_out.write("species\tsample\n")

f_in = open("01_targetSamples.txt")
for line in f_in.readlines():
    sample = line.rstrip()
    if sample == "ZJ":
        f_out.write("Zjaponica\tZJ\n")
    else:
        f_out.write("{}\t{}\n".format(sample[:-2], sample))
f_in.close()
f_out.close()

cmd = "ruby /Users/lyu/tools/SNAPP/prepare/snapp_prep.rb -v {} -t pops.txt -m 15000 -c example.con.txt -l 1500000".format(vcf_path)
subprocess.call(cmd, shell=True)
