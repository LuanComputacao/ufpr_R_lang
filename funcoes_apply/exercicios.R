# Exercício 2
m <- matrix(1:100000, ncol = 10)
apply(m, 1, sum)
apply(m, 1, mean)

# Exercício 3
idade <- c(56, 34, 67, 33, 25, 28)
peso <- c(78, 67, 56, 44, 56, 89)
altura <- c(165, 171, 167, 167, 166, 181)
dados <- data.frame(idade, peso, altura)

print(dados)
print("Mean")
apply(dados, 1, mean)
print("Max")
apply(dados, 1, max)
print("all sqrt as matrix")
sapply(dados, sqrt)
print("all sqrt as list")
lapply(dados, sqrt)


multiply_by_20 <- function(x) {
    return(ifelse(is.na(x), NA, x * 20))
}

sapply(dados, multiply_by_20)
