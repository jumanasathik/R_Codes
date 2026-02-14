genes <- c("Gene1", "Gene2", "Gene3", "Gene4")
expression_values <- c(10.5, 25.3, 18.7, 30.2)

barplot(expression_values,
        names.arg = genes,
        col = "steelblue",
        main = "Gene Expression Levels",
        ylab = "Expression Level",
        xlab = "Genes")
