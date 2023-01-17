#!/usr/bin/env python3

f_in = open("/Users/lyu/projectWS/00_finalRepeat/20_SH/01_combine.txt")
f_out = open("01_format.txt", "w")

for line in f_in.readlines():
    if line.startswith("Sample"):
        f_out.write("{}\tClonemates\tSelfing\n".format(line.rstrip()))
    else:
        columns = line.split()
        sha = float(columns[-3])
        shb = float(columns[-2])
        sh = float(columns[-1])

        if sh > 0.95:
            clonemates = "Clonemates"
        else:
            clonemates = "Non-clonemates"

        if (sha > 0.95 and shb <= 0.95) or (shb > 0.95 and sha <= 0.95):
            selfing = "Selfing"
        else:
            selfing = "Non-selfing"
        f_out.write("{}\t{}\t{}\n".format(line.rstrip(), clonemates, selfing))

f_in.close()
f_out.close()
        
