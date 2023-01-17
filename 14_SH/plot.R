#!/usr/bin/env Rscript
library(ggplot2)
obj <- read.table("./01_format.txt", header = TRUE)

pdf("SH_histogram.pdf", height = 4, width = 3)
ggplot(obj, aes(IBHs)) +
  geom_histogram(binwidth = 0.01) +
  geom_vline(xintercept = 0.95, linetype="dashed", color = "black") +
  scale_x_continuous(limits = c(0, 1)) +
  xlab("SH (X1, X2)") +
  theme_classic()
dev.off()

pdf("clonemates.pdf", height = 3, width = 4)
ggplot(obj, aes(N_IBH, IBHs, color = Clonemates)) +
  geom_point(shape = 4) +
  geom_hline(yintercept = 0.95, linetype="dashed", color = "black") +
  scale_y_continuous(limits = c(0,1), breaks = c(0, 0.5, 1)) +
  scale_x_continuous(limits = c(min(obj$N_IBH), max(obj$N_IBH)), labels=function(x) format(x, big.mark = ",", scientific = FALSE)) +
  ylab("SH (X1, X2)") +
  xlab("NSH") +
  theme_classic() +
  scale_color_manual(values = c("Clonemates" = "orange", "Non-clonemates" = "black"))
dev.off()

pdf("selfing.pdf", height = 3, width = 4)
ggplot(obj, aes(IBH_A, IBH_B, color = Selfing)) +
  geom_point(shape = 4) +
  geom_hline(yintercept = 0.95, linetype="dashed", color = "black") +
  geom_vline(xintercept = 0.95, linetype="dashed", color = "black") +
  scale_y_continuous(limits = c(0,1), breaks = c(0, 0.5, 1)) +
  scale_x_continuous(limits = c(0,1), breaks = c(0, 0.5, 1)) +
  ylab("SH (X2)") +
  xlab("SH (X1)") +
  theme_classic() +
  scale_color_manual(values = c("Selfing" = "blue", "Non-selfing" = "black"))
dev.off()
