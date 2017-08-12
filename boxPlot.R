library("tidyr")
library("dplyr")
library("ggplot2")
library("readr")

dados <- read.csv("/Users/mattheusbrito/git/PlanejamentoMonitoriaP2/Teste.csv")

ggplot(dados, aes(x = Data, y = Desempenho)) + 
  geom_boxplot(fill = "gray", color = "black") + 
  geom_point(aes(color = Aluno))

m = median(dados$Desempenho)
dados$acimaM = (dados$Desempenho > m)


ggplot(dados, aes(y = Desempenho, x = 1, color=acimaM)) + 
  geom_jitter(width = 0.1) +
  scale_color_manual(values=c("red", "darkgreen")) +
  geom_boxplot(alpha=0.4, color="black", width=0.6, fill="gray") +
  #facet_grid(.~Data) +
  theme(axis.title.x=element_blank(),
        axis.text.x=element_blank(),
        axis.ticks.x=element_blank()) +
  theme(legend.position="none")
