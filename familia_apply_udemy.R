
# Funções da Família Apply --------------------------------------------------------------------------------------------------
# Autoria do script: Jeanne Franco ------------------------------------------------------------------------------------------
# Data do script: 12/05/22 --------------------------------------------------------------------------------------------------
# Referência: Curso Udemy ---------------------------------------------------------------------------------------------------

# Criando um dataset básico 2x2 ------------------------------------------------------------------------------------------------------------

### Função data.frame

dados2 <- data.frame("col1" = 1:5,
                     "col2" = c(5, 6, 9, 10, 20))
dados2

# Função apply -----------------------------------------------------------------------------------------------------------------------------

### Aplica uma função a linhas ou colunas de um data.frame ou matriz
### apply(x, margem, função, outros argumentos) 
### A margem indica se é coluna ou linha: 1 = linha, 2 = coluna

apply(dados2, 2, sum) # Soma das colunas do dataframe (cálculo feito para cada coluna)
apply(dados2, 1, sum) # Soma das linhas do dataframe
apply(dados2, 2, mean) # Média das colunas do dataframe

# Função tapply ----------------------------------------------------------------------------------------------------------------------------

### Aplica uma função a um subconjunto do dataframe

### Criando um dataframe com subconjuntos

dados3 <- data.frame("col1" = 1:5,
                     "col2" = c(5, 6, 9, 10, 20),
                     "col3" = c("a", "b", "b", "a", "a"))
dados3

tapply(dados3$col1, dados3$col3, mean) # Média da coluna um em relação ao subconjunto da 
# coluna 3
tapply(dados3$col2, dados3$col3, mean) # Média da coluna dois em relação ao subconjunto da 
# coluna 3
tapply(dados3$col1, dados3$col3, sum) # Soma da coluna um em relação ao subconjunto da 
# coluna 3
tapply(dados3$col2, dados3$col3, sum) # Soma da coluna dois em relação ao subconjunto da 
# coluna 3
