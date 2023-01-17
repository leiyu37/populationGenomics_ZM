#!/bin/bash
cat /Users/lyu/projectWS/00_finalRepeat/20_SH/output/ALI01_ALI02_SH.txt | awk 'NR==1' >header.txt
cat ./output/*_SH.txt | awk '!/^SampleA/' >contents.txt
cat header.txt contents.txt >01_combine.txt
rm ./header.txt
rm ./contents.txt
