# Exercício 1

pdf("grafico.pdf")
x <- rnorm(100)
y <- rnorm(100, 5, 1)
plot(x, lty = 2, lwd = 2, col = "red", ylim = c(-10, 10))
points(y, lty = 3, col = "green")
dev.off()


df <- data.frame(
    nome = c("Luan", "Roger", "João", "Maria", "José"),
    idade = c(20, 30, 40, 50, 60)
)
print(df)

write.table(df, "idades.txt")
write.table(df, "idades2.txt", row.names = FALSE, sep = "/")
write.table(df, "idades3.txt", quote = FALSE, row.names = FALSE, sep = "-")
