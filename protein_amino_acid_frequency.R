protein <- "MKWVTFISLLFLFSSAYS"
protein <- strsplit(toupper(protein), "")[[1]]

aa_table <- table(protein)

barplot(aa_table,
        col = "purple",
        main = "Amino Acid Frequency",
        ylab = "Count",
        xlab = "Amino Acids")
