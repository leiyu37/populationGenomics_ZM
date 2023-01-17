#!/usr/bin/env Rscript
library(vcfR)
library(adegenet)

vcf <- read.vcfR("/gxfs_work1/fs1/work-geomar/smomw353/A_WGR_final/17_PCA_full/01_filter/03_mac1.recode.vcf")
aa.genlight <- vcfR2genlight(vcf, n.cores=1)
ploidy(aa.genlight) <- "2"
aa.glpca <- glPca(aa.genlight, nf=3)

eig_sum <- sum(aa.glpca[["eig"]])
var_pca01 <- aa.glpca[["eig"]][1]/eig_sum
var_pca02 <- aa.glpca[["eig"]][2]/eig_sum
var_pca03 <- aa.glpca[["eig"]][3]/eig_sum

eig <- c(eig_sum, var_pca01, var_pca02, var_pca03)
write.table(eig,file="eig.txt")

write.table(aa.glpca[["scores"]],file="pca_scores.txt", quote = FALSE, sep = "\t", col.names = FALSE)
