library("ggplot2")
library("dplyr")
library("plotly")

dados = read.csv(file = "/Users/mattheusbrito/Downloads/teste.csv")

plot_ly(data = dados, x =~Data, y =~Desempenho, color=~Aluno, colors = c("darkblue", "aquamarine4", "darkgoldenrod1", "coral", "darkred"),text = ~paste("\nAluno: ", Aluno, "\nData: ", Data, "\nDesempenho: ", Desempenho))
