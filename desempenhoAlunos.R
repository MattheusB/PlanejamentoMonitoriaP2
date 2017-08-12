library("tidyr")
library("dplyr")
library("ggplot2")
library("readr")

dados <- read.csv("/Users/mattheusbrito/git/PlanejamentoMonitoriaP2/TesteNA.csv") %>% as.data.frame()

g = dados %>% group_by(Aluno)

cols <- c("N/A" = "red", "0" = "steelblue4", "1" = "steelblue", "2" = "steelblue3",
          "3" = "steelblue2", "4" = "steelblue1", "5" = "skyblue1")

ggplot(data=dados, aes(x=Data, y=Aluno, group=Aluno,color= factor(Desempenho))) + 
  geom_point(aes(size=Desempenho)) + 
  geom_line(color="black")  + scale_colour_manual(values = cols)