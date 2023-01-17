library(ggplot2)
obj <- read.table("r_input.txt")

pdf("all_sep.pdf", height=7, width=7)
ggplot(obj, aes(V5, V6, group = V7, color = V8)) +
  theme_classic() +
  geom_line() +
  scale_x_log10(limits=c(1, 1E6)) +
  scale_y_log10(limits=c(1, 1E11)) +
  xlab("Time (generations ago)") +
  ylab("Effectove population size") +
  annotation_logticks() +
  labs(title = "Demographic history (MSMC)") +
  theme(legend.position = "None", plot.title = element_text(hjust = 0.5)) +
  facet_wrap(~V8)
dev.off()

obj01 <- subset(obj, V8 == "NC" | V8 == "MA" | V8 == "QU" | V8 == "NN" | V8 == "SW" | V8 == "WN")
pdf("Atlantic.pdf", height=5, width=7)
ggplot(obj01, aes(V5, V6, group = V7, color = V8)) +
  theme_classic() +
  geom_line() +
  scale_x_log10(limits=c(1, 1E6)) +
  scale_y_log10(limits=c(1, 1E11)) +
  xlab("Time (generations ago)") +
  ylab("Effectove population size") +
  annotation_logticks() +
  labs(title = "Atlantic") +
  theme(legend.title = element_blank(), plot.title = element_text(hjust = 0.5))
dev.off()


obj01 <- subset(obj, V8 == "ALI")
pdf("ALI_msmc2.pdf", height=5, width=7)
ggplot(obj01, aes(V5, V6, color = V7)) +
	theme_classic() +
	geom_line() +
	scale_x_log10(limits=c(1, 1E6)) +
	scale_y_log10(limits=c(1, 1E11)) +
	xlab("Time (generations ago)") +
	ylab("Effectove population size") +
	annotation_logticks() +
	labs(title = "ALI") +
	theme(legend.title = element_blank(), plot.title = element_text(hjust = 0.5))
dev.off()

obj01 <- subset(obj, V8 == "ASL")
pdf("ASL_msmc2.pdf", height=5, width=7)
ggplot(obj01, aes(V5, V6, color = V7)) +
	theme_classic() +
	geom_line() +
	scale_x_log10(limits=c(1, 1E6)) +
	scale_y_log10(limits=c(1, 1E11)) +
	xlab("Time (generations ago)") +
	ylab("Effectove population size") +
	annotation_logticks() +
	labs(title = "ASL") +
	theme(legend.title = element_blank(), plot.title = element_text(hjust = 0.5))
dev.off()

obj01 <- subset(obj, V8 == "BB")
pdf("BB_msmc2.pdf", height=5, width=7)
ggplot(obj01, aes(V5, V6, color = V7)) +
	theme_classic() +
	geom_line() +
	scale_x_log10(limits=c(1, 1E6)) +
	scale_y_log10(limits=c(1, 1E11)) +
	xlab("Time (generations ago)") +
	ylab("Effectove population size") +
	annotation_logticks() +
	labs(title = "BB") +
	theme(legend.title = element_blank(), plot.title = element_text(hjust = 0.5))
dev.off()

obj01 <- subset(obj, V8 == "CZ")
pdf("CZ_msmc2.pdf", height=5, width=7)
ggplot(obj01, aes(V5, V6, color = V7)) +
	theme_classic() +
	geom_line() +
	scale_x_log10(limits=c(1, 1E6)) +
	scale_y_log10(limits=c(1, 1E11)) +
	xlab("Time (generations ago)") +
	ylab("Effectove population size") +
	annotation_logticks() +
	labs(title = "CZ") +
	theme(legend.title = element_blank(), plot.title = element_text(hjust = 0.5))
dev.off()

obj01 <- subset(obj, V8 == "FR")
pdf("FR_msmc2.pdf", height=5, width=7)
ggplot(obj01, aes(V5, V6, color = V7)) +
	theme_classic() +
	geom_line() +
	scale_x_log10(limits=c(1, 1E6)) +
	scale_y_log10(limits=c(1, 1E11)) +
	xlab("Time (generations ago)") +
	ylab("Effectove population size") +
	annotation_logticks() +
	labs(title = "FR") +
	theme(legend.title = element_blank(), plot.title = element_text(hjust = 0.5))
dev.off()

