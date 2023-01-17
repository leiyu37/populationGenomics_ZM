#!/usr/bin/env python3
import sys
import subprocess
#args = sys.argv

#result_path = args[1]
#pop_path = args[2]
#out_path = args[3]
#dmatrix_path = args[4]
#pmatrix_path = args[5]

result_path = "/Users/lyu/projectWS/00_finalRepeat/zmzj/06_Dsuite/atlantic/atlantic_BBAA.txt"
pop_path = "/Users/lyu/projectWS/00_finalRepeat/zmzj/06_Dsuite/atlantic/pop_name.txt"
extract_path = "./atlantic_extract.txt"
dmatrix_path = "./atlantic_dmatrix.txt"
pmatrix_path = "./atlantic_pmatrix.txt"

cmd = "head -1 {} >{}".format(result_path, extract_path)
subprocess.call(cmd, shell=True)

f_out = open(extract_path, "a")

pop_list = []
f_in = open(pop_path)
for line in f_in.readlines():
    pop = line.rstrip()
    pop_list.append(pop)
f_in.close()

for i in range(0, len(pop_list)-1):
    for j in range(i+1, len(pop_list)):
        s01 = pop_list[i]
        s02 = pop_list[j]

        d_list = []

        f_in = open(result_path)
        for line in f_in.readlines():
            if not line.startswith("P1"):
                columns = line.split()
                if {s01, s02} == {columns[1], columns[2]}:
                    d_list.append(float(columns[3]))
        f_in.close()


        f_in = open(result_path)
        for line in f_in.readlines():
            if not line.startswith("P1"):
                columns = line.split()
                if {s01, s02} == {columns[1], columns[2]} and float(columns[3]) == max(d_list):
                    f_out.write(line)
                    break
        f_in.close()

f_out.close()


f_d = open(dmatrix_path, "w")
f_p = open(pmatrix_path, "w")
f_d.write("POP")
f_p.write("POP")

for i in range(0, len(pop_list)):
    f_d.write("\t{}".format(pop_list[i]))
    f_p.write("\t{}".format(pop_list[i]))

f_d.write("\n")
f_p.write("\n")

for i in range(0, len(pop_list)):
    s01 = pop_list[i]
    f_d.write(s01)
    f_p.write(s01)

    for j in range(0, len(pop_list)):
        s02 = pop_list[j]
        d = "NA"
        p = "NA"
        f_in = open(extract_path)
        for line in f_in.readlines():
            if not line.startswith("P1"):
                columns = line.split()
                if (s01 == columns[1] and s02 == columns[2]) or (s01 == columns[2] and s02 == columns[1]):
                    d = columns[3]
                    p = columns[5]
                    break
        f_in.close()
        f_d.write("\t{}".format(d))
        f_p.write("\t{}".format(p))
    f_d.write("\n")
    f_p.write("\n")

f_d.close()
f_p.close()
