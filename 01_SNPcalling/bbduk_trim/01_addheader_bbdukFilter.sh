#!/bin/bash
#PBS -l elapstim_req=48:00:00
#PBS -l memsz_job=125gb
#PBS -b 1
#PBS -l cpunum_job=1
#PBS -N bbduk_trim
#PBS -q clmedium
#PBS -o bbduk_trim.stdout
#PBS -e bbduk_trim.stderr
#PBS -m abe
#PBS -M pdyulei@163.com
cd /sfs/fs1/work-geomar/smomw353/A_WGR_scripts/formalScripts/bbduk_trim

#1	ALI01	Zosmarsequencing_59_FD	12003.3.232794.AGAGCCT-AAGGCTC.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_59_FD/Raw_Data/12003.3.232794.AGAGCCT-AAGGCTC.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/ALI01/clean_12003.3.232794.AGAGCCT-AAGGCTC.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#2	ALI01	Zosmarsequencing_59_FD	12214.1.245761.AGAGCCT-AAGGCTC.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_59_FD/Raw_Data/12214.1.245761.AGAGCCT-AAGGCTC.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/ALI01/clean_12214.1.245761.AGAGCCT-AAGGCTC.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	ALI02	Zosmarsequencing_56_FD	12003.7.232834.TCTCTTC-GGAAGAG.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_56_FD/Raw_Data/12003.7.232834.TCTCTTC-GGAAGAG.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/ALI02/clean_12003.7.232834.TCTCTTC-GGAAGAG.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#2	ALI02	Zosmarsequencing_56_FD	12214.4.245791.TCTCTTC-GGAAGAG.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_56_FD/Raw_Data/12214.4.245791.TCTCTTC-GGAAGAG.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/ALI02/clean_12214.4.245791.TCTCTTC-GGAAGAG.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	ALI03	Zosmarsequencing_57_FD	12003.4.232804.GAGGACT-AAGTCCT.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_57_FD/Raw_Data/12003.4.232804.GAGGACT-AAGTCCT.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/ALI03/clean_12003.4.232804.GAGGACT-AAGTCCT.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#2	ALI03	Zosmarsequencing_57_FD	12214.2.245771.GAGGACT-AAGTCCT.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_57_FD/Raw_Data/12214.2.245771.GAGGACT-AAGTCCT.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/ALI03/clean_12214.2.245771.GAGGACT-AAGTCCT.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	ALI04	Zosmarsequencing_62_FD	12003.8.232844.AGAATGC-GGCATTC.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_62_FD/Raw_Data/12003.8.232844.AGAATGC-GGCATTC.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/ALI04/clean_12003.8.232844.AGAATGC-GGCATTC.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#2	ALI04	Zosmarsequencing_62_FD	12214.5.245801.AGAATGC-GGCATTC.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_62_FD/Raw_Data/12214.5.245801.AGAATGC-GGCATTC.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/ALI04/clean_12214.5.245801.AGAATGC-GGCATTC.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	ALI05	Zosmarsequencing_63_FD	12003.4.232804.GCTGGAT-AATCCAG.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_63_FD/Raw_Data/12003.4.232804.GCTGGAT-AATCCAG.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/ALI05/clean_12003.4.232804.GCTGGAT-AATCCAG.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#2	ALI05	Zosmarsequencing_63_FD	12214.2.245771.GCTGGAT-AATCCAG.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_63_FD/Raw_Data/12214.2.245771.GCTGGAT-AATCCAG.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/ALI05/clean_12214.2.245771.GCTGGAT-AATCCAG.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	ALI06	Zosmarsequencing_60_FD	12002.6.232743.AGCAAGC-TGCTTGC.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_60_FD/Raw_Data/12002.6.232743.AGCAAGC-TGCTTGC.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/ALI06/clean_12002.6.232743.AGCAAGC-TGCTTGC.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#2	ALI06	Zosmarsequencing_60_FD	12233.3.246452.AGCAAGC-TGCTTGC.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_60_FD/Raw_Data/12233.3.246452.AGCAAGC-TGCTTGC.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/ALI06/clean_12233.3.246452.AGCAAGC-TGCTTGC.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	ALI07	Zosmarsequencing_61_FD	12003.4.232804.CGACCAT-AATGGTC.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_61_FD/Raw_Data/12003.4.232804.CGACCAT-AATGGTC.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/ALI07/clean_12003.4.232804.CGACCAT-AATGGTC.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#2	ALI07	Zosmarsequencing_61_FD	12214.2.245771.CGACCAT-AATGGTC.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_61_FD/Raw_Data/12214.2.245771.CGACCAT-AATGGTC.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/ALI07/clean_12214.2.245771.CGACCAT-AATGGTC.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	ALI09	Zosmarsequencing_26_FD	12002.4.232721.TCGGTTA-GTAACCG.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_26_FD/Raw_Data/12002.4.232721.TCGGTTA-GTAACCG.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/ALI09/clean_12002.4.232721.TCGGTTA-GTAACCG.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#2	ALI09	Zosmarsequencing_26_FD	12233.1.246430.TCGGTTA-GTAACCG.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_26_FD/Raw_Data/12233.1.246430.TCGGTTA-GTAACCG.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/ALI09/clean_12233.1.246430.TCGGTTA-GTAACCG.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	ALI10	Zosmarsequencing_24_FD	12003.4.232804.CACGTTG-ACAACGT.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_24_FD/Raw_Data/12003.4.232804.CACGTTG-ACAACGT.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/ALI10/clean_12003.4.232804.CACGTTG-ACAACGT.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#2	ALI10	Zosmarsequencing_24_FD	12214.2.245771.CACGTTG-ACAACGT.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_24_FD/Raw_Data/12214.2.245771.CACGTTG-ACAACGT.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/ALI10/clean_12214.2.245771.CACGTTG-ACAACGT.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	ALI11	Zosmarsequencing_25_FD	12002.4.232721.GTTCAAC-GGTTGAA.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_25_FD/Raw_Data/12002.4.232721.GTTCAAC-GGTTGAA.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/ALI11/clean_12002.4.232721.GTTCAAC-GGTTGAA.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#2	ALI11	Zosmarsequencing_25_FD	12233.1.246430.GTTCAAC-GGTTGAA.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_25_FD/Raw_Data/12233.1.246430.GTTCAAC-GGTTGAA.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/ALI11/clean_12233.1.246430.GTTCAAC-GGTTGAA.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	ALI12	Zosmarsequencing_29_FD	12003.4.232804.CAGAGTG-ACACTCT.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_29_FD/Raw_Data/12003.4.232804.CAGAGTG-ACACTCT.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/ALI12/clean_12003.4.232804.CAGAGTG-ACACTCT.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#2	ALI12	Zosmarsequencing_29_FD	12214.2.245771.CAGAGTG-ACACTCT.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_29_FD/Raw_Data/12214.2.245771.CAGAGTG-ACACTCT.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/ALI12/clean_12214.2.245771.CAGAGTG-ACACTCT.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	ALI16	Zosmarsequencing_30_FD	12002.6.232743.GGATACC-TGGTATC.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_30_FD/Raw_Data/12002.6.232743.GGATACC-TGGTATC.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/ALI16/clean_12002.6.232743.GGATACC-TGGTATC.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#2	ALI16	Zosmarsequencing_30_FD	12233.3.246452.GGATACC-TGGTATC.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_30_FD/Raw_Data/12233.3.246452.GGATACC-TGGTATC.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/ALI16/clean_12233.3.246452.GGATACC-TGGTATC.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	ASL01	Zosmarsequencing_3_FD	12003.3.232794.GAGCTCA-TTGAGCT.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_3_FD/Raw_Data/12003.3.232794.GAGCTCA-TTGAGCT.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/ASL01/clean_12003.3.232794.GAGCTCA-TTGAGCT.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#2	ASL01	Zosmarsequencing_3_FD	12214.1.245761.GAGCTCA-TTGAGCT.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_3_FD/Raw_Data/12214.1.245761.GAGCTCA-TTGAGCT.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/ASL01/clean_12214.1.245761.GAGCTCA-TTGAGCT.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	ASL02	Zosmarsequencing_FD	12003.3.232794.ATAGCGG-ACCGCTA.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_FD/Raw_Data/12003.3.232794.ATAGCGG-ACCGCTA.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/ASL02/clean_12003.3.232794.ATAGCGG-ACCGCTA.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#2	ASL02	Zosmarsequencing_FD	12214.1.245761.ATAGCGG-ACCGCTA.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_FD/Raw_Data/12214.1.245761.ATAGCGG-ACCGCTA.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/ASL02/clean_12214.1.245761.ATAGCGG-ACCGCTA.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	ASL03	Zosmarsequencing_2_FD	12513.6.261863.CAGTCCA-TTGGACT.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_2_FD/Raw_Data/12513.6.261863.CAGTCCA-TTGGACT.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/ASL03/clean_12513.6.261863.CAGTCCA-TTGGACT.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	ASL04	Zosmarsequencing_66_FD	12479.7.259974.CAGCGAT-AATCGCT.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_66_FD/Raw_Data/12479.7.259974.CAGCGAT-AATCGCT.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/ASL04/clean_12479.7.259974.CAGCGAT-AATCGCT.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	ASL05	Zosmarsequencing_64_FD	12479.7.259974.GTAGAGC-TGCTCTA.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_64_FD/Raw_Data/12479.7.259974.GTAGAGC-TGCTCTA.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/ASL05/clean_12479.7.259974.GTAGAGC-TGCTCTA.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	ASL06	Zosmarsequencing_65_FD	12002.4.232721.CTGACAC-TGTGTCA.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_65_FD/Raw_Data/12002.4.232721.CTGACAC-TGTGTCA.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/ASL06/clean_12002.4.232721.CTGACAC-TGTGTCA.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#2	ASL06	Zosmarsequencing_65_FD	12233.1.246430.CTGACAC-TGTGTCA.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_65_FD/Raw_Data/12233.1.246430.CTGACAC-TGTGTCA.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/ASL06/clean_12233.1.246430.CTGACAC-TGTGTCA.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	ASL07	Zosmarsequencing_69_FD	12003.4.232804.CCAGTGT-AACACTG.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_69_FD/Raw_Data/12003.4.232804.CCAGTGT-AACACTG.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/ASL07/clean_12003.4.232804.CCAGTGT-AACACTG.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#2	ASL07	Zosmarsequencing_69_FD	12214.2.245771.CCAGTGT-AACACTG.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_69_FD/Raw_Data/12214.2.245771.CCAGTGT-AACACTG.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/ASL07/clean_12214.2.245771.CCAGTGT-AACACTG.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	ASL08	Zosmarsequencing_70_FD	12003.4.232804.TGTACAC-GGTGTAC.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_70_FD/Raw_Data/12003.4.232804.TGTACAC-GGTGTAC.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/ASL08/clean_12003.4.232804.TGTACAC-GGTGTAC.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#2	ASL08	Zosmarsequencing_70_FD	12214.2.245771.TGTACAC-GGTGTAC.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_70_FD/Raw_Data/12214.2.245771.TGTACAC-GGTGTAC.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/ASL08/clean_12214.2.245771.TGTACAC-GGTGTAC.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	ASL09	Zosmarsequencing_67_FD	12003.5.232814.TCGCTGT-AACAGCG.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_67_FD/Raw_Data/12003.5.232814.TCGCTGT-AACAGCG.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/ASL09/clean_12003.5.232814.TCGCTGT-AACAGCG.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	ASL10	Zosmarsequencing_68_FD	12003.5.232814.AGCTAAC-GGTTAGC.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_68_FD/Raw_Data/12003.5.232814.AGCTAAC-GGTTAGC.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/ASL10/clean_12003.5.232814.AGCTAAC-GGTTAGC.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	ASL11	Zosmarsequencing_72_FD	12513.6.261863.GTCAGTT-CAACTGA.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_72_FD/Raw_Data/12513.6.261863.GTCAGTT-CAACTGA.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/ASL11/clean_12513.6.261863.GTCAGTT-CAACTGA.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	ASL12	Zosmarsequencing_73_FD	12003.8.232844.ACGGAAC-TGTTCCG.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_73_FD/Raw_Data/12003.8.232844.ACGGAAC-TGTTCCG.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/ASL12/clean_12003.8.232844.ACGGAAC-TGTTCCG.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#2	ASL12	Zosmarsequencing_73_FD	12214.5.245801.ACGGAAC-TGTTCCG.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_73_FD/Raw_Data/12214.5.245801.ACGGAAC-TGTTCCG.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/ASL12/clean_12214.5.245801.ACGGAAC-TGTTCCG.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	BB01	Zosmarsequencing_39_FD	12003.5.232814.TTGTCGG-ACCGACA.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_39_FD/Raw_Data/12003.5.232814.TTGTCGG-ACCGACA.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/BB01/clean_12003.5.232814.TTGTCGG-ACCGACA.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	BB02	Zosmarsequencing_42_FD	12479.7.259974.GCCTATC-TGATAGG.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_42_FD/Raw_Data/12479.7.259974.GCCTATC-TGATAGG.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/BB02/clean_12479.7.259974.GCCTATC-TGATAGG.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	BB03	Zosmarsequencing_43_FD	12003.6.232824.TAACCGG-ACCGGTT.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_43_FD/Raw_Data/12003.6.232824.TAACCGG-ACCGGTT.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/BB03/clean_12003.6.232824.TAACCGG-ACCGGTT.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#2	BB03	Zosmarsequencing_43_FD	12214.3.245781.TAACCGG-ACCGGTT.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_43_FD/Raw_Data/12214.3.245781.TAACCGG-ACCGGTT.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/BB03/clean_12214.3.245781.TAACCGG-ACCGGTT.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	BB04	Zosmarsequencing_4_FD	12002.6.232743.ATGGTCC-TGGACCA.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_4_FD/Raw_Data/12002.6.232743.ATGGTCC-TGGACCA.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/BB04/clean_12002.6.232743.ATGGTCC-TGGACCA.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#2	BB04	Zosmarsequencing_4_FD	12233.3.246452.ATGGTCC-TGGACCA.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_4_FD/Raw_Data/12233.3.246452.ATGGTCC-TGGACCA.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/BB04/clean_12233.3.246452.ATGGTCC-TGGACCA.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	BB05	Zosmarsequencing_7_FD	12003.6.232824.GTCTAGG-ACCTAGA.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_7_FD/Raw_Data/12003.6.232824.GTCTAGG-ACCTAGA.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/BB05/clean_12003.6.232824.GTCTAGG-ACCTAGA.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#2	BB05	Zosmarsequencing_7_FD	12214.3.245781.GTCTAGG-ACCTAGA.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_7_FD/Raw_Data/12214.3.245781.GTCTAGG-ACCTAGA.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/BB05/clean_12214.3.245781.GTCTAGG-ACCTAGA.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	BB06	Zosmarsequencing_8_FD	12002.6.232743.AAGAGCC-TGGCTCT.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_8_FD/Raw_Data/12002.6.232743.AAGAGCC-TGGCTCT.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/BB06/clean_12002.6.232743.AAGAGCC-TGGCTCT.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#2	BB06	Zosmarsequencing_8_FD	12233.3.246452.AAGAGCC-TGGCTCT.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_8_FD/Raw_Data/12233.3.246452.AAGAGCC-TGGCTCT.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/BB06/clean_12233.3.246452.AAGAGCC-TGGCTCT.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	BB07	Zosmarsequencing_5_FD	12003.6.232824.AGAAGCG-ACGCTTC.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_5_FD/Raw_Data/12003.6.232824.AGAAGCG-ACGCTTC.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/BB07/clean_12003.6.232824.AGAAGCG-ACGCTTC.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#2	BB07	Zosmarsequencing_5_FD	12214.3.245781.AGAAGCG-ACGCTTC.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_5_FD/Raw_Data/12214.3.245781.AGAAGCG-ACGCTTC.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/BB07/clean_12214.3.245781.AGAAGCG-ACGCTTC.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	BB08	Zosmarsequencing_6_FD	12003.8.232844.TATTCGC-GGCGAAT.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_6_FD/Raw_Data/12003.8.232844.TATTCGC-GGCGAAT.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/BB08/clean_12003.8.232844.TATTCGC-GGCGAAT.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#2	BB08	Zosmarsequencing_6_FD	12214.5.245801.TATTCGC-GGCGAAT.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_6_FD/Raw_Data/12214.5.245801.TATTCGC-GGCGAAT.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/BB08/clean_12214.5.245801.TATTCGC-GGCGAAT.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	BB09	Zosmarsequencing_11_FD	12003.6.232824.TGTACCG-ACGGTAC.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_11_FD/Raw_Data/12003.6.232824.TGTACCG-ACGGTAC.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/BB09/clean_12003.6.232824.TGTACCG-ACGGTAC.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#2	BB09	Zosmarsequencing_11_FD	12214.3.245781.TGTACCG-ACGGTAC.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_11_FD/Raw_Data/12214.3.245781.TGTACCG-ACGGTAC.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/BB09/clean_12214.3.245781.TGTACCG-ACGGTAC.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	BB10	Zosmarsequencing_12_FD	12002.5.232732.AACGGTC-TGACCGT.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_12_FD/Raw_Data/12002.5.232732.AACGGTC-TGACCGT.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/BB10/clean_12002.5.232732.AACGGTC-TGACCGT.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#2	BB10	Zosmarsequencing_12_FD	12233.2.246441.AACGGTC-TGACCGT.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_12_FD/Raw_Data/12233.2.246441.AACGGTC-TGACCGT.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/BB10/clean_12233.2.246441.AACGGTC-TGACCGT.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	BB11	Zosmarsequencing_9_FD	12003.6.232824.CCATACG-ACGTATG.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_9_FD/Raw_Data/12003.6.232824.CCATACG-ACGTATG.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/BB11/clean_12003.6.232824.CCATACG-ACGTATG.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#2	BB11	Zosmarsequencing_9_FD	12214.3.245781.CCATACG-ACGTATG.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_9_FD/Raw_Data/12214.3.245781.CCATACG-ACGTATG.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/BB11/clean_12214.3.245781.CCATACG-ACGTATG.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	BB12	Zosmarsequencing_10_FD	12002.6.232743.TTGAGGC-TGCCTCA.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_10_FD/Raw_Data/12002.6.232743.TTGAGGC-TGCCTCA.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/BB12/clean_12002.6.232743.TTGAGGC-TGCCTCA.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#2	BB12	Zosmarsequencing_10_FD	12233.3.246452.TTGAGGC-TGCCTCA.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_10_FD/Raw_Data/12233.3.246452.TTGAGGC-TGCCTCA.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/BB12/clean_12233.3.246452.TTGAGGC-TGCCTCA.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	JN01	Zosmarsequencing_71_FD	12003.6.232824.GTTCGGT-AACCGAA.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_71_FD/Raw_Data/12003.6.232824.GTTCGGT-AACCGAA.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/JN01/clean_12003.6.232824.GTTCGGT-AACCGAA.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#2	JN01	Zosmarsequencing_71_FD	12214.3.245781.GTTCGGT-AACCGAA.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_71_FD/Raw_Data/12214.3.245781.GTTCGGT-AACCGAA.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/JN01/clean_12214.3.245781.GTTCGGT-AACCGAA.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	JN02	Zosmarsequencing_76_FD	12003.6.232824.ACAGCAA-GTTGCTG.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_76_FD/Raw_Data/12003.6.232824.ACAGCAA-GTTGCTG.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/JN02/clean_12003.6.232824.ACAGCAA-GTTGCTG.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#2	JN02	Zosmarsequencing_76_FD	12214.3.245781.ACAGCAA-GTTGCTG.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_76_FD/Raw_Data/12214.3.245781.ACAGCAA-GTTGCTG.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/JN02/clean_12214.3.245781.ACAGCAA-GTTGCTG.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	JN03	Zosmarsequencing_77_FD	12003.7.232834.CGTAGGT-AACCTAC.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_77_FD/Raw_Data/12003.7.232834.CGTAGGT-AACCTAC.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/JN03/clean_12003.7.232834.CGTAGGT-AACCTAC.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#2	JN03	Zosmarsequencing_77_FD	12214.4.245791.CGTAGGT-AACCTAC.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_77_FD/Raw_Data/12214.4.245791.CGTAGGT-AACCTAC.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/JN03/clean_12214.4.245791.CGTAGGT-AACCTAC.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	JN04	Zosmarsequencing_74_FD	12003.7.232834.TCATCAC-GGTGATG.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_74_FD/Raw_Data/12003.7.232834.TCATCAC-GGTGATG.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/JN04/clean_12003.7.232834.TCATCAC-GGTGATG.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#2	JN04	Zosmarsequencing_74_FD	12214.4.245791.TCATCAC-GGTGATG.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_74_FD/Raw_Data/12214.4.245791.TCATCAC-GGTGATG.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/JN04/clean_12214.4.245791.TCATCAC-GGTGATG.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	JN05	Zosmarsequencing_75_FD	12003.8.232844.TGTGCGT-AACGCAC.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_75_FD/Raw_Data/12003.8.232844.TGTGCGT-AACGCAC.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/JN05/clean_12003.8.232844.TGTGCGT-AACGCAC.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#2	JN05	Zosmarsequencing_75_FD	12214.5.245801.TGTGCGT-AACGCAC.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_75_FD/Raw_Data/12214.5.245801.TGTGCGT-AACGCAC.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/JN05/clean_12214.5.245801.TGTGCGT-AACGCAC.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	JN06	Zosmarsequencing_80_FD	12003.8.232844.ACCATCC-TGGATGG.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_80_FD/Raw_Data/12003.8.232844.ACCATCC-TGGATGG.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/JN06/clean_12003.8.232844.ACCATCC-TGGATGG.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#2	JN06	Zosmarsequencing_80_FD	12214.5.245801.ACCATCC-TGGATGG.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_80_FD/Raw_Data/12214.5.245801.ACCATCC-TGGATGG.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/JN06/clean_12214.5.245801.ACCATCC-TGGATGG.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	JN07	Zosmarsequencing_81_FD	12513.6.261863.ACGCCTA-TTAGGCG.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_81_FD/Raw_Data/12513.6.261863.ACGCCTA-TTAGGCG.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/JN07/clean_12513.6.261863.ACGCCTA-TTAGGCG.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	JN08	Zosmarsequencing_78_FD	12002.5.232732.CGCTTAA-GTTAAGC.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_78_FD/Raw_Data/12002.5.232732.CGCTTAA-GTTAAGC.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/JN08/clean_12002.5.232732.CGCTTAA-GTTAAGC.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#2	JN08	Zosmarsequencing_78_FD	12233.2.246441.CGCTTAA-GTTAAGC.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_78_FD/Raw_Data/12233.2.246441.CGCTTAA-GTTAAGC.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/JN08/clean_12233.2.246441.CGCTTAA-GTTAAGC.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	JN09	Zosmarsequencing_79_FD	12002.4.232721.TCCGAGT-AACTCGG.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_79_FD/Raw_Data/12002.4.232721.TCCGAGT-AACTCGG.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/JN09/clean_12002.4.232721.TCCGAGT-AACTCGG.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#2	JN09	Zosmarsequencing_79_FD	12233.1.246430.TCCGAGT-AACTCGG.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_79_FD/Raw_Data/12233.1.246430.TCCGAGT-AACTCGG.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/JN09/clean_12233.1.246430.TCCGAGT-AACTCGG.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	JN10	Zosmarsequencing_82_FD	12002.4.232721.AGTCTCA-GTGAGAC.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_82_FD/Raw_Data/12002.4.232721.AGTCTCA-GTGAGAC.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/JN10/clean_12002.4.232721.AGTCTCA-GTGAGAC.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#2	JN10	Zosmarsequencing_82_FD	12233.1.246430.AGTCTCA-GTGAGAC.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_82_FD/Raw_Data/12233.1.246430.AGTCTCA-GTGAGAC.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/JN10/clean_12233.1.246430.AGTCTCA-GTGAGAC.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	JN11	Zosmarsequencing_83_FD	12002.5.232732.CCTCAGT-AACTGAG.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_83_FD/Raw_Data/12002.5.232732.CCTCAGT-AACTGAG.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/JN11/clean_12002.5.232732.CCTCAGT-AACTGAG.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#2	JN11	Zosmarsequencing_83_FD	12233.2.246441.CCTCAGT-AACTGAG.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_83_FD/Raw_Data/12233.2.246441.CCTCAGT-AACTGAG.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/JN11/clean_12233.2.246441.CCTCAGT-AACTGAG.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	JN12	Zosmarsequencing_44_FD	12002.5.232732.TTCGTAC-GGTACGA.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_44_FD/Raw_Data/12002.5.232732.TTCGTAC-GGTACGA.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/JN12/clean_12002.5.232732.TTCGTAC-GGTACGA.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#2	JN12	Zosmarsequencing_44_FD	12233.2.246441.TTCGTAC-GGTACGA.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_44_FD/Raw_Data/12233.2.246441.TTCGTAC-GGTACGA.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/JN12/clean_12233.2.246441.TTCGTAC-GGTACGA.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	JS01	Zosmarsequencing_47_FD	12002.6.232743.ACGGTCT-AAGACCG.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_47_FD/Raw_Data/12002.6.232743.ACGGTCT-AAGACCG.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/JS01/clean_12002.6.232743.ACGGTCT-AAGACCG.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#2	JS01	Zosmarsequencing_47_FD	12233.3.246452.ACGGTCT-AAGACCG.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_47_FD/Raw_Data/12233.3.246452.ACGGTCT-AAGACCG.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/JS01/clean_12233.3.246452.ACGGTCT-AAGACCG.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	JS02	Zosmarsequencing_48_FD	12002.6.232743.GTAACGA-GTCGTTA.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_48_FD/Raw_Data/12002.6.232743.GTAACGA-GTCGTTA.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/JS02/clean_12002.6.232743.GTAACGA-GTCGTTA.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#2	JS02	Zosmarsequencing_48_FD	12233.3.246452.GTAACGA-GTCGTTA.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_48_FD/Raw_Data/12233.3.246452.GTAACGA-GTCGTTA.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/JS02/clean_12233.3.246452.GTAACGA-GTCGTTA.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	JS03	Zosmarsequencing_45_FD	12003.3.232794.GAACGCT-AAGCGTT.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_45_FD/Raw_Data/12003.3.232794.GAACGCT-AAGCGTT.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/JS03/clean_12003.3.232794.GAACGCT-AAGCGTT.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#2	JS03	Zosmarsequencing_45_FD	12214.1.245761.GAACGCT-AAGCGTT.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_45_FD/Raw_Data/12214.1.245761.GAACGCT-AAGCGTT.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/JS03/clean_12214.1.245761.GAACGCT-AAGCGTT.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	JS04	Zosmarsequencing_46_FD	12003.8.232844.ATTGAGC-GGCTCAA.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_46_FD/Raw_Data/12003.8.232844.ATTGAGC-GGCTCAA.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/JS04/clean_12003.8.232844.ATTGAGC-GGCTCAA.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#2	JS04	Zosmarsequencing_46_FD	12214.5.245801.ATTGAGC-GGCTCAA.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_46_FD/Raw_Data/12214.5.245801.ATTGAGC-GGCTCAA.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/JS04/clean_12214.5.245801.ATTGAGC-GGCTCAA.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	JS05	Zosmarsequencing_51_FD	12003.3.232794.GTGAGCT-AAGCTCA.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_51_FD/Raw_Data/12003.3.232794.GTGAGCT-AAGCTCA.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/JS05/clean_12003.3.232794.GTGAGCT-AAGCTCA.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#2	JS05	Zosmarsequencing_51_FD	12214.1.245761.GTGAGCT-AAGCTCA.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_51_FD/Raw_Data/12214.1.245761.GTGAGCT-AAGCTCA.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/JS05/clean_12214.1.245761.GTGAGCT-AAGCTCA.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	JS06	Zosmarsequencing_52_FD	12002.5.232732.CAATCGA-GTCGATT.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_52_FD/Raw_Data/12002.5.232732.CAATCGA-GTCGATT.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/JS06/clean_12002.5.232732.CAATCGA-GTCGATT.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#2	JS06	Zosmarsequencing_52_FD	12233.2.246441.CAATCGA-GTCGATT.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_52_FD/Raw_Data/12233.2.246441.CAATCGA-GTCGATT.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/JS06/clean_12233.2.246441.CAATCGA-GTCGATT.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	JS07	Zosmarsequencing_49_FD	12003.3.232794.CCTTCCT-AAGGAAG.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_49_FD/Raw_Data/12003.3.232794.CCTTCCT-AAGGAAG.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/JS07/clean_12003.3.232794.CCTTCCT-AAGGAAG.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#2	JS07	Zosmarsequencing_49_FD	12214.1.245761.CCTTCCT-AAGGAAG.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_49_FD/Raw_Data/12214.1.245761.CCTTCCT-AAGGAAG.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/JS07/clean_12214.1.245761.CCTTCCT-AAGGAAG.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	JS08	Zosmarsequencing_50_FD	12002.4.232721.TGACTGA-GTCAGTC.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_50_FD/Raw_Data/12002.4.232721.TGACTGA-GTCAGTC.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/JS08/clean_12002.4.232721.TGACTGA-GTCAGTC.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#2	JS08	Zosmarsequencing_50_FD	12233.1.246430.TGACTGA-GTCAGTC.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_50_FD/Raw_Data/12233.1.246430.TGACTGA-GTCAGTC.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/JS08/clean_12233.1.246430.TGACTGA-GTCAGTC.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	JS09	Zosmarsequencing_53_FD	12003.3.232794.GTCTCCT-AAGGAGA.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_53_FD/Raw_Data/12003.3.232794.GTCTCCT-AAGGAGA.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/JS09/clean_12003.3.232794.GTCTCCT-AAGGAGA.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#2	JS09	Zosmarsequencing_53_FD	12214.1.245761.GTCTCCT-AAGGAGA.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_53_FD/Raw_Data/12214.1.245761.GTCTCCT-AAGGAGA.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/JS09/clean_12214.1.245761.GTCTCCT-AAGGAGA.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	JS10	Zosmarsequencing_54_FD	12002.5.232732.ACGATGA-GTCATCG.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_54_FD/Raw_Data/12002.5.232732.ACGATGA-GTCATCG.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/JS10/clean_12002.5.232732.ACGATGA-GTCATCG.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#2	JS10	Zosmarsequencing_54_FD	12233.2.246441.ACGATGA-GTCATCG.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_54_FD/Raw_Data/12233.2.246441.ACGATGA-GTCATCG.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/JS10/clean_12233.2.246441.ACGATGA-GTCATCG.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	JS11	Zosmarsequencing_55_FD	12003.3.232794.TACGCCT-AAGGCGT.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_55_FD/Raw_Data/12003.3.232794.TACGCCT-AAGGCGT.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/JS11/clean_12003.3.232794.TACGCCT-AAGGCGT.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#2	JS11	Zosmarsequencing_55_FD	12214.1.245761.TACGCCT-AAGGCGT.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_55_FD/Raw_Data/12214.1.245761.TACGCCT-AAGGCGT.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/JS11/clean_12214.1.245761.TACGCCT-AAGGCGT.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	JS12	Zosmarsequencing_58_FD	12003.8.232844.AGTAGTC-GGACTAC.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_58_FD/Raw_Data/12003.8.232844.AGTAGTC-GGACTAC.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/JS12/clean_12003.8.232844.AGTAGTC-GGACTAC.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#2	JS12	Zosmarsequencing_58_FD	12214.5.245801.AGTAGTC-GGACTAC.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_58_FD/Raw_Data/12214.5.245801.AGTAGTC-GGACTAC.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/JS12/clean_12214.5.245801.AGTAGTC-GGACTAC.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	MA01	Zosmarsequencing_115_FD	12015.6.233098.GTTCGGT-AACCGAA.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_115_FD/Raw_Data/12015.6.233098.GTTCGGT-AACCGAA.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/MA01/clean_12015.6.233098.GTTCGGT-AACCGAA.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	MA02	Zosmarsequencing_116_FD	12015.6.233098.ACAGCAA-GTTGCTG.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_116_FD/Raw_Data/12015.6.233098.ACAGCAA-GTTGCTG.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/MA02/clean_12015.6.233098.ACAGCAA-GTTGCTG.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	MA03	Zosmarsequencing_121_FD	12015.7.233108.CGTAGGT-AACCTAC.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_121_FD/Raw_Data/12015.7.233108.CGTAGGT-AACCTAC.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/MA03/clean_12015.7.233108.CGTAGGT-AACCTAC.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	MA04	Zosmarsequencing_122_FD	12015.7.233108.TCATCAC-GGTGATG.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_122_FD/Raw_Data/12015.7.233108.TCATCAC-GGTGATG.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/MA04/clean_12015.7.233108.TCATCAC-GGTGATG.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	MA05	Zosmarsequencing_119_FD	12002.7.232754.TGTGCGT-AACGCAC.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_119_FD/Raw_Data/12002.7.232754.TGTGCGT-AACGCAC.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/MA05/clean_12002.7.232754.TGTGCGT-AACGCAC.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#2	MA05	Zosmarsequencing_119_FD	12233.4.246463.TGTGCGT-AACGCAC.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_119_FD/Raw_Data/12233.4.246463.TGTGCGT-AACGCAC.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/MA05/clean_12233.4.246463.TGTGCGT-AACGCAC.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	MA06	Zosmarsequencing_120_FD	12015.7.233108.ACCATCC-TGGATGG.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_120_FD/Raw_Data/12015.7.233108.ACCATCC-TGGATGG.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/MA06/clean_12015.7.233108.ACCATCC-TGGATGG.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	MA07	Zosmarsequencing_123_FD	12002.7.232754.GCTACGT-AACGTAG.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_123_FD/Raw_Data/12002.7.232754.GCTACGT-AACGTAG.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/MA07/clean_12002.7.232754.GCTACGT-AACGTAG.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#2	MA07	Zosmarsequencing_123_FD	12233.4.246463.GCTACGT-AACGTAG.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_123_FD/Raw_Data/12233.4.246463.GCTACGT-AACGTAG.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/MA07/clean_12233.4.246463.GCTACGT-AACGTAG.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	MA08	Zosmarsequencing_84_FD	12015.7.233108.CGCTTAA-GTTAAGC.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_84_FD/Raw_Data/12015.7.233108.CGCTTAA-GTTAAGC.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/MA08/clean_12015.7.233108.CGCTTAA-GTTAAGC.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	MA09	Zosmarsequencing_85_FD	12002.7.232754.TCCGAGT-AACTCGG.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_85_FD/Raw_Data/12002.7.232754.TCCGAGT-AACTCGG.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/MA09/clean_12002.7.232754.TCCGAGT-AACTCGG.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#2	MA09	Zosmarsequencing_85_FD	12233.4.246463.TCCGAGT-AACTCGG.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_85_FD/Raw_Data/12233.4.246463.TCCGAGT-AACTCGG.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/MA09/clean_12233.4.246463.TCCGAGT-AACTCGG.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	MA10	Zosmarsequencing_88_FD	12015.6.233098.AGTCTCA-GTGAGAC.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_88_FD/Raw_Data/12015.6.233098.AGTCTCA-GTGAGAC.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/MA10/clean_12015.6.233098.AGTCTCA-GTGAGAC.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	MA11	Zosmarsequencing_89_FD	12002.7.232754.CCTCAGT-AACTGAG.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_89_FD/Raw_Data/12002.7.232754.CCTCAGT-AACTGAG.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/MA11/clean_12002.7.232754.CCTCAGT-AACTGAG.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#2	MA11	Zosmarsequencing_89_FD	12233.4.246463.CCTCAGT-AACTGAG.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_89_FD/Raw_Data/12233.4.246463.CCTCAGT-AACTGAG.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/MA11/clean_12233.4.246463.CCTCAGT-AACTGAG.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	MA12	Zosmarsequencing_86_FD	12015.5.233088.TTCGTAC-GGTACGA.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_86_FD/Raw_Data/12015.5.233088.TTCGTAC-GGTACGA.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/MA12/clean_12015.5.233088.TTCGTAC-GGTACGA.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#2	MA12	Zosmarsequencing_86_FD	12233.7.246491.TTCGTAC-GGTACGA.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_86_FD/Raw_Data/12233.7.246491.TTCGTAC-GGTACGA.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/MA12/clean_12233.7.246491.TTCGTAC-GGTACGA.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	NC03	Zosmarsequencing_87_FD	12002.7.232754.ACGGTCT-AAGACCG.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_87_FD/Raw_Data/12002.7.232754.ACGGTCT-AAGACCG.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/NC03/clean_12002.7.232754.ACGGTCT-AAGACCG.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#2	NC03	Zosmarsequencing_87_FD	12233.4.246463.ACGGTCT-AAGACCG.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_87_FD/Raw_Data/12233.4.246463.ACGGTCT-AAGACCG.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/NC03/clean_12233.4.246463.ACGGTCT-AAGACCG.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	NC04	Zosmarsequencing_92_FD	12015.6.233098.GTAACGA-GTCGTTA.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_92_FD/Raw_Data/12015.6.233098.GTAACGA-GTCGTTA.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/NC04/clean_12015.6.233098.GTAACGA-GTCGTTA.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	NC05	Zosmarsequencing_93_FD	12002.8.232764.GAACGCT-AAGCGTT.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_93_FD/Raw_Data/12002.8.232764.GAACGCT-AAGCGTT.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/NC05/clean_12002.8.232764.GAACGCT-AAGCGTT.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#2	NC05	Zosmarsequencing_93_FD	12233.5.246473.GAACGCT-AAGCGTT.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_93_FD/Raw_Data/12233.5.246473.GAACGCT-AAGCGTT.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/NC05/clean_12233.5.246473.GAACGCT-AAGCGTT.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	NC06	Zosmarsequencing_90_FD	12015.5.233088.ATTGAGC-GGCTCAA.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_90_FD/Raw_Data/12015.5.233088.ATTGAGC-GGCTCAA.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/NC06/clean_12015.5.233088.ATTGAGC-GGCTCAA.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#2	NC06	Zosmarsequencing_90_FD	12233.7.246491.ATTGAGC-GGCTCAA.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_90_FD/Raw_Data/12233.7.246491.ATTGAGC-GGCTCAA.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/NC06/clean_12233.7.246491.ATTGAGC-GGCTCAA.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	NC07	Zosmarsequencing_91_FD	12002.8.232764.GTGAGCT-AAGCTCA.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_91_FD/Raw_Data/12002.8.232764.GTGAGCT-AAGCTCA.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/NC07/clean_12002.8.232764.GTGAGCT-AAGCTCA.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#2	NC07	Zosmarsequencing_91_FD	12233.5.246473.GTGAGCT-AAGCTCA.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_91_FD/Raw_Data/12233.5.246473.GTGAGCT-AAGCTCA.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/NC07/clean_12233.5.246473.GTGAGCT-AAGCTCA.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	NC08	Zosmarsequencing_96_FD	12015.6.233098.CAATCGA-GTCGATT.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_96_FD/Raw_Data/12015.6.233098.CAATCGA-GTCGATT.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/NC08/clean_12015.6.233098.CAATCGA-GTCGATT.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	NC09	Zosmarsequencing_94_FD	12002.8.232764.CCTTCCT-AAGGAAG.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_94_FD/Raw_Data/12002.8.232764.CCTTCCT-AAGGAAG.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/NC09/clean_12002.8.232764.CCTTCCT-AAGGAAG.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#2	NC09	Zosmarsequencing_94_FD	12233.5.246473.CCTTCCT-AAGGAAG.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_94_FD/Raw_Data/12233.5.246473.CCTTCCT-AAGGAAG.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/NC09/clean_12233.5.246473.CCTTCCT-AAGGAAG.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	NC11	Zosmarsequencing_95_FD	12015.6.233098.TGACTGA-GTCAGTC.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_95_FD/Raw_Data/12015.6.233098.TGACTGA-GTCAGTC.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/NC11/clean_12015.6.233098.TGACTGA-GTCAGTC.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	NC12	Zosmarsequencing_99_FD	12002.8.232764.GTCTCCT-AAGGAGA.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_99_FD/Raw_Data/12002.8.232764.GTCTCCT-AAGGAGA.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/NC12/clean_12002.8.232764.GTCTCCT-AAGGAGA.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#2	NC12	Zosmarsequencing_99_FD	12233.5.246473.GTCTCCT-AAGGAGA.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_99_FD/Raw_Data/12233.5.246473.GTCTCCT-AAGGAGA.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/NC12/clean_12233.5.246473.GTCTCCT-AAGGAGA.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	NC13	Zosmarsequencing_100_FD	12015.6.233098.ACGATGA-GTCATCG.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_100_FD/Raw_Data/12015.6.233098.ACGATGA-GTCATCG.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/NC13/clean_12015.6.233098.ACGATGA-GTCATCG.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	NC14	Zosmarsequencing_97_FD	12002.8.232764.TACGCCT-AAGGCGT.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_97_FD/Raw_Data/12002.8.232764.TACGCCT-AAGGCGT.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/NC14/clean_12002.8.232764.TACGCCT-AAGGCGT.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#2	NC14	Zosmarsequencing_97_FD	12233.5.246473.TACGCCT-AAGGCGT.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_97_FD/Raw_Data/12233.5.246473.TACGCCT-AAGGCGT.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/NC14/clean_12233.5.246473.TACGCCT-AAGGCGT.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	NC15	Zosmarsequencing_98_FD	12015.5.233088.AGTAGTC-GGACTAC.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_98_FD/Raw_Data/12015.5.233088.AGTAGTC-GGACTAC.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/NC15/clean_12015.5.233088.AGTAGTC-GGACTAC.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#2	NC15	Zosmarsequencing_98_FD	12233.7.246491.AGTAGTC-GGACTAC.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_98_FD/Raw_Data/12233.7.246491.AGTAGTC-GGACTAC.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/NC15/clean_12233.7.246491.AGTAGTC-GGACTAC.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	QU01	Zosmarsequencing_107_FD	12002.7.232754.GAGCTCA-TTGAGCT.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_107_FD/Raw_Data/12002.7.232754.GAGCTCA-TTGAGCT.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/QU01/clean_12002.7.232754.GAGCTCA-TTGAGCT.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#2	QU01	Zosmarsequencing_107_FD	12233.4.246463.GAGCTCA-TTGAGCT.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_107_FD/Raw_Data/12233.4.246463.GAGCTCA-TTGAGCT.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/QU01/clean_12233.4.246463.GAGCTCA-TTGAGCT.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	QU02	Zosmarsequencing_104_FD	12002.7.232754.ATAGCGG-ACCGCTA.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_104_FD/Raw_Data/12002.7.232754.ATAGCGG-ACCGCTA.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/QU02/clean_12002.7.232754.ATAGCGG-ACCGCTA.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#2	QU02	Zosmarsequencing_104_FD	12233.4.246463.ATAGCGG-ACCGCTA.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_104_FD/Raw_Data/12233.4.246463.ATAGCGG-ACCGCTA.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/QU02/clean_12233.4.246463.ATAGCGG-ACCGCTA.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	QU03	Zosmarsequencing_105_FD	12002.7.232754.CGGTTGT-AACAACC.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_105_FD/Raw_Data/12002.7.232754.CGGTTGT-AACAACC.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/QU03/clean_12002.7.232754.CGGTTGT-AACAACC.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#2	QU03	Zosmarsequencing_105_FD	12233.4.246463.CGGTTGT-AACAACC.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_105_FD/Raw_Data/12233.4.246463.CGGTTGT-AACAACC.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/QU03/clean_12233.4.246463.CGGTTGT-AACAACC.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	QU05	Zosmarsequencing_111_FD	12002.8.232764.GCCTTGT-AACAAGG.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_111_FD/Raw_Data/12002.8.232764.GCCTTGT-AACAAGG.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/QU05/clean_12002.8.232764.GCCTTGT-AACAAGG.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#2	QU05	Zosmarsequencing_111_FD	12233.5.246473.GCCTTGT-AACAAGG.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_111_FD/Raw_Data/12233.5.246473.GCCTTGT-AACAAGG.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/QU05/clean_12233.5.246473.GCCTTGT-AACAAGG.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	QU06	Zosmarsequencing_108_FD	12002.8.232764.CTGACAC-TGTGTCA.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_108_FD/Raw_Data/12002.8.232764.CTGACAC-TGTGTCA.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/QU06/clean_12002.8.232764.CTGACAC-TGTGTCA.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#2	QU06	Zosmarsequencing_108_FD	12233.5.246473.CTGACAC-TGTGTCA.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_108_FD/Raw_Data/12233.5.246473.CTGACAC-TGTGTCA.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/QU06/clean_12233.5.246473.CTGACAC-TGTGTCA.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	QU07	Zosmarsequencing_109_FD	12015.3.233072.CCAGTGT-AACACTG.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_109_FD/Raw_Data/12015.3.233072.CCAGTGT-AACACTG.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/QU07/clean_12015.3.233072.CCAGTGT-AACACTG.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	QU08	Zosmarsequencing_112_FD	12015.3.233072.TGTACAC-GGTGTAC.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_112_FD/Raw_Data/12015.3.233072.TGTACAC-GGTGTAC.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/QU08/clean_12015.3.233072.TGTACAC-GGTGTAC.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	QU09	Zosmarsequencing_113_FD	12015.4.233080.TCGCTGT-AACAGCG.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_113_FD/Raw_Data/12015.4.233080.TCGCTGT-AACAGCG.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/QU09/clean_12015.4.233080.TCGCTGT-AACAGCG.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#2	QU09	Zosmarsequencing_113_FD	12233.6.246483.TCGCTGT-AACAGCG.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_113_FD/Raw_Data/12233.6.246483.TCGCTGT-AACAGCG.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/QU09/clean_12233.6.246483.TCGCTGT-AACAGCG.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	QU10	Zosmarsequencing_114_FD	12015.4.233080.AGCTAAC-GGTTAGC.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_114_FD/Raw_Data/12015.4.233080.AGCTAAC-GGTTAGC.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/QU10/clean_12015.4.233080.AGCTAAC-GGTTAGC.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#2	QU10	Zosmarsequencing_114_FD	12233.6.246483.AGCTAAC-GGTTAGC.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_114_FD/Raw_Data/12233.6.246483.AGCTAAC-GGTTAGC.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/QU10/clean_12233.6.246483.AGCTAAC-GGTTAGC.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	QU11	Zosmarsequencing_117_FD	12015.5.233088.GGACTGT-AACAGTC.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_117_FD/Raw_Data/12015.5.233088.GGACTGT-AACAGTC.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/QU11/clean_12015.5.233088.GGACTGT-AACAGTC.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#2	QU11	Zosmarsequencing_117_FD	12233.7.246491.GGACTGT-AACAGTC.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_117_FD/Raw_Data/12233.7.246491.GGACTGT-AACAGTC.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/QU11/clean_12233.7.246491.GGACTGT-AACAGTC.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	QU12	Zosmarsequencing_118_FD	12015.5.233088.ACGGAAC-TGTTCCG.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_118_FD/Raw_Data/12015.5.233088.ACGGAAC-TGTTCCG.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/QU12/clean_12015.5.233088.ACGGAAC-TGTTCCG.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#2	QU12	Zosmarsequencing_118_FD	12233.7.246491.ACGGAAC-TGTTCCG.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_118_FD/Raw_Data/12233.7.246491.ACGGAAC-TGTTCCG.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/QU12/clean_12233.7.246491.ACGGAAC-TGTTCCG.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	SD01	Zosmarsequencing_13_FD	12003.6.232824.TTGGACG-ACGTCCA.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_13_FD/Raw_Data/12003.6.232824.TTGGACG-ACGTCCA.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/SD01/clean_12003.6.232824.TTGGACG-ACGTCCA.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#2	SD01	Zosmarsequencing_13_FD	12214.3.245781.TTGGACG-ACGTCCA.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_13_FD/Raw_Data/12214.3.245781.TTGGACG-ACGTCCA.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/SD01/clean_12214.3.245781.TTGGACG-ACGTCCA.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	SD02	Zosmarsequencing_14_FD	12002.4.232721.CACCTTA-GTAAGGT.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_14_FD/Raw_Data/12002.4.232721.CACCTTA-GTAAGGT.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/SD02/clean_12002.4.232721.CACCTTA-GTAAGGT.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#2	SD02	Zosmarsequencing_14_FD	12233.1.246430.CACCTTA-GTAAGGT.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_14_FD/Raw_Data/12233.1.246430.CACCTTA-GTAAGGT.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/SD02/clean_12233.1.246430.CACCTTA-GTAAGGT.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	SD03	Zosmarsequencing_15_FD	12003.7.232834.ACCGTAG-ACTACGG.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_15_FD/Raw_Data/12003.7.232834.ACCGTAG-ACTACGG.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/SD03/clean_12003.7.232834.ACCGTAG-ACTACGG.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#2	SD03	Zosmarsequencing_15_FD	12214.4.245791.ACCGTAG-ACTACGG.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_15_FD/Raw_Data/12214.4.245791.ACCGTAG-ACTACGG.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/SD03/clean_12214.4.245791.ACCGTAG-ACTACGG.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	SD04	Zosmarsequencing_18_FD	12003.8.232844.GTGAATC-GGATTCA.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_18_FD/Raw_Data/12003.8.232844.GTGAATC-GGATTCA.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/SD04/clean_12003.8.232844.GTGAATC-GGATTCA.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#2	SD04	Zosmarsequencing_18_FD	12214.5.245801.GTGAATC-GGATTCA.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_18_FD/Raw_Data/12214.5.245801.GTGAATC-GGATTCA.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/SD04/clean_12214.5.245801.GTGAATC-GGATTCA.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	SD05	Zosmarsequencing_19_FD	12003.7.232834.GCGATAG-ACTATCG.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_19_FD/Raw_Data/12003.7.232834.GCGATAG-ACTATCG.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/SD05/clean_12003.7.232834.GCGATAG-ACTATCG.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#2	SD05	Zosmarsequencing_19_FD	12214.4.245791.GCGATAG-ACTATCG.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_19_FD/Raw_Data/12214.4.245791.GCGATAG-ACTATCG.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/SD05/clean_12214.4.245791.GCGATAG-ACTATCG.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	SD06	Zosmarsequencing_16_FD	12479.7.259974.GTAGGAG-ACTCCTA.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_16_FD/Raw_Data/12479.7.259974.GTAGGAG-ACTCCTA.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/SD06/clean_12479.7.259974.GTAGGAG-ACTCCTA.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	SD07	Zosmarsequencing_17_FD	12003.7.232834.CGTTGAG-ACTCAAC.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_17_FD/Raw_Data/12003.7.232834.CGTTGAG-ACTCAAC.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/SD07/clean_12003.7.232834.CGTTGAG-ACTCAAC.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#2	SD07	Zosmarsequencing_17_FD	12214.4.245791.CGTTGAG-ACTCAAC.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_17_FD/Raw_Data/12214.4.245791.CGTTGAG-ACTCAAC.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/SD07/clean_12214.4.245791.CGTTGAG-ACTCAAC.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	SD08	Zosmarsequencing_22_FD	12002.6.232743.TCACAGC-TGCTGTG.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_22_FD/Raw_Data/12002.6.232743.TCACAGC-TGCTGTG.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/SD08/clean_12002.6.232743.TCACAGC-TGCTGTG.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#2	SD08	Zosmarsequencing_22_FD	12233.3.246452.TCACAGC-TGCTGTG.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_22_FD/Raw_Data/12233.3.246452.TCACAGC-TGCTGTG.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/SD08/clean_12233.3.246452.TCACAGC-TGCTGTG.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	SD09	Zosmarsequencing_23_FD	12003.7.232834.GATCGAG-ACTCGAT.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_23_FD/Raw_Data/12003.7.232834.GATCGAG-ACTCGAT.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/SD09/clean_12003.7.232834.GATCGAG-ACTCGAT.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#2	SD09	Zosmarsequencing_23_FD	12214.4.245791.GATCGAG-ACTCGAT.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_23_FD/Raw_Data/12214.4.245791.GATCGAG-ACTCGAT.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/SD09/clean_12214.4.245791.GATCGAG-ACTCGAT.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	SD10	Zosmarsequencing_20_FD	12002.6.232743.CTATCGC-TGCGATA.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_20_FD/Raw_Data/12002.6.232743.CTATCGC-TGCGATA.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/SD10/clean_12002.6.232743.CTATCGC-TGCGATA.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#2	SD10	Zosmarsequencing_20_FD	12233.3.246452.CTATCGC-TGCGATA.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_20_FD/Raw_Data/12233.3.246452.CTATCGC-TGCGATA.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/SD10/clean_12233.3.246452.CTATCGC-TGCGATA.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	SD11	Zosmarsequencing_21_FD	12003.7.232834.AGTGCAG-ACTGCAC.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_21_FD/Raw_Data/12003.7.232834.AGTGCAG-ACTGCAC.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/SD11/clean_12003.7.232834.AGTGCAG-ACTGCAC.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#2	SD11	Zosmarsequencing_21_FD	12214.4.245791.AGTGCAG-ACTGCAC.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_21_FD/Raw_Data/12214.4.245791.AGTGCAG-ACTGCAC.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/SD11/clean_12214.4.245791.AGTGCAG-ACTGCAC.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	SD12	Zosmarsequencing_106_FD	12003.8.232844.GACATTC-GGAATGT.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_106_FD/Raw_Data/12003.8.232844.GACATTC-GGAATGT.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/SD12/clean_12003.8.232844.GACATTC-GGAATGT.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#2	SD12	Zosmarsequencing_106_FD	12214.5.245801.GACATTC-GGAATGT.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_106_FD/Raw_Data/12214.5.245801.GACATTC-GGAATGT.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/SD12/clean_12214.5.245801.GACATTC-GGAATGT.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	WAS01	Zosmarsequencing_27_FD	12003.4.232804.ACCTCTG-ACAGAGG.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_27_FD/Raw_Data/12003.4.232804.ACCTCTG-ACAGAGG.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/WAS01/clean_12003.4.232804.ACCTCTG-ACAGAGG.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#2	WAS01	Zosmarsequencing_27_FD	12214.2.245771.ACCTCTG-ACAGAGG.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_27_FD/Raw_Data/12214.2.245771.ACCTCTG-ACAGAGG.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/WAS01/clean_12214.2.245771.ACCTCTG-ACAGAGG.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	WAS02	Zosmarsequencing_28_FD	12566.6.265790.AGTCGCT-AAGCGAC.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_28_FD/Raw_Data/12566.6.265790.AGTCGCT-AAGCGAC.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/WAS02/clean_12566.6.265790.AGTCGCT-AAGCGAC.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	WAS03	Zosmarsequencing_32_FD	12003.5.232814.CTTGCTG-ACAGCAA.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_32_FD/Raw_Data/12003.5.232814.CTTGCTG-ACAGCAA.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/WAS03/clean_12003.5.232814.CTTGCTG-ACAGCAA.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	WAS04	Zosmarsequencing_33_FD	12002.5.232732.GCCATAA-GTTATGG.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_33_FD/Raw_Data/12002.5.232732.GCCATAA-GTTATGG.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/WAS04/clean_12002.5.232732.GCCATAA-GTTATGG.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#2	WAS04	Zosmarsequencing_33_FD	12233.2.246441.GCCATAA-GTTATGG.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_33_FD/Raw_Data/12233.2.246441.GCCATAA-GTTATGG.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/WAS04/clean_12233.2.246441.GCCATAA-GTTATGG.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	WAS05	Zosmarsequencing_31_FD	12003.5.232814.ATGCCTG-ACAGGCA.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_31_FD/Raw_Data/12003.5.232814.ATGCCTG-ACAGGCA.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/WAS05/clean_12003.5.232814.ATGCCTG-ACAGGCA.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	WAS06	Zosmarsequencing_36_FD	12002.4.232721.GAAGTAC-GGTACTT.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_36_FD/Raw_Data/12002.4.232721.GAAGTAC-GGTACTT.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/WAS06/clean_12002.4.232721.GAAGTAC-GGTACTT.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#2	WAS06	Zosmarsequencing_36_FD	12233.1.246430.GAAGTAC-GGTACTT.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_36_FD/Raw_Data/12233.1.246430.GAAGTAC-GGTACTT.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/WAS06/clean_12233.1.246430.GAAGTAC-GGTACTT.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	WAS07	Zosmarsequencing_37_FD	12003.5.232814.CGAACTG-ACAGTTC.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_37_FD/Raw_Data/12003.5.232814.CGAACTG-ACAGTTC.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/WAS07/clean_12003.5.232814.CGAACTG-ACAGTTC.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	WAS08	Zosmarsequencing_34_FD	12002.4.232721.TAGTGAC-GGTCACT.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_34_FD/Raw_Data/12002.4.232721.TAGTGAC-GGTCACT.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/WAS08/clean_12002.4.232721.TAGTGAC-GGTCACT.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#2	WAS08	Zosmarsequencing_34_FD	12233.1.246430.TAGTGAC-GGTCACT.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_34_FD/Raw_Data/12233.1.246430.TAGTGAC-GGTCACT.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/WAS08/clean_12233.1.246430.TAGTGAC-GGTCACT.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	WAS09	Zosmarsequencing_35_FD	12003.5.232814.TGGCATG-ACATGCC.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_35_FD/Raw_Data/12003.5.232814.TGGCATG-ACATGCC.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/WAS09/clean_12003.5.232814.TGGCATG-ACATGCC.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	WAS10	Zosmarsequencing_40_FD	12002.5.232732.CACTGAC-TGTCAGT.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_40_FD/Raw_Data/12002.5.232732.CACTGAC-TGTCAGT.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/WAS10/clean_12002.5.232732.CACTGAC-TGTCAGT.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#2	WAS10	Zosmarsequencing_40_FD	12233.2.246441.CACTGAC-TGTCAGT.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_40_FD/Raw_Data/12233.2.246441.CACTGAC-TGTCAGT.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/WAS10/clean_12233.2.246441.CACTGAC-TGTCAGT.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	WAS11	Zosmarsequencing_41_FD	12003.5.232814.TGCTTGG-ACCAAGC.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_41_FD/Raw_Data/12003.5.232814.TGCTTGG-ACCAAGC.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/WAS11/clean_12003.5.232814.TGCTTGG-ACCAAGC.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	WAS12	Zosmarsequencing_38_FD	12002.5.232732.CATACCA-GTGGTAT.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_38_FD/Raw_Data/12002.5.232732.CATACCA-GTGGTAT.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/WAS12/clean_12002.5.232732.CATACCA-GTGGTAT.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#2	WAS12	Zosmarsequencing_38_FD	12233.2.246441.CATACCA-GTGGTAT.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_38_FD/Raw_Data/12233.2.246441.CATACCA-GTGGTAT.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/WAS12/clean_12233.2.246441.CATACCA-GTGGTAT.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	NN01	Zosmarsequencing_194_FD	12019.8.233712.GAGCTCA-TTGAGCT.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_194_FD/Raw_Data/12019.8.233712.GAGCTCA-TTGAGCT.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/NN01/clean_12019.8.233712.GAGCTCA-TTGAGCT.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	NN02	Zosmarsequencing_192_FD	12019.8.233712.ATAGCGG-ACCGCTA.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_192_FD/Raw_Data/12019.8.233712.ATAGCGG-ACCGCTA.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/NN02/clean_12019.8.233712.ATAGCGG-ACCGCTA.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	NN03	Zosmarsequencing_193_FD	12020.1.233716.CGGTTGT-AACAACC.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_193_FD/Raw_Data/12020.1.233716.CGGTTGT-AACAACC.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/NN03/clean_12020.1.233716.CGGTTGT-AACAACC.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	NN04	Zosmarsequencing_195_FD	12020.1.233716.TACCAAC-GGTTGGT.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_195_FD/Raw_Data/12020.1.233716.TACCAAC-GGTTGGT.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/NN04/clean_12020.1.233716.TACCAAC-GGTTGGT.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	NN05	Zosmarsequencing_196_FD	12020.2.233720.GCCTTGT-AACAAGG.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_196_FD/Raw_Data/12020.2.233720.GCCTTGT-AACAAGG.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/NN05/clean_12020.2.233720.GCCTTGT-AACAAGG.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	NN06	Zosmarsequencing_197_FD	12020.2.233720.CTGACAC-TGTGTCA.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_197_FD/Raw_Data/12020.2.233720.CTGACAC-TGTGTCA.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/NN06/clean_12020.2.233720.CTGACAC-TGTGTCA.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	NN07	Zosmarsequencing_200_FD	12020.3.233724.CCAGTGT-AACACTG.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_200_FD/Raw_Data/12020.3.233724.CCAGTGT-AACACTG.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/NN07/clean_12020.3.233724.CCAGTGT-AACACTG.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	NN08	Zosmarsequencing_201_FD	12020.3.233724.TGTACAC-GGTGTAC.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_201_FD/Raw_Data/12020.3.233724.TGTACAC-GGTGTAC.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/NN08/clean_12020.3.233724.TGTACAC-GGTGTAC.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	NN09	Zosmarsequencing_198_FD	12020.4.233728.TCGCTGT-AACAGCG.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_198_FD/Raw_Data/12020.4.233728.TCGCTGT-AACAGCG.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/NN09/clean_12020.4.233728.TCGCTGT-AACAGCG.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	NN10	Zosmarsequencing_199_FD	12020.4.233728.AGCTAAC-GGTTAGC.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_199_FD/Raw_Data/12020.4.233728.AGCTAAC-GGTTAGC.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/NN10/clean_12020.4.233728.AGCTAAC-GGTTAGC.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	NN11	Zosmarsequencing_204_FD	12020.5.233732.GGACTGT-AACAGTC.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_204_FD/Raw_Data/12020.5.233732.GGACTGT-AACAGTC.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/NN11/clean_12020.5.233732.GGACTGT-AACAGTC.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	NN12	Zosmarsequencing_205_FD	12020.5.233732.ACGGAAC-TGTTCCG.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_205_FD/Raw_Data/12020.5.233732.ACGGAAC-TGTTCCG.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/NN12/clean_12020.5.233732.ACGGAAC-TGTTCCG.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	SW01	Zosmarsequencing_202_FD	12020.6.233736.GTTCGGT-AACCGAA.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_202_FD/Raw_Data/12020.6.233736.GTTCGGT-AACCGAA.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/SW01/clean_12020.6.233736.GTTCGGT-AACCGAA.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	SW02	Zosmarsequencing_203_FD	12020.6.233736.ACAGCAA-GTTGCTG.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_203_FD/Raw_Data/12020.6.233736.ACAGCAA-GTTGCTG.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/SW02/clean_12020.6.233736.ACAGCAA-GTTGCTG.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	SW03	Zosmarsequencing_206_FD	12020.7.233740.CGTAGGT-AACCTAC.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_206_FD/Raw_Data/12020.7.233740.CGTAGGT-AACCTAC.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/SW03/clean_12020.7.233740.CGTAGGT-AACCTAC.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	SW04	Zosmarsequencing_207_FD	12020.7.233740.TCATCAC-GGTGATG.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_207_FD/Raw_Data/12020.7.233740.TCATCAC-GGTGATG.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/SW04/clean_12020.7.233740.TCATCAC-GGTGATG.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	SW05	Zosmarsequencing_208_FD	12020.8.233744.TGTGCGT-AACGCAC.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_208_FD/Raw_Data/12020.8.233744.TGTGCGT-AACGCAC.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/SW05/clean_12020.8.233744.TGTGCGT-AACGCAC.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	SW06	Zosmarsequencing_211_FD	12020.8.233744.ACCATCC-TGGATGG.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_211_FD/Raw_Data/12020.8.233744.ACCATCC-TGGATGG.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/SW06/clean_12020.8.233744.ACCATCC-TGGATGG.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	SW07	Zosmarsequencing_212_FD	12025.6.233853.GCTACGT-AACGTAG.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_212_FD/Raw_Data/12025.6.233853.GCTACGT-AACGTAG.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/SW07/clean_12025.6.233853.GCTACGT-AACGTAG.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	SW08	Zosmarsequencing_209_FD	12479.8.259980.ATCTCGC-AGCGAGA.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_209_FD/Raw_Data/12479.8.259980.ATCTCGC-AGCGAGA.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/SW08/clean_12479.8.259980.ATCTCGC-AGCGAGA.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	SW09	Zosmarsequencing_210_FD	12025.7.233857.TCCGAGT-AACTCGG.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_210_FD/Raw_Data/12025.7.233857.TCCGAGT-AACTCGG.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/SW09/clean_12025.7.233857.TCCGAGT-AACTCGG.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	SW10	Zosmarsequencing_215_FD	12479.8.259980.TAGAGCT-GAGCTCT.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_215_FD/Raw_Data/12479.8.259980.TAGAGCT-GAGCTCT.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/SW10/clean_12479.8.259980.TAGAGCT-GAGCTCT.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	SW11	Zosmarsequencing_216_FD	12025.6.233853.CCTCAGT-AACTGAG.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_216_FD/Raw_Data/12025.6.233853.CCTCAGT-AACTGAG.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/SW11/clean_12025.6.233853.CCTCAGT-AACTGAG.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	SW12	Zosmarsequencing_213_FD	12275.7.247854.GTAGAG.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_213_FD/Raw_Data/12275.7.247854.GTAGAG.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/SW12/clean_12275.7.247854.GTAGAG.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	WN01	Zosmarsequencing_214_FD	12021.1.233883.ACGGTCT-AAGACCG.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_214_FD/Raw_Data/12021.1.233883.ACGGTCT-AAGACCG.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/WN01/clean_12021.1.233883.ACGGTCT-AAGACCG.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	WN02	Zosmarsequencing_184_FD	12021.1.233883.GTAACGA-GTCGTTA.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_184_FD/Raw_Data/12021.1.233883.GTAACGA-GTCGTTA.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/WN02/clean_12021.1.233883.GTAACGA-GTCGTTA.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	WN03	Zosmarsequencing_185_FD	12021.2.233887.GAACGCT-AAGCGTT.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_185_FD/Raw_Data/12021.2.233887.GAACGCT-AAGCGTT.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/WN03/clean_12021.2.233887.GAACGCT-AAGCGTT.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	WN04	Zosmarsequencing_182_FD	12021.2.233887.ATTGAGC-GGCTCAA.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_182_FD/Raw_Data/12021.2.233887.ATTGAGC-GGCTCAA.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/WN04/clean_12021.2.233887.ATTGAGC-GGCTCAA.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	WN05	Zosmarsequencing_183_FD	12021.3.233891.GTGAGCT-AAGCTCA.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_183_FD/Raw_Data/12021.3.233891.GTGAGCT-AAGCTCA.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/WN05/clean_12021.3.233891.GTGAGCT-AAGCTCA.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	WN06	Zosmarsequencing_188_FD	12021.3.233891.CAATCGA-GTCGATT.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_188_FD/Raw_Data/12021.3.233891.CAATCGA-GTCGATT.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/WN06/clean_12021.3.233891.CAATCGA-GTCGATT.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	WN07	Zosmarsequencing_189_FD	12021.4.233895.CCTTCCT-AAGGAAG.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_189_FD/Raw_Data/12021.4.233895.CCTTCCT-AAGGAAG.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/WN07/clean_12021.4.233895.CCTTCCT-AAGGAAG.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	WN08	Zosmarsequencing_186_FD	12021.4.233895.TGACTGA-GTCAGTC.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_186_FD/Raw_Data/12021.4.233895.TGACTGA-GTCAGTC.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/WN08/clean_12021.4.233895.TGACTGA-GTCAGTC.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	WN09	Zosmarsequencing_187_FD	12479.8.259980.AACCTCC-AGGAGGT.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_187_FD/Raw_Data/12479.8.259980.AACCTCC-AGGAGGT.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/WN09/clean_12479.8.259980.AACCTCC-AGGAGGT.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	WN10	Zosmarsequencing_190_FD	12566.6.265790.TCGCATT-CAATGCG.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_190_FD/Raw_Data/12566.6.265790.TCGCATT-CAATGCG.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/WN10/clean_12566.6.265790.TCGCATT-CAATGCG.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	WN11	Zosmarsequencing_191_FD	12021.5.233899.TACGCCT-AAGGCGT.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_191_FD/Raw_Data/12021.5.233899.TACGCCT-AAGGCGT.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/WN11/clean_12021.5.233899.TACGCCT-AAGGCGT.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	WN12	Zosmarsequencing_162_FD	12021.5.233899.AGTAGTC-GGACTAC.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_162_FD/Raw_Data/12021.5.233899.AGTAGTC-GGACTAC.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/WN12/clean_12021.5.233899.AGTAGTC-GGACTAC.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	PO02	Zosmarsequencing_166_FD	12275.7.247854.GTCCGC.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_166_FD/Raw_Data/12275.7.247854.GTCCGC.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/PO02/clean_12275.7.247854.GTCCGC.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	PO03	Zosmarsequencing_163_FD	12021.6.233903.GAGGACT-AAGTCCT.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_163_FD/Raw_Data/12021.6.233903.GAGGACT-AAGTCCT.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/PO03/clean_12021.6.233903.GAGGACT-AAGTCCT.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	PO04	Zosmarsequencing_164_FD	12021.6.233903.AGAATGC-GGCATTC.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_164_FD/Raw_Data/12021.6.233903.AGAATGC-GGCATTC.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/PO04/clean_12021.6.233903.AGAATGC-GGCATTC.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	PO05	Zosmarsequencing_169_FD	12021.7.233907.GCTGGAT-AATCCAG.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_169_FD/Raw_Data/12021.7.233907.GCTGGAT-AATCCAG.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/PO05/clean_12021.7.233907.GCTGGAT-AATCCAG.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	PO06	Zosmarsequencing_170_FD	12021.7.233907.AGCAAGC-TGCTTGC.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_170_FD/Raw_Data/12021.7.233907.AGCAAGC-TGCTTGC.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/PO06/clean_12021.7.233907.AGCAAGC-TGCTTGC.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	PO07	Zosmarsequencing_167_FD	12021.8.233911.CGACCAT-AATGGTC.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_167_FD/Raw_Data/12021.8.233911.CGACCAT-AATGGTC.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/PO07/clean_12021.8.233911.CGACCAT-AATGGTC.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	PO08	Zosmarsequencing_168_FD	12021.8.233911.TCGGTTA-GTAACCG.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_168_FD/Raw_Data/12021.8.233911.TCGGTTA-GTAACCG.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/PO08/clean_12021.8.233911.TCGGTTA-GTAACCG.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	PO09	Zosmarsequencing_171_FD	12022.1.233915.CACGTTG-ACAACGT.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_171_FD/Raw_Data/12022.1.233915.CACGTTG-ACAACGT.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/PO09/clean_12022.1.233915.CACGTTG-ACAACGT.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	PO10	Zosmarsequencing_172_FD	12022.1.233915.GTTCAAC-GGTTGAA.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_172_FD/Raw_Data/12022.1.233915.GTTCAAC-GGTTGAA.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/PO10/clean_12022.1.233915.GTTCAAC-GGTTGAA.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	PO11	Zosmarsequencing_173_FD	12022.2.233919.CAGAGTG-ACACTCT.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_173_FD/Raw_Data/12022.2.233919.CAGAGTG-ACACTCT.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/PO11/clean_12022.2.233919.CAGAGTG-ACACTCT.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	PO12	Zosmarsequencing_176_FD	12022.2.233919.GGATACC-TGGTATC.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_176_FD/Raw_Data/12022.2.233919.GGATACC-TGGTATC.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/PO12/clean_12022.2.233919.GGATACC-TGGTATC.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	FR01	Zosmarsequencing_177_FD	12025.7.233857.ACCTCTG-ACAGAGG.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_177_FD/Raw_Data/12025.7.233857.ACCTCTG-ACAGAGG.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/FR01/clean_12025.7.233857.ACCTCTG-ACAGAGG.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	FR02	Zosmarsequencing_174_FD	12248.7.247370.GTAGAG.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_174_FD/Raw_Data/12248.7.247370.GTAGAG.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/FR02/clean_12248.7.247370.GTAGAG.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	FR03	Zosmarsequencing_175_FD	12022.3.233923.CTTGCTG-ACAGCAA.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_175_FD/Raw_Data/12022.3.233923.CTTGCTG-ACAGCAA.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/FR03/clean_12022.3.233923.CTTGCTG-ACAGCAA.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	FR04	Zosmarsequencing_180_FD	12022.3.233923.GCCATAA-GTTATGG.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_180_FD/Raw_Data/12022.3.233923.GCCATAA-GTTATGG.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/FR04/clean_12022.3.233923.GCCATAA-GTTATGG.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	FR05	Zosmarsequencing_181_FD	12022.4.233927.ATGCCTG-ACAGGCA.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_181_FD/Raw_Data/12022.4.233927.ATGCCTG-ACAGGCA.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/FR05/clean_12022.4.233927.ATGCCTG-ACAGGCA.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	FR06	Zosmarsequencing_178_FD	12022.4.233927.GAAGTAC-GGTACTT.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_178_FD/Raw_Data/12022.4.233927.GAAGTAC-GGTACTT.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/FR06/clean_12022.4.233927.GAAGTAC-GGTACTT.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	FR07	Zosmarsequencing_179_FD	12022.5.233931.CGAACTG-ACAGTTC.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_179_FD/Raw_Data/12022.5.233931.CGAACTG-ACAGTTC.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/FR07/clean_12022.5.233931.CGAACTG-ACAGTTC.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	FR08	Zosmarsequencing_147_FD	12022.5.233931.TAGTGAC-GGTCACT.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_147_FD/Raw_Data/12022.5.233931.TAGTGAC-GGTCACT.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/FR08/clean_12022.5.233931.TAGTGAC-GGTCACT.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	FR09	Zosmarsequencing_145_FD	12022.6.233935.TGGCATG-ACATGCC.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_145_FD/Raw_Data/12022.6.233935.TGGCATG-ACATGCC.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/FR09/clean_12022.6.233935.TGGCATG-ACATGCC.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	FR10	Zosmarsequencing_146_FD	12022.6.233935.CACTGAC-TGTCAGT.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_146_FD/Raw_Data/12022.6.233935.CACTGAC-TGTCAGT.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/FR10/clean_12022.6.233935.CACTGAC-TGTCAGT.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	FR11	Zosmarsequencing_150_FD	12022.7.233939.TGCTTGG-ACCAAGC.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_150_FD/Raw_Data/12022.7.233939.TGCTTGG-ACCAAGC.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/FR11/clean_12022.7.233939.TGCTTGG-ACCAAGC.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	FR12	Zosmarsequencing_151_FD	12022.7.233939.CATACCA-GTGGTAT.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_151_FD/Raw_Data/12022.7.233939.CATACCA-GTGGTAT.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/FR12/clean_12022.7.233939.CATACCA-GTGGTAT.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	CZ01	Zosmarsequencing_148_FD	12022.8.233943.TTGTCGG-ACCGACA.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_148_FD/Raw_Data/12022.8.233943.TTGTCGG-ACCGACA.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/CZ01/clean_12022.8.233943.TTGTCGG-ACCGACA.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	CZ02	Zosmarsequencing_149_FD	12022.8.233943.CCAAGCA-TTGCTTG.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_149_FD/Raw_Data/12022.8.233943.CCAAGCA-TTGCTTG.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/CZ02/clean_12022.8.233943.CCAAGCA-TTGCTTG.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	CZ03	Zosmarsequencing_153_FD	12025.1.233833.TAACCGG-ACCGGTT.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_153_FD/Raw_Data/12025.1.233833.TAACCGG-ACCGGTT.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/CZ03/clean_12025.1.233833.TAACCGG-ACCGGTT.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	CZ04	Zosmarsequencing_154_FD	12025.1.233833.ATGGTCC-TGGACCA.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_154_FD/Raw_Data/12025.1.233833.ATGGTCC-TGGACCA.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/CZ04/clean_12025.1.233833.ATGGTCC-TGGACCA.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	CZ05	Zosmarsequencing_152_FD	12025.2.233837.GTCTAGG-ACCTAGA.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_152_FD/Raw_Data/12025.2.233837.GTCTAGG-ACCTAGA.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/CZ05/clean_12025.2.233837.GTCTAGG-ACCTAGA.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	CZ06	Zosmarsequencing_157_FD	12025.2.233837.AAGAGCC-TGGCTCT.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_157_FD/Raw_Data/12025.2.233837.AAGAGCC-TGGCTCT.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/CZ06/clean_12025.2.233837.AAGAGCC-TGGCTCT.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	CZ07	Zosmarsequencing_158_FD	12025.3.233841.AGAAGCG-ACGCTTC.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_158_FD/Raw_Data/12025.3.233841.AGAAGCG-ACGCTTC.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/CZ07/clean_12025.3.233841.AGAAGCG-ACGCTTC.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	CZ08	Zosmarsequencing_155_FD	12025.3.233841.TATTCGC-GGCGAAT.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_155_FD/Raw_Data/12025.3.233841.TATTCGC-GGCGAAT.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/CZ08/clean_12025.3.233841.TATTCGC-GGCGAAT.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	CZ09	Zosmarsequencing_156_FD	12025.4.233845.TGTACCG-ACGGTAC.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_156_FD/Raw_Data/12025.4.233845.TGTACCG-ACGGTAC.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/CZ09/clean_12025.4.233845.TGTACCG-ACGGTAC.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	CZ10	Zosmarsequencing_160_FD	12025.4.233845.AACGGTC-TGACCGT.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_160_FD/Raw_Data/12025.4.233845.AACGGTC-TGACCGT.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/CZ10/clean_12025.4.233845.AACGGTC-TGACCGT.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	CZ11	Zosmarsequencing_161_FD	12025.5.233849.CCATACG-ACGTATG.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_161_FD/Raw_Data/12025.5.233849.CCATACG-ACGTATG.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/CZ11/clean_12025.5.233849.CCATACG-ACGTATG.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

#1	CZ12	Zosmarsequencing_159_FD	12025.5.233849.TTGAGGC-TGCCTCA.fastq.gz
/sfs/fs6/home-geomar/smomw353/tools/bbmap/bbduk.sh \
in=/sfs/fs1/work-geomar/smomw353/A_WGR_rawFastq/Zosmarsequencing_159_FD/Raw_Data/12025.5.233849.TTGAGGC-TGCCTCA.fastq.gz \
out=/sfs/fs1/work-geomar/smomw353/A_WGR_cleanreads/CZ12/clean_12025.5.233849.TTGAGGC-TGCCTCA.fastq.gz \
ref=/sfs/fs6/home-geomar/smomw353/tools/bbmap/resources/adapters.fa \
ktrim=r \
k=23 \
mink=11 \
hdist=1 \
tpe \
tbo \
trimq=6 \
maq=10 \
maxns=1 \
minlen=50

/usr/bin/nqsII/qstat -f ${PBS_JOBID/0:}
