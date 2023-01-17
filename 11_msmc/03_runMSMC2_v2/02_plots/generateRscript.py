#!/usr/bin/env python3

vcf_path = "/Users/lyu/projectWS/00_finalRepeat/05_rmMissing/02_thin3000.recode.vcf"

pop_sample_dict = {}

f_in = open(vcf_path)

for line in f_in.readlines():
    if line.startswith("#CHROM"):
        columns = line.split()
        for i in range(9, len(columns)):
            sample = columns[i]
            pop = sample[:-2]
            if pop in pop_sample_dict.keys():
                pop_sample_dict[pop].append(sample)
            else:
                pop_sample_dict[pop] = []
                pop_sample_dict[pop].append(sample)
        break
f_in.close()

f_out = open("./msmc_plot.R", "w")
f_out.write("library(ggplot2)\n")
f_out.write("obj <- read.table(\"r_input.txt\")\n\n")

for pop in pop_sample_dict.keys():

    f_out.write("obj01 <- subset(obj, V8 == \"{}\")\n".format(pop))
    f_out.write("pdf(\"{}_msmc2.pdf\", height=5, width=7)\n".format(pop))
    f_out.write("ggplot(obj01, aes(V5, V6, color = V7)) +\n")
    f_out.write("\ttheme_classic() +\n")
    f_out.write("\tgeom_line() +\n")
    f_out.write("\tscale_x_log10(limits=c(1, 1E6)) +\n")
    f_out.write("\tscale_y_log10(limits=c(1, 1E11)) +\n")
    f_out.write("\txlab(\"Time (generations ago)\") +\n")
    f_out.write("\tylab(\"Effectove population size\") +\n")
    f_out.write("\tannotation_logticks() +\n")
    f_out.write("\tlabs(title = \"{}\") +\n".format(pop))
    f_out.write("\ttheme(legend.title = element_blank(), plot.title = element_text(hjust = 0.5))\n")
    f_out.write("dev.off()\n\n")

f_out.write("obj01 <- subset(obj, V8 == \"ALI\" | V8 == \"ASL\")\n")
f_out.write("pdf(\"Alaska_msmc2.pdf\", height=5, width=7)\n")
f_out.write("ggplot(obj01, aes(V5, V6, group = V7, color = V8)) +\n")
f_out.write("\ttheme_classic() +\n")
f_out.write("\tgeom_line() +\n")
f_out.write("\tscale_x_log10(limits=c(1, 1E6)) +\n")
f_out.write("\tscale_y_log10(limits=c(1, 1E11)) +\n")
f_out.write("\txlab(\"Time (generations ago)\") +\n")
f_out.write("\tylab(\"Effectove population size\") +\n")
f_out.write("\tannotation_logticks() +\n")
f_out.write("\tlabs(title = \"Alaska\") +\n")
f_out.write("\ttheme(legend.title = element_blank(), plot.title = element_text(hjust = 0.5))\n")
f_out.write("dev.off()\n\n")

f_out.write("obj01 <- subset(obj, V8 == \"JN\" | V8 == \"JS\")\n")
f_out.write("pdf(\"Japan_msmc2.pdf\", height=5, width=7)\n")
f_out.write("ggplot(obj01, aes(V5, V6, group = V7, color = V8)) +\n")
f_out.write("\ttheme_classic() +\n")
f_out.write("\tgeom_line() +\n")
f_out.write("\tscale_x_log10(limits=c(1, 1E6)) +\n")
f_out.write("\tscale_y_log10(limits=c(1, 1E11)) +\n")
f_out.write("\txlab(\"Time (generations ago)\") +\n")
f_out.write("\tylab(\"Effectove population size\") +\n")
f_out.write("\tannotation_logticks() +\n")
f_out.write("\tlabs(title = \"Japan\") +\n")
f_out.write("\ttheme(legend.title = element_blank(), plot.title = element_text(hjust = 0.5))\n")
f_out.write("dev.off()\n\n")

