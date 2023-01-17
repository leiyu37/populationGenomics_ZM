#!/usr/bin/env Rscript
library(ggplot2)
obj <- read.table("01_pi.txt", header = TRUE)

pdf("pi_site.pdf", width = 5, height = 4)
ggplot(obj, aes(x= Population, y= PI))+
  geom_boxplot() +
  geom_point(shape = 4) +
  scale_x_discrete(limits=c("JS","JN","WAS","BB","SD","ALI","ASL","PO","FR","CZ", "NC", "MA","QU","WN","SW", "NN")) +
  xlab("Population") +
  ylab("Nucleotide diversity for each chromosome") +
  theme_classic() +
  theme(axis.text.x = element_text(angle = 45, vjust = 1, hjust=1))
dev.off()
