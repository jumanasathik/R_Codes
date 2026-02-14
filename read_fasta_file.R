fasta <- readLines("sequence.fasta")

sequence <- fasta[!grepl("^>", fasta)]
sequence <- paste(sequence, collapse = "")
sequence <- toupper(sequence)

cat("Sequence Length:", nchar(sequence), "\n")

bases <- strsplit(sequence, "")[[1]]

gc_content <- ((sum(bases == "G") + sum(bases == "C")) / nchar(sequence)) * 100

cat("GC Content:", round(gc_content, 2), "%\n")
