# • Para calcular o quadrado de um número
quadrado <- function(x) {
    return(ifelse(is.na(x), NA, x^2))
}
# • Para receber duas matrizes e retornar a multiplicação
multiplicacao_de_matrizes <- function(a, b) {
    return(a %*% b)
}
# • Para receber um data frame contendo uma coluna nome e uma coluna idade, e
#   retornar a média das idades
media_de_idade <- function(df) {
    if ("idade" %in% colnames(df) && "nome" %in% colnames(df)) {
        return(mean(df$idade))
    } else {
        return(NA)
    }
}
# • Para receber um data frame contendo uma coluna nome e uma coluna idade, e
#   retornar uma lista com dois dados, o nome e a idade, da pessoa que contém a
#   maior idade

mais_velho <- function(df) {
    if ("idade" %in% colnames(df) && "nome" %in% colnames(df)) {
        return(list(
            nome = df[which.max(df$idade), "nome"],
            idade = df[which.max(df$idade), "idade"]
        ))
    } else {
        return(NA)
    }
}

# Utilização de funções
df1 <- data.frame(
    nome = c("Razer", "Anthom", "Nizer", "Rojas", "Montaño"),
    idade = c(34, 27, 14, 87, 7)
)
print(df1)
print(media_de_idade(df1))
print(mais_velho(df1))
