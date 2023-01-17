#!/usr/bin/env python3

list_f = open("./00_results.list")
f_out = open("r_input.txt", "w")
for l in list_f.readlines():
    name = l.rstrip()
    sample = l.split(".")[0]
    pop = sample[:-2]
    f_in = open(name)
    for line in f_in.readlines():
        if not line.startswith("time"):
            columns = line.split()
            if columns[2] != "inf":
                left = round(float(columns[1])/9.461883e-09, 2)
                right = round(float(columns[2])/9.461883e-09, 2)
                N = round(1/(float(columns[3])*2*9.461883e-09), 2)
                f_out.write(line.rstrip() + "\t{}\t{}\t{}\t{}\n".format(left, N, sample, pop))
                f_out.write(line.rstrip() + "\t{}\t{}\t{}\t{}\n".format(right, N, sample, pop))
            else:
                left = round(float(columns[1])/9.461883e-09, 2)
                N = round(1/(float(columns[3])*2*9.461883e-09), 2)
                f_out.write(line.rstrip() + "\t{}\t{}\t{}\t{}\n".format(left, N, sample, pop))
    f_in.close()
f_out.close()
