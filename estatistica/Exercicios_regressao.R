x = c(6.5, 5.8, 7.8, 8.1, 10.4, 12.3, 13.1, 17.4, 20.1, 24.5, 25.5, 27.1)
y = c(1.4, 1.5, 1.7, 1.9, 2.1, 2.2, 2.4, 3.2, 3.7, 4.2, 4.8, 5.2)

modelo <- lm(y ~ x)

# Estatísticas
summary(modelo)

# Equação de reta
coef(modelo)

# Gráfico de Dispersão com reta
png("exercicio_1_modelo.png")
plot(x=x, y=y)
abline(modelo, col = "purple")
dev.off()
browseURL("exercicio_1_modelo.png")

# Gráfico de Residuos com reta
png("exercicio_1_residuos.png")
plot(resid(modelo))
abline(0, 0, col = "purple")
dev.off()
browseURL("exercicio_1_residuos.png")
