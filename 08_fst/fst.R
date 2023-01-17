#!/gxfs_home/geomar/smomw353/miniconda3/envs/R341/bin/Rscript
library(vcfR)
library(StAMPP)

vcf <- read.vcfR("/gxfs_work1/fs1/work-geomar/smomw353/A_WGR_final/05_rmMissing/02_thin3000.recode.vcf")
aa.genlight <- vcfR2genlight(vcf, n.cores=10)
ploidy(aa.genlight) <- "2"
pop(aa.genlight) <- substr(aa.genlight@ind.names,1,nchar(aa.genlight@ind.names)-2)
a<-stamppFst(aa.genlight, nboots = 1000, percent = 95, nclusters = 10)


write.table(a$Fsts, file = "fsts.txt", append = FALSE, quote = FALSE, sep = "\t")

write.table(a$Pvalues, file = "pvalues.txt", append = FALSE, quote = FALSE, sep = "\t")
