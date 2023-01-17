#!/usr/bin/env Rscript
library(ggplot2)
obj <- read.table("../new_score.txt", header = FALSE)

pdf("Atlantic_pca_p1p2.pdf",height = 2.5, width = 4)
ggplot(data = obj, aes(x=V2, y=V3, color=V5)) +
  geom_point(size=5, shape = 4) +
  ylab("PC2(12.59%)") +
  xlab("PC1(24.47%)") +
  theme_classic() +
  theme(text = element_text(size=15)) +
  guides(colour = guide_legend(override.aes = list(size=5))) +
  labs(col="")
dev.off()