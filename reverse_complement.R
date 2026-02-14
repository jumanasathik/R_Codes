dna <- "ATGCGATCGTAA"
dna <- toupper(dna)

bases <- strsplit(dna, "")[[1]]

complement <- ifelse(bases == "A", "T",
              ifelse(bases == "T", "A",
              ifelse(bases == "G", "C",
              ifelse(bases == "C", "G", bases))))

reverse_complement <- paste(rev(complement), collapse = "")

cat("Original Sequence:", dna, "\n")
cat("Reverse Complement:", reverse_complement, "\n")