f_out.write("obj01 <- subset(obj, V8 == \"WAS\" | V8 == \"BB\" | V8 == \"SD\")\n")
f_out.write("pdf(\"NEPacific_msmc2.pdf\", height=5, width=7)\n")
f_out.write("ggplot(obj01, aes(V5, V6, group = V7, color = V8)) +\n")
f_out.write("\ttheme_classic() +\n")
f_out.write("\tgeom_line() +\n")
f_out.write("\tscale_x_log10(limits=c(1, 1E6)) +\n")
f_out.write("\tscale_y_log10(limits=c(1, 1E11)) +\n")
f_out.write("\txlab(\"Time (generations ago)\") +\n")
f_out.write("\tylab(\"Effectove population size\") +\n")
f_out.write("\tannotation_logticks() +\n")
f_out.write("\tlabs(title = \"Northeast Pacific\") +\n")
f_out.write("\ttheme(legend.title = element_blank(), plot.title = element_text(hjust = 0.5))\n")
f_out.write("dev.off()\n\n")


f_out.write("obj01 <- subset(obj, V8 == \"NC\" | V8 == \"MA\" | V8 == \"QU\")\n")
f_out.write("pdf(\"NWAtlantic_msmc2.pdf\", height=5, width=7)\n")
f_out.write("ggplot(obj01, aes(V5, V6, group = V7, color = V8)) +\n")
f_out.write("\ttheme_classic() +\n")
f_out.write("\tgeom_line() +\n")
f_out.write("\tscale_x_log10(limits=c(1, 1E6)) +\n")
f_out.write("\tscale_y_log10(limits=c(1, 1E11)) +\n")
f_out.write("\txlab(\"Time (generations ago)\") +\n")
f_out.write("\tylab(\"Effectove population size\") +\n")
f_out.write("\tannotation_logticks() +\n")
f_out.write("\tlabs(title = \"Northwest Atlantic\") +\n")
f_out.write("\ttheme(legend.title = element_blank(), plot.title = element_text(hjust = 0.5))\n")
f_out.write("dev.off()\n\n")


f_out.write("obj01 <- subset(obj, V8 == \"PO\" | V8 == \"FR\" | V8 == \"CZ\")\n")
f_out.write("pdf(\"MED_msmc2.pdf\", height=5, width=7)\n")
f_out.write("ggplot(obj01, aes(V5, V6, group = V7, color = V8)) +\n")
f_out.write("\ttheme_classic() +\n")
f_out.write("\tgeom_line() +\n")
f_out.write("\tscale_x_log10(limits=c(1, 1E6)) +\n")
f_out.write("\tscale_y_log10(limits=c(1, 1E11)) +\n")
f_out.write("\txlab(\"Time (generations ago)\") +\n")
f_out.write("\tylab(\"Effectove population size\") +\n")
f_out.write("\tannotation_logticks() +\n")
f_out.write("\tlabs(title = \"Mediterranean Sea\") +\n")
f_out.write("\ttheme(legend.title = element_blank(), plot.title = element_text(hjust = 0.5))\n")
f_out.write("dev.off()\n\n")

f_out.write("obj01 <- subset(obj, V8 == \"NN\" | V8 == \"SW\" | V8 == \"WN\")\n")
f_out.write("pdf(\"NEAtlantic_msmc2.pdf\", height=5, width=7)\n")
f_out.write("ggplot(obj01, aes(V5, V6, group = V7, color = V8)) +\n")
f_out.write("\ttheme_classic() +\n")
f_out.write("\tgeom_line() +\n")
f_out.write("\tscale_x_log10(limits=c(1, 1E6)) +\n")
f_out.write("\tscale_y_log10(limits=c(1, 1E11)) +\n")
f_out.write("\txlab(\"Time (generations ago)\") +\n")
f_out.write("\tylab(\"Effectove population size\") +\n")
f_out.write("\tannotation_logticks() +\n")
f_out.write("\tlabs(title = \"Northeast Atlantic\") +\n")
f_out.write("\ttheme(legend.title = element_blank(), plot.title = element_text(hjust = 0.5))\n")
f_out.write("dev.off()\n\n")


