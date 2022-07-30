data <- read.csv("../../datasets/GAGurine.csv")
head(data)
modelo <- lm( GAG ~ Age, data = data)

# Estatísticas
summary(modelo)

# Equação da reta
coef(modelo)

# Gráfico de dispersão
png("GAGurine_modelo.png")
plot(x = data$Age, y = data$GAG, xlab = "Age", ylab = "GAG")
abline(modelo)
dev.off()
browseURL("GAGurine_modelo.png")

# Gráfico de Residuais
png("GAGurine_residuos.png")
plot(resid(modelo))
abline(0, 0, col = "red")
dev.off()
browseURL("GAGurine_residuos.png")
