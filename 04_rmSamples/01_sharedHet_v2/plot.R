#!/usr/bin/env Rscript
library(ggplot2)
obj <- read.table("reFormat.txt", header = TRUE)

pdf("shc.pdf", width = 4, height = 4)
ggplot(obj, aes(SHc)) +
  geom_histogram(binwidth = 0.005) +
  geom_vline(xintercept = 0.95, linetype = "dashed") +
  theme_classic() +
  scale_x_continuous(limits = c(0.0, 1.0), breaks = c(0, 0.5, 0.95))
dev.off()



pdf("selfing.pdf", width = 4, height = 4)
ggplot(obj, aes(SHa, SHb)) +
  geom_point() +
  geom_vline(xintercept = 0.95, linetype = "dashed") +
  geom_hline(yintercept = 0.95, linetype = "dashed") +
  theme_classic() +
  scale_x_continuous(limits = c(0.0, 1.0), breaks = c(0, 0.5, 0.95)) +
  scale_y_continuous(limits = c(0.0, 1.0), breaks = c(0, 0.5, 0.95))
dev.off()