f_out.write("obj01 <- subset(obj, V8 == \"JN\" | V8 == \"JS\" | V8 == \"ALI\" | V8 == \"ASL\")\n")
f_out.write("pdf(\"JNALA_msmc2.pdf\", height=5, width=7)\n")
f_out.write("ggplot(obj01, aes(V5, V6, group = V7, color = V8)) +\n")
f_out.write("\ttheme_classic() +\n")
f_out.write("\tgeom_line() +\n")
f_out.write("\tscale_x_log10(limits=c(1, 1E6)) +\n")
f_out.write("\tscale_y_log10(limits=c(1, 1E11)) +\n")
f_out.write("\txlab(\"Time (generations ago)\") +\n")
f_out.write("\tylab(\"Effectove population size\") +\n")
f_out.write("\tannotation_logticks() +\n")
f_out.write("\tlabs(title = \"Japan and Alaska\") +\n")
f_out.write("\ttheme(legend.title = element_blank(), plot.title = element_text(hjust = 0.5))\n")
f_out.write("dev.off()\n\n")



f_out.write("obj01 <- subset(obj, V8 == \"JN\" | V8 == \"JS\" | V8 == \"ALI\" | V8 == \"ASL\" | V8 == \"WAS\" | V8 == \"BB\" | V8 == \"SD\")\n")
f_out.write("pdf(\"Pacific_msmc2.pdf\", height=5, width=7)\n")
f_out.write("ggplot(obj01, aes(V5, V6, group = V7, color = V8)) +\n")
f_out.write("\ttheme_classic() +\n")
f_out.write("\tgeom_line() +\n")
f_out.write("\tscale_x_log10(limits=c(1, 1E6)) +\n")
f_out.write("\tscale_y_log10(limits=c(1, 1E11)) +\n")
f_out.write("\txlab(\"Time (generations ago)\") +\n")
f_out.write("\tylab(\"Effectove population size\") +\n")
f_out.write("\tannotation_logticks() +\n")
f_out.write("\tlabs(title = \"Pacific\") +\n")
f_out.write("\ttheme(legend.title = element_blank(), plot.title = element_text(hjust = 0.5))\n")
f_out.write("dev.off()\n\n")


f_out.write("obj01 <- subset(obj, V8 == \"NC\" | V8 == \"MA\" | V8 == \"QU\" | V8 == \"NN\" | V8 == \"SW\" | V8 == \"WN\" | V8 == \"PO\" | V8 == \"FR\" | V8 == \"CZ\")\n")
f_out.write("pdf(\"Atlantic_msmc2.pdf\", height=5, width=7)\n")
f_out.write("ggplot(obj01, aes(V5, V6, group = V7, color = V8)) +\n")
f_out.write("\ttheme_classic() +\n")
f_out.write("\tgeom_line() +\n")
f_out.write("\tscale_x_log10(limits=c(1, 1E6)) +\n")
f_out.write("\tscale_y_log10(limits=c(1, 1E11)) +\n")
f_out.write("\txlab(\"Time (generations ago)\") +\n")
f_out.write("\tylab(\"Effectove population size\") +\n")
f_out.write("\tannotation_logticks() +\n")
f_out.write("\tlabs(title = \"Atlantic\") +\n")
f_out.write("\ttheme(legend.title = element_blank(), plot.title = element_text(hjust = 0.5))\n")
f_out.write("dev.off()\n\n")


f_out.write("pdf(\"All_msmc2.pdf\", height=5, width=7)\n")
f_out.write("ggplot(obj, aes(V5, V6, group = V7, color = V8)) +\n")
f_out.write("\ttheme_classic() +\n")
f_out.write("\tgeom_line() +\n")
f_out.write("\tscale_x_log10(limits=c(1, 1E6)) +\n")
f_out.write("\tscale_y_log10(limits=c(1, 1E11)) +\n")
f_out.write("\txlab(\"Time (generations ago)\") +\n")
f_out.write("\tylab(\"Effectove population size\") +\n")
f_out.write("\tannotation_logticks() +\n")
f_out.write("\tlabs(title = \"All populations\") +\n")
f_out.write("\ttheme(legend.title = element_blank(), plot.title = element_text(hjust = 0.5))\n")
f_out.write("dev.off()\n\n")

f_out.close()