obj01 <- subset(obj, V8 == "JN")
pdf("JN_msmc2.pdf", height=5, width=7)
ggplot(obj01, aes(V5, V6, color = V7)) +
	theme_classic() +
	geom_line() +
	scale_x_log10(limits=c(1, 1E6)) +
	scale_y_log10(limits=c(1, 1E11)) +
	xlab("Time (generations ago)") +
	ylab("Effectove population size") +
	annotation_logticks() +
	labs(title = "JN") +
	theme(legend.title = element_blank(), plot.title = element_text(hjust = 0.5))
dev.off()

obj01 <- subset(obj, V8 == "JS")
pdf("JS_msmc2.pdf", height=5, width=7)
ggplot(obj01, aes(V5, V6, color = V7)) +
	theme_classic() +
	geom_line() +
	scale_x_log10(limits=c(1, 1E6)) +
	scale_y_log10(limits=c(1, 1E11)) +
	xlab("Time (generations ago)") +
	ylab("Effectove population size") +
	annotation_logticks() +
	labs(title = "JS") +
	theme(legend.title = element_blank(), plot.title = element_text(hjust = 0.5))
dev.off()

obj01 <- subset(obj, V8 == "MA")
pdf("MA_msmc2.pdf", height=5, width=7)
ggplot(obj01, aes(V5, V6, color = V7)) +
	theme_classic() +
	geom_line() +
	scale_x_log10(limits=c(1, 1E6)) +
	scale_y_log10(limits=c(1, 1E11)) +
	xlab("Time (generations ago)") +
	ylab("Effectove population size") +
	annotation_logticks() +
	labs(title = "MA") +
	theme(legend.title = element_blank(), plot.title = element_text(hjust = 0.5))
dev.off()

obj01 <- subset(obj, V8 == "NC")
pdf("NC_msmc2.pdf", height=5, width=7)
ggplot(obj01, aes(V5, V6, color = V7)) +
	theme_classic() +
	geom_line() +
	scale_x_log10(limits=c(1, 1E6)) +
	scale_y_log10(limits=c(1, 1E11)) +
	xlab("Time (generations ago)") +
	ylab("Effectove population size") +
	annotation_logticks() +
	labs(title = "NC") +
	theme(legend.title = element_blank(), plot.title = element_text(hjust = 0.5))
dev.off()

obj01 <- subset(obj, V8 == "NN")
pdf("NN_msmc2.pdf", height=5, width=7)
ggplot(obj01, aes(V5, V6, color = V7)) +
	theme_classic() +
	geom_line() +
	scale_x_log10(limits=c(1, 1E6)) +
	scale_y_log10(limits=c(1, 1E11)) +
	xlab("Time (generations ago)") +
	ylab("Effectove population size") +
	annotation_logticks() +
	labs(title = "NN") +
	theme(legend.title = element_blank(), plot.title = element_text(hjust = 0.5))
dev.off()

obj01 <- subset(obj, V8 == "PO")
pdf("PO_msmc2.pdf", height=5, width=7)
ggplot(obj01, aes(V5, V6, color = V7)) +
	theme_classic() +
	geom_line() +
	scale_x_log10(limits=c(1, 1E6)) +
	scale_y_log10(limits=c(1, 1E11)) +
	xlab("Time (generations ago)") +
	ylab("Effectove population size") +
	annotation_logticks() +
	labs(title = "PO") +
	theme(legend.title = element_blank(), plot.title = element_text(hjust = 0.5))
dev.off()

obj01 <- subset(obj, V8 == "QU")
pdf("QU_msmc2.pdf", height=5, width=7)
ggplot(obj01, aes(V5, V6, color = V7)) +
	theme_classic() +
	geom_line() +
	scale_x_log10(limits=c(1, 1E6)) +
	scale_y_log10(limits=c(1, 1E11)) +
	xlab("Time (generations ago)") +
	ylab("Effectove population size") +
	annotation_logticks() +
	labs(title = "QU") +
	theme(legend.title = element_blank(), plot.title = element_text(hjust = 0.5))
dev.off()

obj01 <- subset(obj, V8 == "SD")
pdf("SD_msmc2.pdf", height=5, width=7)
ggplot(obj01, aes(V5, V6, color = V7)) +
	theme_classic() +
	geom_line() +
	scale_x_log10(limits=c(1, 1E6)) +
	scale_y_log10(limits=c(1, 1E11)) +
	xlab("Time (generations ago)") +
	ylab("Effectove population size") +
	annotation_logticks() +
	labs(title = "SD") +
	theme(legend.title = element_blank(), plot.title = element_text(hjust = 0.5))
