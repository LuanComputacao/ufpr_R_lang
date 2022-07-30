# Escreva um laço que varre os números de 1 a 7 e imprime seus quadrados,
# usando o comando print()
for (i in 1:7) {
    print(i^2)
}
# Usando laços, varra uma lista de números aleatórios gerados por rnorm(),
# mas pare se o número encontrado for mais que 1.
for (i in rnorm(10)) {
    if (i > 1) {
        print(i)
        break
    }
}

# Usando laços, varra uma lista de números aleatórios gerados por rnorm(),
# mas use o comando next para pular os números negativos.
for (i in rnorm(10)) {
    if (i < 0) {
        next
    }
    print(i)
}


# Use laços aninhados para criar a matriz abaixo. Faça a alocação prévia da
# matriz com valores NA.
# 0 1 2 3 4
# 1 0 1 2 3
# 2 1 0 1 2
# 3 2 1 0 1
# 4 3 2 1 0

m <- matrix(NA, 5, 5)
for (i in 1:5) {
    for (j in 1:5) {
        if (i == j) {
            m[i, j] <- 0
        } else if (i < j) {
            m[i, j] <- j - i
        } else {
            m[i, j] <- i - j
        }
    }
}
print(m)


# Usando um comando ifelse(), crie uma coluna chamada teen, booleana, que
# indica se a pessoa possui menos de 20 anos.

student_df <- data.frame(
    name = c("Sue", "Eva", "Henry", "Jan"),
    sex = c("f", "f", "m", "m"),
    years = c(21, 31, 29, 19)
)

student_df["teen"] <- ifelse(student_df$years < 20, TRUE, FALSE)
print(student_df)

# Crie o seguinte data frame:
a <- c(3, 7, NA, 9)
b <- c(2, NA, 9, 3)
f <- c(5, 2, 5, 6)
d <- c(NA, 3, 4, NA)

# Adicione uma quinta coluna usando as seguintes regras:
# 1 - A 5a coluna tem o valor da coluna 2 se a coluna 1 é NA
# 2 - A 5a coluna tem o valor da coluna 4 se a coluna 2 é NA
# 3 - A 5a coluna contém o valor da coluna 3 em qualquer outro caso
# O resultado deve ser:
#   a b f d V5
# 1 3 2 5 NA 5
# 2 7 NA 2 3 3
# 3 NA 9 5 4 9
# 4 9 3 6 NA 6
mydf <- data.frame(a = a, b = b, f = f, d = d)
for (i in 1:nrow(mydf)) {
    if (is.na(mydf[i, 1])) {
        mydf[i, 5] <- mydf[i, 2]
    } else if (is.na(mydf[i, 2])) {
        mydf[i, 5] <- mydf[i, 4]
    } else {
        mydf[i, 5] <- mydf[i, 3]
    }
}
print(mydf)

# Crie uma matriz com 10 colunas contendo 100.000 números, sendo os números de
# 1:100000. Faça um laço for que calcula a soma de cada linha desta matriz.

matriz_10_colunas <- matrix(1:100000, ncol = 10)
for (i in 1:nrow(matriz_10_colunas)) {
    soma <- sum(matriz_10_colunas[i, ])
    print(soma)
}

# Crie o seguinte data frame

vector1 <- 1:10
vector2 <- c("Odd", "Loop", letters[1:8])
vector3 <- rnorm(10, sd = 10)
df1 <- data.frame(vector1, vector2, vector3, stringsAsFactors = FALSE)
# Faça um laço genérico sobre as colunas deste data frame efetuando o seguinte
# cálculo:
# * Se a coluna for numérica, calcula sua média
# * Se a coluna for de texto calcula a soma dos caracteres na coluna (nchar())
print("Numero de Caracteres")
extra_row <- nrow(df1) + 1
resultado <- rep(NA, ncol(df1))
for (i in 1:ncol(df1)) {
    if (is.numeric(df1[, i])) {
        resultado[i] <- mean(df1[, i])
    } else if (is.character(df1[, i])) {
        resultado[i] <- sum(nchar(df1[, i]))
    }
}
print(resultado)
