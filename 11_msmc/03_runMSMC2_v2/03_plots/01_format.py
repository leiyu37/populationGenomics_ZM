#!/usr/bin/env python3

f_in = open("./r_input.txt")
f_out = open("new_r_input.txt", "w")

for line in f_in.readlines():
    columns = line.split()
    pop = columns[7]

    if pop in ["JN", "JS"]:
        code = "Pacific_Japan"
    elif pop in ["ALI", "ASL"]:
        code = "Pacific_Alaska"
    elif pop in ["WAS", "BB", "SD"]:
        code = "Pacific_NE"
    elif pop in ["NC", "MA", "QU"]:
        code = "Atlantic_NW"
    elif pop in ["NN", "SW", "WN"]:
        code = "Atlantic_NE"
    elif pop in ["PO", "FR", "CZ"]:
        code = "Med"
    
    f_out.write("{}\t{}\n".format(line.rstrip(), code))
f_in.close()
f_out.close()
