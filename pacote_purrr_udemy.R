
# Pacote Purrr --------------------------------------------------------------------------------------------------
# Autoria do script: Jeanne Franco ------------------------------------------------------------------------------
# Data do script: 12/05/22 --------------------------------------------------------------------------------------
# Referência: Curso Udemy ---------------------------------------------------------------------------------------

# Carregar pacote --------------------------------------------------------------------------------------------------------------------------

library(purrr)

# Criar dataframe --------------------------------------------------------------------------------------------------------------------------

dados <- data.frame(
  a = rnorm(10),
  b = rnorm(10),
  c = rnorm(10),
  d = rnorm(10)
)

dados

# Funções map ------------------------------------------------------------------------------------------------------------------------------

### Similar a família apply, porém com código mais simples, consistente e rápido
### map(dataframe, função)

map(dados, mean) # Cria uma lista com os resultados
map_dbl(dados, mean) # Cria vetor numérico (double/numeric)
map_lgl(dados, is.numeric) # Cria vetor lógico (logic = lgl)
map_int(dados, length) # Cria vetor de integrais (integer = int)
map_chr(dados, mean) # Cria um vetor de caracter (character = chr)
