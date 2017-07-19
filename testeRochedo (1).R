library("tidyr")
library("dplyr")
library("ggplot2")
library("readr")

dados <- read.csv("/Users/mattheusbrito/git/PlanejamentoMonitoriaP2/Teste.csv") %>% as.data.frame()

g = dados %>% group_by(Aluno)

ggplot(data=dados, aes(x=Data, y=Aluno, group=Aluno, color=Desempenho)) + 
  geom_point(aes(size=Desempenho)) + 
  geom_line(color="black")