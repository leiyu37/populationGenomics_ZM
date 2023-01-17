#!/usr/bin/env python3

pacific_list = ["JN", "JS", "ALI", "ASL", "WAS", "BB", "SD"]

f_in = open("/Users/lyu/projectWS/00_finalRepeat/zmzj/06_Dsuite/01_SETS_BBAA.txt")
f_out = open("pacific_BBAA.txt", "w")

for line in f_in.readlines():
    if line.startswith("P1"):
        f_out.write(line)
    else:
        columns = line.split()
        if (columns[0] in pacific_list) and (columns[1] in pacific_list) and (columns[2] in pacific_list):
            f_out.write(line)

f_in.close()
f_out.close()
