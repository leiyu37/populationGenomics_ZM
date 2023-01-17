#!/usr/bin/env python3

sample_list = []

f_in = open("./r_input.txt")
for line in f_in.readlines():
    columns = line.split()
    sample = columns[6]
    if sample not in sample_list:
        sample_list.append(sample)
f_in.close()

f_out = open("00_new.txt", "w")
for sample in sample_list:
    line_list = []
    large_list = []

    f_in = open("./r_input.txt")
    i = 0
    for line in f_in.readlines():
        i += 1
        columns = line.split()
        if columns[6] == sample:
            line_list.append(i)
            esize = float(columns[5])
            if esize > 1000000:
                large_list.append(i)
    f_in.close()

    line_max = max(line_list)
    if large_list == []:
        large_max = 0
    else:
        large_max = max(large_list)

    f_in = open("./r_input.txt")
    i = 0

    for line in f_in.readlines():
        i += 1
        pop = line.split()[7]
        if pop in ["JS", "JN"]:
            region = "WP"
        elif pop in ["ALI", "ASL", "WAS", "BB", "SD"]:
            region = "EP"
        elif pop in ["NC", "MA", "QU"]:
            region = "WA"
        elif pop in ["NN", "SW", "WN"]:
            region = "EA"
        elif pop in ["PO", "FR", "CZ"]:
            region = "MID"

        if (large_max == 0) and (i in line_list):
            f_out.write("{}\t{}\n".format(line.rstrip(), region))
        elif large_max != 0:
            if i > large_max and i <= line_max:
                f_out.write("{}\t{}\n".format(line.rstrip(), region))
    f_in.close()


f_out.close()
