#!/usr/bin/env Rscript
library(ggplot2)
obj <- read.table("new_score.txt", header = FALSE)
pdf("Atlantic_pca_p1p2.pdf",height = 2.5, width = 4)
ggplot(data = obj, aes(x=V2, y=V3, color=V5)) +
  geom_point(size=0.2) +
  ylab("PC2(12.59%)") +
  xlab("PC1(24.47%)") +
  theme_classic() +
  labs(col="")
dev.off()

pdf("Atlantic_pca_p1p3.pdf",height = 2.5, width = 4)
ggplot(data = obj, aes(x=V2, y=V4, color = V5)) +
  geom_point(size=0.2) +
  ylab("PC3(8.88%)") +
  xlab("PC1(24.47%)") +
  theme_classic() +
  labs(col="")
dev.off()


pdf("Atlantic_pca_p2p3.pdf",height = 2.5, width = 4)
ggplot(data = obj, aes(x=V3, y=V4, color = V5)) +
  geom_point(size=0.2) +
  ylab("PC3(8.88%)") +
  xlab("PC2(12.59%)") +
  theme_classic() +
  labs(col="")
dev.off()
