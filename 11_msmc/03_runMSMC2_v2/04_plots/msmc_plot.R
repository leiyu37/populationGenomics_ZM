library(ggplot2)
obj <- read.table("00_new.txt")
obj$V8 <- factor(obj$V8, levels = c("JN", "JS", "B1", "B2", "B3", "ASL", "ALI", "WAS", "BB", "SD", "QU", "MA", "NC", "B4", "B5", "NN", "SW", "WN", "B6", "B7","PO", "FR", "CZ", "B8", "B9"))
obj$V9 <- factor(obj$V9, levels = c("WP", "EP", "WA", "EA", "MID"))
pdf("all_sep.pdf", height=7, width=8)
ggplot(obj, aes(V5, V6, group = V7, color = V9)) +
  theme_classic() +
  geom_line() +
  scale_x_log10(limits=c(1, 1E6)) +
  scale_y_log10(limits=c(1E2, 1E6)) +
  xlab("Time (generations ago)") +
  ylab("Effectove population size") +
  annotation_logticks() +
  labs(title = "Demographic history (MSMC)") +
  theme(legend.title = element_blank(), plot.title = element_text(hjust = 0.5)) +
  facet_wrap(~V8) +
  geom_vline(xintercept = 3000, linetype="dotted") +
  geom_hline(yintercept = 5000, linetype="dotted")
dev.off()