dev.off()

obj01 <- subset(obj, V8 == "SW")
pdf("SW_msmc2.pdf", height=5, width=7)
ggplot(obj01, aes(V5, V6, color = V7)) +
	theme_classic() +
	geom_line() +
	scale_x_log10(limits=c(1, 1E6)) +
	scale_y_log10(limits=c(1, 1E11)) +
	xlab("Time (generations ago)") +
	ylab("Effectove population size") +
	annotation_logticks() +
	labs(title = "SW") +
	theme(legend.title = element_blank(), plot.title = element_text(hjust = 0.5))
dev.off()

obj01 <- subset(obj, V8 == "WAS")
pdf("WAS_msmc2.pdf", height=5, width=7)
ggplot(obj01, aes(V5, V6, color = V7)) +
	theme_classic() +
	geom_line() +
	scale_x_log10(limits=c(1, 1E6)) +
	scale_y_log10(limits=c(1, 1E11)) +
	xlab("Time (generations ago)") +
	ylab("Effectove population size") +
	annotation_logticks() +
	labs(title = "WAS") +
	theme(legend.title = element_blank(), plot.title = element_text(hjust = 0.5))
dev.off()

obj01 <- subset(obj, V8 == "WN")
pdf("WN_msmc2.pdf", height=5, width=7)
ggplot(obj01, aes(V5, V6, color = V7)) +
	theme_classic() +
	geom_line() +
	scale_x_log10(limits=c(1, 1E6)) +
	scale_y_log10(limits=c(1, 1E11)) +
	xlab("Time (generations ago)") +
	ylab("Effectove population size") +
	annotation_logticks() +
	labs(title = "WN") +
	theme(legend.title = element_blank(), plot.title = element_text(hjust = 0.5))
dev.off()

obj01 <- subset(obj, V8 == "ALI" | V8 == "ASL")
pdf("Alaska_msmc2.pdf", height=5, width=7)
ggplot(obj01, aes(V5, V6, group = V7, color = V8)) +
	theme_classic() +
	geom_line() +
	scale_x_log10(limits=c(1, 1E6)) +
	scale_y_log10(limits=c(1, 1E11)) +
	xlab("Time (generations ago)") +
	ylab("Effectove population size") +
	annotation_logticks() +
	labs(title = "Alaska") +
	theme(legend.title = element_blank(), plot.title = element_text(hjust = 0.5))
dev.off()

obj01 <- subset(obj, V8 == "JN" | V8 == "JS")
pdf("Japan_msmc2.pdf", height=5, width=7)
ggplot(obj01, aes(V5, V6, group = V7, color = V8)) +
	theme_classic() +
	geom_line() +
	scale_x_log10(limits=c(1, 1E6)) +
	scale_y_log10(limits=c(1, 1E11)) +
	xlab("Time (generations ago)") +
	ylab("Effectove population size") +
	annotation_logticks() +
	labs(title = "Japan") +
	theme(legend.title = element_blank(), plot.title = element_text(hjust = 0.5))
dev.off()

obj01 <- subset(obj, V8 == "WAS" | V8 == "BB" | V8 == "SD")
pdf("NEPacific_msmc2.pdf", height=5, width=7)
ggplot(obj01, aes(V5, V6, group = V7, color = V8)) +
	theme_classic() +
	geom_line() +
	scale_x_log10(limits=c(1, 1E6)) +
	scale_y_log10(limits=c(1, 1E11)) +
	xlab("Time (generations ago)") +
	ylab("Effectove population size") +
	annotation_logticks() +
	labs(title = "Northeast Pacific") +
	theme(legend.title = element_blank(), plot.title = element_text(hjust = 0.5))
dev.off()

obj01 <- subset(obj, V8 == "NC" | V8 == "MA" | V8 == "QU")
pdf("NWAtlantic_msmc2.pdf", height=5, width=7)
ggplot(obj01, aes(V5, V6, group = V7, color = V8)) +
	theme_classic() +
	geom_line() +
	scale_x_log10(limits=c(1, 1E6)) +
	scale_y_log10(limits=c(1, 1E11)) +
	xlab("Time (generations ago)") +
	ylab("Effectove population size") +
	annotation_logticks() +
	labs(title = "Northwest Atlantic") +
	theme(legend.title = element_blank(), plot.title = element_text(hjust = 0.5))
