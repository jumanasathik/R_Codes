dna <- "ATGCGATCGTAAATG"
dna <- toupper(dna)

codons <- substring(dna, seq(1, nchar(dna)-2, 3), seq(3, nchar(dna), 3))

codon_table <- table(codons)

print(codon_table)
