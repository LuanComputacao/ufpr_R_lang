# SAPPLY

x <- 10:20
sapply(x, sqrt)

quadrado <- function(x) {
    return(ifelse(is.na(x), NA, x^2))
}
sapply(x, quadrado)

potencia <- function(x, y) {
    return(ifelse(is.na(x), NA, x^y))
}
sapply(x, potencia, y = 4)

# LAPPLY

lapply(x, sqrt)

# APPLY
matriz <- matrix(1:12, nrow = 3, ncol = 4)
print(matriz)
r_l_1 <- apply(matriz, 1, sum)
r_l_2 <- apply(matriz, 2, sum)
print(r_l_1)
print(r_l_2)

# TAPPLY
tapply(iris$Sepal.Width, iris$Species, mean)
print(iris)


n_alunos <- 200
n_cursos <- 4
v_nome <- paste("Aluno", 1:n_alunos)
v_nota <- sample(0:100, n_alunos, replace = TRUE)
v_cursos <- paste("Curso", 1:n_cursos)
v_curso <- v_cursos[sample(1:n_cursos, n_alunos, replace = TRUE)]
df <- data.frame(nome=v_nome, nota=v_nota, curso=v_curso)
print(df)
tapply(df$nota, df$curso, mean)
tapply(df$nota, df$curso, max)
tapply(df$nota, df$curso, min)
