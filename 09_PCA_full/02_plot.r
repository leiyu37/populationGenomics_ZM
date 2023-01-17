#!/usr/bin/env Rscript
library(ggplot2)
obj <- read.table("new_score.txt", header = FALSE)
pdf("full_pca_p1p2.pdf",height = 2.5, width = 4.5)
ggplot(data = obj, aes(x=V2, y=V3, color=V5)) +
  geom_point(size=5, shape=4) +
  ylab("PC2(15.44%)") +
  xlab("PC1(41.54%)") +
  theme_classic() +
    theme(text = element_text(size=15)) +
  guides(colour = guide_legend(override.aes = list(size=5))) +
  labs(col="")
dev.off()

pdf("full_pca_p1p3.pdf",height = 2.5, width = 4.5)
ggplot(data = obj, aes(x=V2, y=V4, color = V5)) +
  geom_point(size=5, shape=4) +
  ylab("PC3(12.34%)") +
  xlab("PC1(41.54%)") +
  theme_classic() +
    theme(text = element_text(size=15)) +
  guides(colour = guide_legend(override.aes = list(size=5))) +
  labs(col="")
dev.off()


pdf("full_pca_p2p3.pdf",height = 2.5, width = 4.5)
ggplot(data = obj, aes(x=V3, y=V4, color = V5)) +
  geom_point(size=5, shape=4) +
  ylab("PC3(12.34%)") +
  xlab("PC2(15.44%)") +
  theme_classic() +
    theme(text = element_text(size=15)) +
  guides(colour = guide_legend(override.aes = list(size=5))) +
  labs(col="")
dev.off()
