#!/usr/bin/env python3

f_in = open("01_combine.txt")
f_out = open("02_rmHeaders.txt", "w")
f_s = open("02_selfing.txt", "w")
f_c = open("02_clone.txt", "w")

n = 0
for line in f_in.readlines():
    n += 1
    if n == 1:
        f_out.write(line)
        f_c.write(line)
        f_s.write(line)
    else:
        if not line.startswith("sampleA"):
            f_out.write(line)
            columns = line.split()

            shc = float(columns[8])
            shs = float(columns[9])

            if shc > 0:
                f_c.write(line)
            if shs > 0:
                f_s.write(line)

f_in.close()
f_out.close()
f_c.close()
f_s.close()
