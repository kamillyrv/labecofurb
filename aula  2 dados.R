# AULA 2

# TIRAR NOTAÇÃO CIENTÍFICA ####
options(scipen = 999)

# EXCLUIR UMA BASE DE DADOS
nomedoobjeto <- NULL

## ATALHOS DE TECLADO ####
# "<-": "ALT" + "-"
# PARA EXECUTAR A LINHA: "ALT" + "ENTER"
# PARA EXECUTAR TODO SCRIPT: "ALT" + "SHIFT" + "ENTER"

## BIBLIOTECA PARA ACESSAR DADOS DO BANCO MUNDIAL ####

# install.packages('WDI') # PRIMEIRO A EXECUTAR
library(WDI) # CARREGAR O PACOTE

## VARIÁVEIS ####

# PIB A PREÇOS CORRENTES (US$): NY.GDP.MKTP.CD
# DESPESAS DE CONSUMO PESSOAL, PC/US$: NE.CON.PRVT.CD

# Infos: http://vincentarelbundock.github.io/WDI/

PIB_vars <- WDIsearch('gdp') # GDP = PIB (todos)
TODO_BM <- WDIsearch('') # TODAS AS VAR. DO BM

variaveis <- c('NY.GDP.MKTP.CD',
               'NE.CON.PRVT.CD')

# BASE DE DADOS DE CORTE TRANSVERSAL

dados <- WDI(indicator = variaveis,
             country = 'all', # TODOS = "all"
             start = 2022, end = 2022) # PROBLEMA DE NA

# install.packages("tidyverse")
library(tidyverse)
dadosok <- WDI(indicator = variaveis,
               country = 'all', # TODOS = "all"
               start = 2022, end = 2022) %>% 
  na.omit()

# BASE DE DADOS DA APRESENTAÇÃO (BRASIL)

dadosbr <- WDI(indicator = variaveis,
               country = 'BR', # Código Iso2C
               start = 1961, end = 2018)

# BASE COMPLETA DO BRASIL

dadosbrcomp <- WDI(indicator = variaveis,
                   country = 'BR')

variaveis <- c('SL.UEM.TOTL.ZS',
               'SP.DYN.LEOO.IN')

# BASE DE DADOS DE CORTE TRANSVERSAL

DADOS2022 <- WDI(indicator = variaveis,
             country = 'all', # TODOS = "all"
             start = 2022, end = 2022) # 

DADOSBRASIL <- WDI(indicator = variaveis,
               country = 'BR') # Código Iso2C
 
