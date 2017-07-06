library("ggplot2")
library("dplyr")
library("plotly")
  
dados <- read.csv(file = "/Users/mattheusbrito/git/PlanejamentoMonitoriaP2/teste.csv")

bp = ggplot( data.aes(x = Aluno, y = factor(Desempenho)))

bp + geom_boxplot()
