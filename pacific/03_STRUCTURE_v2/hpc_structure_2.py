#!/usr/bin/env python3
import subprocess
import os
temp = os.getcwd()

f_log = open("python_log_2.txt", "w")

for k in range(6,8):
	for i in range(1,11):
		bash_name = "k{}_r{}.sh".format(k, i)
		f_bash = open(bash_name, "w")
		f_bash.write("#!/bin/bash\n")
		f_bash.write("#SBATCH --job-name=P2{}_{}\n".format(k, i))
		f_bash.write("#SBATCH --nodes=1\n")
		f_bash.write("#SBATCH --tasks-per-node=1\n")
		f_bash.write("#SBATCH --cpus-per-task=1\n")
		f_bash.write("#SBATCH --mem=20G\n")
		f_bash.write("#SBATCH --time=48:00:00\n")
		f_bash.write("#SBATCH --output={}_{}.out\n".format(k, i))
		f_bash.write("#SBATCH --error={}_{}.err\n".format(k, i))
		f_bash.write("#SBATCH --partition=cluster\n")

		f_bash.write("cd {}/results\n".format(temp))
		f_bash.write("structure -m ../mainparams -e ../extraparams -K {} -i ../pacific_str.txt -o k{}_run_{} -D {}\n".format(k, k, i, i))
		f_bash.close()

		cmd = "sbatch k{}_r{}.sh".format(k, i)
		#subprocess.call(cmd, shell=True)
		f_log.write(cmd + "\n")
f_log.close()