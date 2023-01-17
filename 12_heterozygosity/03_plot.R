#!/usr/bin/env Rscript
library(ggplot2)
obj <- read.table("./individualHET.txt", header = TRUE)

pdf("heterozygosity.pdf", width = 5, height = 4)
ggplot(obj, aes(x= Pop, y= F_het))+
  geom_boxplot() +
  geom_point(shape = 4) +
  scale_x_discrete(limits=c("JS","JN","WAS","BB","SD","ALI","ASL","PO","FR","CZ", "NC", "MA","QU","WN","SW", "NN")) +
  xlab("Population") +
  ylab("Genomic heterozygosity for each individual") +
  theme_classic() +
  theme(axis.text.x = element_text(angle = 45, vjust = 1, hjust=1))
dev.off()
