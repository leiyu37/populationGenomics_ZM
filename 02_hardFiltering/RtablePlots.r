#!/usr/bin/env Rscript
library(ggplot2)
Rtable_sm_snp <- read.table("Rtable_snp.txt", header = TRUE)


pdf("wgr_snp_QD.pdf",width=6,height=4,paper='special') 
ggplot(Rtable_sm_snp, aes(x=QD)) + geom_density() + geom_vline(xintercept = 10)
dev.off()

pdf("wgr_snp_FS.pdf",width=6,height=4,paper='special') 
ggplot(Rtable_sm_snp, aes(x=FS)) + geom_density() + scale_x_continuous(trans='log10') + geom_vline(xintercept = 60)
dev.off()


pdf("wgr_snp_SOR.pdf",width=6,height=4,paper='special') 
ggplot(Rtable_sm_snp, aes(x=SOR)) + geom_density() + xlim(0,10) + geom_vline(xintercept = 3)
dev.off()

pdf("wgr_snp_MQ.pdf",width=6,height=4,paper='special') 
ggplot(Rtable_sm_snp, aes(x=MQ)) + geom_density() + xlim(0,70) + geom_vline(xintercept = 40)
dev.off()

pdf("wgr_snp_MQRankSum.pdf",width=6,height=4,paper='special') 
ggplot(Rtable_sm_snp, aes(x=MQRankSum)) + geom_density() + xlim(-11,6)+ geom_vline(xintercept = 2.5)+ geom_vline(xintercept = -2.5)
dev.off()

pdf("wgr_snp_ReadPosRankSum.pdf",width=6,height=4,paper='special') 
ggplot(Rtable_sm_snp, aes(x=ReadPosRankSum)) + geom_density() + xlim(-5,5)+ geom_vline(xintercept = 2.5)+ geom_vline(xintercept = -2.5)
dev.off()

mean(Rtable_sm_snp$DP) * 2

pdf("wgr_snp_DP.pdf",width=6,height=4,paper='special') 
ggplot(Rtable_sm_snp, aes(x=DP)) + geom_histogram(binwidth = 100) + xlim(0,20000) + geom_vline(xintercept = 10804)
dev.off()
