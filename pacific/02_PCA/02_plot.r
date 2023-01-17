#!/usr/bin/env Rscript
library(ggplot2)
obj <- read.table("new_score.txt", header = FALSE)
pdf("Pacific_pca_p1p2.pdf",height = 2.5, width = 4)
ggplot(data = obj, aes(x=V2, y=V3, color=V5)) +
  geom_point(size=0.2) +
  ylab("PC2(25.10%)") +
  xlab("PC1(31.53%)") +
  theme_classic() +
  labs(col="")
dev.off()

pdf("Pacific_pca_p1p3.pdf",height = 2.5, width = 4)
ggplot(data = obj, aes(x=V2, y=V4, color = V5)) +
  geom_point(size=0.2) +
  ylab("PC3(9.30%)") +
  xlab("PC1(31.53%)") +
  theme_classic() +
  labs(col="")
dev.off()


pdf("Pacific_pca_p2p3.pdf",height = 2.5, width = 4)
ggplot(data = obj, aes(x=V3, y=V4, color = V5)) +
  geom_point(size=0.2) +
  ylab("PC3(9.30%)") +
  xlab("PC2(25.10%)") +
  theme_classic() +
  labs(col="")
dev.off()
