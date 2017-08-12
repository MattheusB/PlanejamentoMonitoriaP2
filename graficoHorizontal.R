library("tidyr")
library("ggplot2")
library("readr")

dados <- read.csv("/Users/mattheusbrito/git/PlanejamentoMonitoriaP2/Teste.csv")

ggplot(data = dados) + geom_line(aes(x = Data, y = Desempenho, colour = Aluno, group = Aluno))