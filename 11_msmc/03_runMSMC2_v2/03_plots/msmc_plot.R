library(ggplot2)
obj <- read.table("new_r_input.txt")
obj$V8 <- factor(obj$V8, levels = c("ALI", "WAS", "BB", "SD", "ASL", "QU", "MA", "NC", "JN", "NN", "SW", "WN", "JS", "PO", "FR", "CZ"))
obj$V9 <- factor(obj$V9, levels = c("Pacific_Alaska", "Pacific_Japan", "Pacific_NE", "Atlantic_NW", "Atlantic_NE", "Med"))
pdf("all_sep.pdf", height=7, width=8)
ggplot(obj, aes(V5, V6, group = V7, color = V9)) +
  theme_classic() +
  geom_line() +
  scale_x_log10(limits=c(1, 1E6)) +
  scale_y_log10(limits=c(1, 1E11)) +
  xlab("Time (generations ago)") +
  ylab("Effectove population size") +
  annotation_logticks() +
  labs(title = "Demographic history (MSMC)") +
  theme(legend.title = element_blank(), plot.title = element_text(hjust = 0.5)) +
  facet_wrap(~V8)
dev.off()
