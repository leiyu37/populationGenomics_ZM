#!/usr/bin/env python3
f_in = open("pca_scores.txt")
f_out = open("new_score.txt", "w")
for line in f_in.readlines():
    columns = line.split()
    pop = columns[0][:-2]
    f_out.write(line.rstrip()+"\t{}\n".format(pop))
f_out.close()
f_in.close()
