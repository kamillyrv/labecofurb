# GRÁFICOS
# USAR O PACOTE   'ggplot2'
## CORTE TRANSVERSAL
### COLETAR DADOS DE DUAS VARIÁVEIS
#### UMA VARIÁVEL EM CADA EIXO (Y E X)

## SÉRIE TEMPORAL
### UMA SÉRIE PARA UM PAÍS ESPECÍFICO

# Instalar e carregar pacotes necessários
#install.packages("ggplot2")
#install.packages("dplyr")
#install.packages("gapminder")

library(ggplot2)
library(dplyr)
library(gapminder)

# Selecionar um subconjunto de países e um ano específico
paises_selecionados <- c("Brazil", "United States", "China", "India", "Germany")
dados_corte <- gapminder %>% filter(year == 2007 & country %in% paises_selecionados)

# Criar gráfico de dispersão com cores diferentes para cada país
ggplot(dados_corte, aes(x = gdpPercap, y = lifeExp, color = country)) +
  geom_point(size = 4) +  # Ajusta tamanho dos pontos
  labs(title = "PIB per capita vs Expectativa de Vida (2007)",
       x = "PIB per capita",
       y = "Expectativa de Vida",
       color = "País") +  # Adiciona legenda
  theme_minimal() +
  theme(legend.position = "bottom")  # Ajusta a posição da legenda



# Instalar e carregar pacotes necessários
install.packages("scales")
library(scales)
library(ggplot2)
library(dplyr)

#-------------------------------------------------------------------------------------

# Filtrar dados para a África do Sul
dados_serie <- gapminder %>% filter(country == "South Africa")

# Criar gráfico de série temporal para População da África do Sul com números decimais nos eixos
ggplot(dados_serie, aes(x = year, y = pop)) +
  geom_line(color = "blue", size = 1) +  # Linha azul para destaque
  geom_point(color = "red", size = 3) +  # Pontos vermelhos nos anos
  labs(title = "Evolução da População na África do Sul",
       x = "Ano",
       y = "População Total") +
  scale_y_continuous(labels = number_format(scale = 1e-6, suffix = "M")) +  # Formato de números decimais (milhões)
  scale_x_continuous(labels = number_format()) +  # Formato de números para o eixo X
  theme_minimal()
