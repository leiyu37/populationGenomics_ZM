#!/usr/bin/env Rscript
library(ggplot2)

obj <- read.table("01_combine.txt")

ggplot(obj, aes(V2)) +
  theme_classic() +
  geom_histogram(binwidth = 0.01) +
  geom_vline(xintercept = 0.15) +
  xlab("Missing rate per sample") +
  ylab("Number of samples")
ggsave("missingRate_histogram.pdf", width = 5, height = 4)

obj01 <- subset(obj, V2 > 0.15)
write.table(obj01, file = "highMR.txt", quote = FALSE, sep = "\t")
