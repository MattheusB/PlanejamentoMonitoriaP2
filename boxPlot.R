library("tidyr")
library("dplyr")
library("ggplot2")
library("readr")

dados <-read.csv("/Users/mattheusbrito/git/PlanejamentoMonitoriaP2/Teste.csv")

ggplot(dados, aes(x = Aluno, y = Desempenho)) + geom_boxplot(aes(color = Desempenho)) + geom_point()