dev.off()

obj01 <- subset(obj, V8 == "PO" | V8 == "FR" | V8 == "CZ")
pdf("MED_msmc2.pdf", height=5, width=7)
ggplot(obj01, aes(V5, V6, group = V7, color = V8)) +
	theme_classic() +
	geom_line() +
	scale_x_log10(limits=c(1, 1E6)) +
	scale_y_log10(limits=c(1, 1E11)) +
	xlab("Time (generations ago)") +
	ylab("Effectove population size") +
	annotation_logticks() +
	labs(title = "Mediterranean Sea") +
	theme(legend.title = element_blank(), plot.title = element_text(hjust = 0.5))
dev.off()

obj01 <- subset(obj, V8 == "NN" | V8 == "SW" | V8 == "WN")
pdf("NEAtlantic_msmc2.pdf", height=5, width=7)
ggplot(obj01, aes(V5, V6, group = V7, color = V8)) +
	theme_classic() +
	geom_line() +
	scale_x_log10(limits=c(1, 1E6)) +
	scale_y_log10(limits=c(1, 1E11)) +
	xlab("Time (generations ago)") +
	ylab("Effectove population size") +
	annotation_logticks() +
	labs(title = "Northeast Atlantic") +
	theme(legend.title = element_blank(), plot.title = element_text(hjust = 0.5))
dev.off()

obj01 <- subset(obj, V8 == "JN" | V8 == "JS" | V8 == "ALI" | V8 == "ASL")
pdf("JNALA_msmc2.pdf", height=5, width=7)
ggplot(obj01, aes(V5, V6, group = V7, color = V8)) +
	theme_classic() +
	geom_line() +
	scale_x_log10(limits=c(1, 1E6)) +
	scale_y_log10(limits=c(1, 1E11)) +
	xlab("Time (generations ago)") +
	ylab("Effectove population size") +
	annotation_logticks() +
	labs(title = "Japan and Alaska") +
	theme(legend.title = element_blank(), plot.title = element_text(hjust = 0.5))
dev.off()

obj01 <- subset(obj, V8 == "JN" | V8 == "JS" | V8 == "ALI" | V8 == "ASL" | V8 == "WAS" | V8 == "BB" | V8 == "SD")
pdf("Pacific_msmc2.pdf", height=5, width=7)
ggplot(obj01, aes(V5, V6, group = V7, color = V8)) +
	theme_classic() +
	geom_line() +
	scale_x_log10(limits=c(1, 1E6)) +
	scale_y_log10(limits=c(1, 1E11)) +
	xlab("Time (generations ago)") +
	ylab("Effectove population size") +
	annotation_logticks() +
	labs(title = "Pacific") +
	theme(legend.title = element_blank(), plot.title = element_text(hjust = 0.5))
dev.off()

obj01 <- subset(obj, V8 == "NC" | V8 == "MA" | V8 == "QU" | V8 == "NN" | V8 == "SW" | V8 == "WN"| V8 == "PO" | V8 == "FR" | V8 == "CZ")
pdf("Atlantic_msmc2.pdf", height=5, width=7)
ggplot(obj01, aes(V5, V6, group = V7, color = V8)) +
	theme_classic() +
	geom_line() +
	scale_x_log10(limits=c(1, 1E6)) +
	scale_y_log10(limits=c(1, 1E11)) +
	xlab("Time (generations ago)") +
	ylab("Effectove population size") +
	annotation_logticks() +
	labs(title = "Atlantic") +
	theme(legend.title = element_blank(), plot.title = element_text(hjust = 0.5))
dev.off()

pdf("All_msmc2.pdf", height=5, width=7)
ggplot(obj, aes(V5, V6, group = V7, color = V8)) +
	theme_classic() +
	geom_line() +
	scale_x_log10(limits=c(1, 1E6)) +
	scale_y_log10(limits=c(1, 1E11)) +
	xlab("Time (generations ago)") +
	ylab("Effectove population size") +
	annotation_logticks() +
	labs(title = "All populations") +
	theme(legend.title = element_blank(), plot.title = element_text(hjust = 0.5))
dev.off()

