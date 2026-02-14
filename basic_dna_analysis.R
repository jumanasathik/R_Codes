dna <- "ATGCGATCGTAA"
dna <- toupper(dna)

cat("DNA Sequence:", dna, "\n")

seq_length <- nchar(dna)
cat("Sequence Length:", seq_length, "\n")

bases <- strsplit(dna, "")[[1]]

count_A <- sum(bases == "A")
count_T <- sum(bases == "T")
count_G <- sum(bases == "G")
count_C <- sum(bases == "C")

cat("Nucleotide Counts:\n")
cat("A:", count_A, "\n")
cat("T:", count_T, "\n")
cat("G:", count_G, "\n")
cat("C:", count_C, "\n")

gc_content <- ((count_G + count_C) / seq_length) * 100
cat("GC Content:", round(gc_content, 2), "%\n")

counts <- c(count_A, count_T, count_G, count_C)
names(counts) <- c("A", "T", "G", "C")

barplot(counts,
        col = c("blue", "red", "green", "yellow"),
        main = "Nucleotide Frequency",
        ylab = "Count",
        xlab = "Nucleotide")
