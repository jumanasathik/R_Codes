sequences <- c("ATGCGTAA", "GGGCTAAT", "ATATATGC")

gc_calc <- function(seq) {
  bases <- strsplit(toupper(seq), "")[[1]]
  ((sum(bases == "G") + sum(bases == "C")) / length(bases)) * 100
}

gc_values <- sapply(sequences, gc_calc)

barplot(gc_values,
        col = "orange",
        main = "GC Content Comparison",
        ylab = "GC Content (%)",
        xlab = "Sequence")
