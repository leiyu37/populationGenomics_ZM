#!/usr/bin/env python3
f_in = open("pca_scores.txt")
f_out = open("new_score.txt", "w")
for line in f_in.readlines():
    columns = line.split()
    pop = columns[0][:-2]
    if pop in ["QU", "MA", "NC", "NN", "SW", "WN"]:
        f_out.write(line.rstrip()+"\tAtlantic\tAtlantic\n")
    elif pop in ["PO", "FR", "CZ"]:
        f_out.write(line.rstrip()+"\tMed\tMed\n")
    else:
        f_out.write(line.rstrip()+"\t{}\tPacific\n".format(pop))
f_out.close()
f_in.close()
