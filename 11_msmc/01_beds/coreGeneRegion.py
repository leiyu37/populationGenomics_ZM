#!/usr/bin/env python3
#the core genes in the six main chromosomes.
coreList = []
f_in = open("./coreGeneList.dat")
for line in f_in.readlines():
    gene = line.rstrip()
    if gene not in coreList:
        coreList.append(gene)
f_in.close()

f_in = open("./ZosmaV2_all.gff3")
f_out = open("01_coreLines.txt", "w")
for line in f_in.readlines():
    columns = line.split()
    if len(columns) == 9 and columns[2] == "gene" and line.startswith("Chr0"):
        gene = columns[-1].split(";")[0].split("=")[1]
        if gene in coreList:
            f_out.write(line)

f_in.close()
f_out.close()
