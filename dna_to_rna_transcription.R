dna <- "ATGCGATCGTAA"
dna <- toupper(dna)

rna <- gsub("T", "U", dna)

cat("DNA Sequence:", dna, "\n")
cat("RNA Sequence:", rna, "\n")
