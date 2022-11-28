#!/usr/bin/env python3
f_in = open("/Users/lyu/projectWS/00_finalRepeat/04_rmSamples/01_sharedHet_v2/02_rmHeaders.txt")
f_out = open("reFormat.txt", "w")
f_out.write("sampleA\tsampleB\tn_avail\tn_a\tn_b\tn_sh\tSHa\tSHb\tSHc\n")
for line in f_in.readlines():
    if not line.startswith("sample"):
        columns = line.split()
        new = ""

        sha = float(columns[-4])
        shb = float(columns[-3])
        shc = round(min(sha, shb), 4)

        for i in range(0, len(columns) - 2):
            new += "{}\t".format(columns[i])
        f_out.write("{}{}\n".format(new, shc))
f_out.close()
f_in.close()
