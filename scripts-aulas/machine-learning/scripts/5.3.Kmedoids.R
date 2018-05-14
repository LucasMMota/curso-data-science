#Formacao Cientista de Dados - Fernando Amaral

install.packages("cluster", dependencies=T)
library(cluster)

#
cluster = pam(iris[,1:4],k=3)
cluster

plot(cluster)
 
confusao = table(iris$Species,cluster$clustering)
taxaacerto = (confusao[1] + confusao[5]+ confusao[9]) / sum(confusao)
taxaerro = (confusao[2] + confusao[3]+ confusao[4]+confusao[6]+confusao[7]+confusao[8]) / sum(confusao)
