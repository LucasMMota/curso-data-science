#Formacao Cientista de Dados - Fernando Amaral

library(e1071)

cluster = cmeans(iris[,1:4], centers=3)#retorna a prob de cada instancia estar em cada grupo
cluster

confusao = table(iris$Species, cluster$cluster)
taxaacerto = (confusao[3] + confusao[5]+ confusao[7]) / sum(confusao)
taxaerro = (confusao[1]+ confusao[2] + confusao[4]+confusao[6]+confusao[8]+confusao[9]) / sum(confusao)

