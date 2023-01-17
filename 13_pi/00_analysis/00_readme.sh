#!/bin/bash
cat ./out/ALI_out.txt | awk 'NR==1' >header.txt
cat ./out/*_out.txt | awk '!/^CHROM/' >contents.txt
cat header.txt contents.txt >01_pi.txt
rm ./header.txt
rm ./contents.txt
